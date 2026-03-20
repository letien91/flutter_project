import 'package:cached_network_image_ce/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageHelper {
  ImageHelper._();

  static Widget loadImage(
    String? data, {
    String placeholder = '', //TODO:
    Widget? placeholderWidget,
    BoxFit? boxFit,
    Color? tintColor,
    Widget? errorWidget,
  }) {
    if (data == null) {
      return const SizedBox();
    }
    if (data.startsWith('http')) {
      return CachedNetworkImage(
        imageUrl: data,
        placeholder: (BuildContext context, String url) =>
            placeholderWidget ?? Image.asset(placeholder),
        errorBuilder: (BuildContext context, Object error, StackTrace? st) {
          return errorWidget ?? Image.asset(placeholder);
        },
        fit: boxFit,
      );
    }
    if (data.startsWith('assets')) {
      return Image.asset(
        data,
        errorBuilder: (BuildContext context, Object error, StackTrace? st) {
          return errorWidget ?? Image.asset(placeholder);
        },
      );
    }
    return const SizedBox();
  }
}
