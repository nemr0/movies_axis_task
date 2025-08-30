// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_popular_people_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetPopularPeopleState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPopularPeopleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPopularPeopleState()';
}


}

/// @nodoc
class $GetPopularPeopleStateCopyWith<$Res>  {
$GetPopularPeopleStateCopyWith(GetPopularPeopleState _, $Res Function(GetPopularPeopleState) __);
}


/// Adds pattern-matching-related methods to [GetPopularPeopleState].
extension GetPopularPeopleStatePatterns on GetPopularPeopleState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPopularPeopleLoading value)?  loading,TResult Function( _GetPopularPeoplePaginating value)?  paginating,TResult Function( _GetPopularPeopleSuccess value)?  success,TResult Function( _GetPopularPeopleFailed value)?  failed,TResult Function( _GetPopularPeoplePaginationFailed value)?  paginationFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPopularPeopleLoading() when loading != null:
return loading(_that);case _GetPopularPeoplePaginating() when paginating != null:
return paginating(_that);case _GetPopularPeopleSuccess() when success != null:
return success(_that);case _GetPopularPeopleFailed() when failed != null:
return failed(_that);case _GetPopularPeoplePaginationFailed() when paginationFailed != null:
return paginationFailed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPopularPeopleLoading value)  loading,required TResult Function( _GetPopularPeoplePaginating value)  paginating,required TResult Function( _GetPopularPeopleSuccess value)  success,required TResult Function( _GetPopularPeopleFailed value)  failed,required TResult Function( _GetPopularPeoplePaginationFailed value)  paginationFailed,}){
final _that = this;
switch (_that) {
case _GetPopularPeopleLoading():
return loading(_that);case _GetPopularPeoplePaginating():
return paginating(_that);case _GetPopularPeopleSuccess():
return success(_that);case _GetPopularPeopleFailed():
return failed(_that);case _GetPopularPeoplePaginationFailed():
return paginationFailed(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPopularPeopleLoading value)?  loading,TResult? Function( _GetPopularPeoplePaginating value)?  paginating,TResult? Function( _GetPopularPeopleSuccess value)?  success,TResult? Function( _GetPopularPeopleFailed value)?  failed,TResult? Function( _GetPopularPeoplePaginationFailed value)?  paginationFailed,}){
final _that = this;
switch (_that) {
case _GetPopularPeopleLoading() when loading != null:
return loading(_that);case _GetPopularPeoplePaginating() when paginating != null:
return paginating(_that);case _GetPopularPeopleSuccess() when success != null:
return success(_that);case _GetPopularPeopleFailed() when failed != null:
return failed(_that);case _GetPopularPeoplePaginationFailed() when paginationFailed != null:
return paginationFailed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( PaginatedPeople oldPaginatedPeople)?  paginating,TResult Function( PaginatedPeople paginatedPeople)?  success,TResult Function( Failure failure)?  failed,TResult Function( PaginatedPeople paginatedPeople,  Failure failure)?  paginationFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPopularPeopleLoading() when loading != null:
return loading();case _GetPopularPeoplePaginating() when paginating != null:
return paginating(_that.oldPaginatedPeople);case _GetPopularPeopleSuccess() when success != null:
return success(_that.paginatedPeople);case _GetPopularPeopleFailed() when failed != null:
return failed(_that.failure);case _GetPopularPeoplePaginationFailed() when paginationFailed != null:
return paginationFailed(_that.paginatedPeople,_that.failure);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( PaginatedPeople oldPaginatedPeople)  paginating,required TResult Function( PaginatedPeople paginatedPeople)  success,required TResult Function( Failure failure)  failed,required TResult Function( PaginatedPeople paginatedPeople,  Failure failure)  paginationFailed,}) {final _that = this;
switch (_that) {
case _GetPopularPeopleLoading():
return loading();case _GetPopularPeoplePaginating():
return paginating(_that.oldPaginatedPeople);case _GetPopularPeopleSuccess():
return success(_that.paginatedPeople);case _GetPopularPeopleFailed():
return failed(_that.failure);case _GetPopularPeoplePaginationFailed():
return paginationFailed(_that.paginatedPeople,_that.failure);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( PaginatedPeople oldPaginatedPeople)?  paginating,TResult? Function( PaginatedPeople paginatedPeople)?  success,TResult? Function( Failure failure)?  failed,TResult? Function( PaginatedPeople paginatedPeople,  Failure failure)?  paginationFailed,}) {final _that = this;
switch (_that) {
case _GetPopularPeopleLoading() when loading != null:
return loading();case _GetPopularPeoplePaginating() when paginating != null:
return paginating(_that.oldPaginatedPeople);case _GetPopularPeopleSuccess() when success != null:
return success(_that.paginatedPeople);case _GetPopularPeopleFailed() when failed != null:
return failed(_that.failure);case _GetPopularPeoplePaginationFailed() when paginationFailed != null:
return paginationFailed(_that.paginatedPeople,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _GetPopularPeopleLoading implements GetPopularPeopleState {
  const _GetPopularPeopleLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPopularPeopleLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPopularPeopleState.loading()';
}


}




/// @nodoc


class _GetPopularPeoplePaginating implements GetPopularPeopleState {
  const _GetPopularPeoplePaginating(this.oldPaginatedPeople);
  

 final  PaginatedPeople oldPaginatedPeople;

/// Create a copy of GetPopularPeopleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPopularPeoplePaginatingCopyWith<_GetPopularPeoplePaginating> get copyWith => __$GetPopularPeoplePaginatingCopyWithImpl<_GetPopularPeoplePaginating>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPopularPeoplePaginating&&(identical(other.oldPaginatedPeople, oldPaginatedPeople) || other.oldPaginatedPeople == oldPaginatedPeople));
}


@override
int get hashCode => Object.hash(runtimeType,oldPaginatedPeople);

@override
String toString() {
  return 'GetPopularPeopleState.paginating(oldPaginatedPeople: $oldPaginatedPeople)';
}


}

/// @nodoc
abstract mixin class _$GetPopularPeoplePaginatingCopyWith<$Res> implements $GetPopularPeopleStateCopyWith<$Res> {
  factory _$GetPopularPeoplePaginatingCopyWith(_GetPopularPeoplePaginating value, $Res Function(_GetPopularPeoplePaginating) _then) = __$GetPopularPeoplePaginatingCopyWithImpl;
@useResult
$Res call({
 PaginatedPeople oldPaginatedPeople
});




}
/// @nodoc
class __$GetPopularPeoplePaginatingCopyWithImpl<$Res>
    implements _$GetPopularPeoplePaginatingCopyWith<$Res> {
  __$GetPopularPeoplePaginatingCopyWithImpl(this._self, this._then);

  final _GetPopularPeoplePaginating _self;
  final $Res Function(_GetPopularPeoplePaginating) _then;

/// Create a copy of GetPopularPeopleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? oldPaginatedPeople = null,}) {
  return _then(_GetPopularPeoplePaginating(
null == oldPaginatedPeople ? _self.oldPaginatedPeople : oldPaginatedPeople // ignore: cast_nullable_to_non_nullable
as PaginatedPeople,
  ));
}


}

