import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  final bool cache;
  final double width;
  final double height;
  final Color color;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final BoxBorder border;
  final BorderRadiusGeometry borderRadius;

  const ImageWidget(
      {Key key,
      @required this.url,
      this.cache,
      this.width,
      this.height,
      this.color,
      this.fit,
      this.alignment,
      this.border,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExtendedImage.network(
        url,
        width: width,
        height: height,
        color: color,
        fit: fit,
        enableLoadState: false,
        alignment: alignment,
        border: border,
        borderRadius: borderRadius,
        loadStateChanged: (ExtendedImageState state) {
          switch (state.extendedImageLoadState) {
            case LoadState.loading:
              return Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  border: border,
                  borderRadius: borderRadius,
                ),
              );
              break;
            case LoadState.completed:
              return ExtendedRawImage(
                image: state.extendedImageInfo?.image,
                width: width,
                height: height,
                color: color,
                fit: fit,
              );
              break;
            case LoadState.failed:
              return GestureDetector(
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: border,
                        borderRadius: borderRadius,
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Text(
                        "load image failed, click to reload",
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                onTap: () {
                  state.reLoadImage();
                },
              );
              break;
          }
        },
      ),
    );
  }
}
