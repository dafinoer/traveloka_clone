/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bank_icon.png
  AssetGenImage get bankIcon =>
      const AssetGenImage('assets/icons/bank_icon.png');

  /// File path: assets/icons/bookmark_icon.png
  AssetGenImage get bookmarkIcon =>
      const AssetGenImage('assets/icons/bookmark_icon.png');

  /// File path: assets/icons/bookmark_icon_active.png
  AssetGenImage get bookmarkIconActive =>
      const AssetGenImage('assets/icons/bookmark_icon_active.png');

  /// File path: assets/icons/building_icon.png
  AssetGenImage get buildingIcon =>
      const AssetGenImage('assets/icons/building_icon.png');

  /// File path: assets/icons/bus-alt_icon.png
  AssetGenImage get busAltIcon =>
      const AssetGenImage('assets/icons/bus-alt_icon.png');

  /// File path: assets/icons/car-alt_icon.png
  AssetGenImage get carAltIcon =>
      const AssetGenImage('assets/icons/car-alt_icon.png');

  /// File path: assets/icons/comment_alt_icon.png
  AssetGenImage get commentAltIcon =>
      const AssetGenImage('assets/icons/comment_alt_icon.png');

  /// File path: assets/icons/comment_icon.png
  AssetGenImage get commentIcon =>
      const AssetGenImage('assets/icons/comment_icon.png');

  /// File path: assets/icons/dollar_icon.png
  AssetGenImage get dollarIcon =>
      const AssetGenImage('assets/icons/dollar_icon.png');

  /// File path: assets/icons/gold_icon.png
  AssetGenImage get goldIcon =>
      const AssetGenImage('assets/icons/gold_icon.png');

  /// File path: assets/icons/hamburger_soda_icon.png
  AssetGenImage get hamburgerSodaIcon =>
      const AssetGenImage('assets/icons/hamburger_soda_icon.png');

  /// File path: assets/icons/holiday_icon.png
  AssetGenImage get holidayIcon =>
      const AssetGenImage('assets/icons/holiday_icon.png');

  /// File path: assets/icons/home_icon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('assets/icons/home_icon.png');

  /// File path: assets/icons/home_icon_active.png
  AssetGenImage get homeIconActive =>
      const AssetGenImage('assets/icons/home_icon_active.png');

  /// File path: assets/icons/notebook_icon.png
  AssetGenImage get notebookIcon =>
      const AssetGenImage('assets/icons/notebook_icon.png');

  /// File path: assets/icons/notebook_icon_active.png
  AssetGenImage get notebookIconActive =>
      const AssetGenImage('assets/icons/notebook_icon_active.png');

  /// File path: assets/icons/plane_icon.png
  AssetGenImage get planeIcon =>
      const AssetGenImage('assets/icons/plane_icon.png');

  /// File path: assets/icons/play_icon.png
  AssetGenImage get playIcon =>
      const AssetGenImage('assets/icons/play_icon.png');

  /// File path: assets/icons/play_icon_active.png
  AssetGenImage get playIconActive =>
      const AssetGenImage('assets/icons/play_icon_active.png');

  /// File path: assets/icons/receipt_icon.png
  AssetGenImage get receiptIcon =>
      const AssetGenImage('assets/icons/receipt_icon.png');

  /// File path: assets/icons/subway_icon.png
  AssetGenImage get subwayIcon =>
      const AssetGenImage('assets/icons/subway_icon.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/camping_onboard.svg
  SvgGenImage get campingOnboard =>
      const SvgGenImage('assets/images/camping_onboard.svg');

  /// File path: assets/images/device_onboard.svg
  SvgGenImage get deviceOnboard =>
      const SvgGenImage('assets/images/device_onboard.svg');

  /// File path: assets/images/login_asset.svg
  SvgGenImage get loginAsset =>
      const SvgGenImage('assets/images/login_asset.svg');

  /// File path: assets/images/travel_onboard.svg
  SvgGenImage get travelOnboard =>
      const SvgGenImage('assets/images/travel_onboard.svg');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