/// @nodoc


class _GetPopularPeopleSuccess implements GetPopularPeopleState {
  const _GetPopularPeopleSuccess(this.paginatedPeople);
  

 final  PaginatedPeople paginatedPeople;

/// Create a copy of GetPopularPeopleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPopularPeopleSuccessCopyWith<_GetPopularPeopleSuccess> get copyWith => __$GetPopularPeopleSuccessCopyWithImpl<_GetPopularPeopleSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPopularPeopleSuccess&&(identical(other.paginatedPeople, paginatedPeople) || other.paginatedPeople == paginatedPeople));
}


@override
int get hashCode => Object.hash(runtimeType,paginatedPeople);

@override
String toString() {
  return 'GetPopularPeopleState.success(paginatedPeople: $paginatedPeople)';
}


}

/// @nodoc
abstract mixin class _$GetPopularPeopleSuccessCopyWith<$Res> implements $GetPopularPeopleStateCopyWith<$Res> {
  factory _$GetPopularPeopleSuccessCopyWith(_GetPopularPeopleSuccess value, $Res Function(_GetPopularPeopleSuccess) _then) = __$GetPopularPeopleSuccessCopyWithImpl;
@useResult
$Res call({
 PaginatedPeople paginatedPeople
});




}
/// @nodoc
class __$GetPopularPeopleSuccessCopyWithImpl<$Res>
    implements _$GetPopularPeopleSuccessCopyWith<$Res> {
  __$GetPopularPeopleSuccessCopyWithImpl(this._self, this._then);

  final _GetPopularPeopleSuccess _self;
  final $Res Function(_GetPopularPeopleSuccess) _then;

/// Create a copy of GetPopularPeopleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paginatedPeople = null,}) {
  return _then(_GetPopularPeopleSuccess(
null == paginatedPeople ? _self.paginatedPeople : paginatedPeople // ignore: cast_nullable_to_non_nullable
as PaginatedPeople,
  ));
}


}

