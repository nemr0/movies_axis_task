import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/extensions/context_extension.dart';
import 'package:movies/core/screens/basic_screen.dart';
import 'package:movies/features/people/presentation/manager/get_popular_people_cubit/get_popular_people_cubit.dart';
import 'package:movies/core/widgets/error_screen/error_screen.dart';
import 'package:movies/features/people/presentation/widget/sliver_paginated_people_list.dart';

import '../../../../core/widgets/sliver_custom_app_bar/sliver_custom_app_bar.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  late final ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_paginationListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_paginationListener);
    _controller.dispose();
    super.dispose();
  }

  _scrollToTop() => _scrollTo(0);
  _scrollToEnd() => _scrollTo(_controller.position.maxScrollExtent);
  _scrollTo(double offset) => _controller.animateTo(
    offset,
    duration: const Duration(milliseconds: 300),
    curve: Curves.easeInOut,
  );

  bool _paginationLocked = false;

  _paginationListener() {
    final anyFailure = context.read<GetPopularPeopleCubit>().state.maybeWhen(
      paginationFailed: (_, _) => true,
      failed: (_)=>true,
      orElse: () => false,
    );
    if (_controller.position.pixels >= _controller.position.maxScrollExtent - 100 &&
        !_paginationLocked && anyFailure == false) {
      _paginationLocked = true;



        context.read<GetPopularPeopleCubit>().call();
      Future.delayed(Duration(seconds: 1)).then((_) {
        _paginationLocked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetPopularPeopleCubit>().state;
    final paginatedPeople = state.maybeMap(orElse: () => null, success: (value) => value.paginatedPeople, paginating: (value) => value.oldPaginatedPeople, paginationFailed: (value) => value.paginatedPeople,);
    final paginating = state.maybeWhen(paginating: (_) => true, orElse: () => false,);
    final paginationFailure = state.maybeWhen(paginationFailed: (_, failure) => failure, orElse: () => null,);
    print(paginating);
    return BlocListener<GetPopularPeopleCubit, GetPopularPeopleState>(
        listener: (context, state) {
          print(state.mapOrNull(paginating: (_)=>true));
          state.mapOrNull(
            paginating: (_)=> _scrollToEnd(), paginationFailed: (_)=> _scrollToEnd()
          );
        },
      child: BasicScreen(
      body: CustomScrollView(
        controller: _controller,
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverCustomAppBar(onUpPressed: _scrollToTop),
          state.maybeMap<Widget>(
            failed: (failure) => SliverFillRemaining(
              child: ErrorScreen(
                failure: failure.failure,
                onRefresh: () {
                  context.read<GetPopularPeopleCubit>().call();
                },
              ),
            ),
            orElse: () =>
                SliverPaginatedPeopleList(paginatedPeople: paginatedPeople, paginatingOrPaginationFailed: paginating || paginationFailure != null,),
          ),
          if (paginating)
            SliverToBoxAdapter(
              child: Padding(
                padding:  EdgeInsets.only(top:24,bottom: context.viewPadding.bottom + 24.0),
                child: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            ),
          if (paginationFailure != null)
            SliverToBoxAdapter(
              child: Padding(
                padding:  EdgeInsets.only(bottom: context.viewPadding.bottom + 16.0),
                child: ErrorScreen(
                  onRefresh: context.read<GetPopularPeopleCubit>().call,
                  failure: paginationFailure,
                ),
              ),
            ),
         ],
        ),
       ),
    );
  }
}
