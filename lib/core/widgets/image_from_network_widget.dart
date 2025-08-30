import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:movies/core/extensions/context_extension.dart';
import 'package:movies/core/themes/theme_extensions.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../generated/assets.gen.dart';

/// A widget that displays an image with a loading skeleton and error handling.
class ImageFromNetwork extends StatelessWidget {
  const ImageFromNetwork(this.imageUrl,
      {super.key,
      this.loading = false,
      this.errorText = 'No Cover Available',
      this.boxFit = BoxFit.contain,
      this.imageBuilder,
      this.errorBuilder,
      });

  final String? imageUrl;
  final bool loading;
  final String errorText;
  final BoxFit boxFit;
  final Widget Function()? errorBuilder;
  final Widget Function(
    BuildContext context,
    ImageProvider imageProvider,
  )? imageBuilder;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (loading) {
          return  const _CoverSkeleton();
        }
        return CachedNetworkImage(
          imageUrl: imageUrl ?? '',
          fit: boxFit,
          imageBuilder: imageBuilder,
          placeholder: (_, __) =>  const _CoverSkeleton(),
          errorWidget: (_, e, s) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Skeletonizer(
                    enabled: loading,
                    effect: context.shimmerEffect,
                    child: _CoverError(errorText)),
                if (errorBuilder != null) errorBuilder!(),

              ],
            );
          },
        );
      },
    );
  }
}

/// A skeleton widget that shows a shimmer effect while the image is loading.
class _CoverSkeleton extends StatelessWidget {
  const _CoverSkeleton();
  @override
  Widget build(BuildContext context) {

    return Skeletonizer(
      enabled: true,
      effect: context.shimmerEffect,
      child: const Bone.square(),
    );
  }
}

/// A widget that shows an error message when the image fails to load.
class _CoverError extends StatelessWidget {
  const _CoverError(this.error);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.onSecondaryFixedVariant,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.core.notFound.image(color: context.colorScheme.primary, width: 100, height: 100),
            SizedBox(height: 8,),
            Text(error, style: context.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