/// @nodoc


class _GetPopularPeopleFailed implements GetPopularPeopleState {
  const _GetPopularPeopleFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of GetPopularPeopleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPopularPeopleFailedCopyWith<_GetPopularPeopleFailed> get copyWith => __$GetPopularPeopleFailedCopyWithImpl<_GetPopularPeopleFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPopularPeopleFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'GetPopularPeopleState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$GetPopularPeopleFailedCopyWith<$Res> implements $GetPopularPeopleStateCopyWith<$Res> {
  factory _$GetPopularPeopleFailedCopyWith(_GetPopularPeopleFailed value, $Res Function(_GetPopularPeopleFailed) _then) = __$GetPopularPeopleFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$GetPopularPeopleFailedCopyWithImpl<$Res>
    implements _$GetPopularPeopleFailedCopyWith<$Res> {
  __$GetPopularPeopleFailedCopyWithImpl(this._self, this._then);

  final _GetPopularPeopleFailed _self;
  final $Res Function(_GetPopularPeopleFailed) _then;

/// Create a copy of GetPopularPeopleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_GetPopularPeopleFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _GetPopularPeoplePaginationFailed implements GetPopularPeopleState {
  const _GetPopularPeoplePaginationFailed(this.paginatedPeople, this.failure);
  

 final  PaginatedPeople paginatedPeople;
 final  Failure failure;

/// Create a copy of GetPopularPeopleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPopularPeoplePaginationFailedCopyWith<_GetPopularPeoplePaginationFailed> get copyWith => __$GetPopularPeoplePaginationFailedCopyWithImpl<_GetPopularPeoplePaginationFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPopularPeoplePaginationFailed&&(identical(other.paginatedPeople, paginatedPeople) || other.paginatedPeople == paginatedPeople)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,paginatedPeople,failure);

@override
String toString() {
  return 'GetPopularPeopleState.paginationFailed(paginatedPeople: $paginatedPeople, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$GetPopularPeoplePaginationFailedCopyWith<$Res> implements $GetPopularPeopleStateCopyWith<$Res> {
  factory _$GetPopularPeoplePaginationFailedCopyWith(_GetPopularPeoplePaginationFailed value, $Res Function(_GetPopularPeoplePaginationFailed) _then) = __$GetPopularPeoplePaginationFailedCopyWithImpl;
@useResult
$Res call({
 PaginatedPeople paginatedPeople, Failure failure
});




}
/// @nodoc
class __$GetPopularPeoplePaginationFailedCopyWithImpl<$Res>
    implements _$GetPopularPeoplePaginationFailedCopyWith<$Res> {
  __$GetPopularPeoplePaginationFailedCopyWithImpl(this._self, this._then);

  final _GetPopularPeoplePaginationFailed _self;
  final $Res Function(_GetPopularPeoplePaginationFailed) _then;

/// Create a copy of GetPopularPeopleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paginatedPeople = null,Object? failure = null,}) {
  return _then(_GetPopularPeoplePaginationFailed(
null == paginatedPeople ? _self.paginatedPeople : paginatedPeople // ignore: cast_nullable_to_non_nullable
as PaginatedPeople,null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
