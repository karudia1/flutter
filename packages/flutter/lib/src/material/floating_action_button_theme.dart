// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui' show lerpDouble;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

/// Defines default property values for descendant [FloatingActionButton]
/// widgets.
///
/// Descendant widgets obtain the current [FloatingActionButtonThemeData] object
/// using `Theme.of(context).floatingActionButtonTheme`. Instances of
/// [FloatingActionButtonThemeData] can be customized with
/// [FloatingActionButtonThemeData.copyWith].
///
/// Typically a [FloatingActionButtonThemeData] is specified as part of the
/// overall [Theme] with [ThemeData.floatingActionButtonTheme].
///
/// All [FloatingActionButtonThemeData] properties are `null` by default.
/// When null, the [FloatingActionButton] will use the values from [ThemeData]
/// if they exist, otherwise it will provide its own defaults.
///
/// See also:
///
///  * [ThemeData], which describes the overall theme information for the
///    application.
@immutable
class FloatingActionButtonThemeData with Diagnosticable {
  /// Creates a theme that can be used for
  /// [ThemeData.floatingActionButtonTheme].
  const FloatingActionButtonThemeData({
    this.foregroundColor,
    this.backgroundColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.disabledElevation,
    this.highlightElevation,
    this.shape,
    this.enableFeedback,
    this.sizeConstraints,
    this.smallSizeConstraints,
    this.largeSizeConstraints,
    this.extendedSizeConstraints,
    this.extendedIconLabelSpacing,
    this.extendedPadding,
  });

  /// Color to be used for the unselected, enabled [FloatingActionButton]'s
  /// foreground.
  final Color? foregroundColor;

  /// Color to be used for the unselected, enabled [FloatingActionButton]'s
  /// background.
  final Color? backgroundColor;

  /// The color to use for filling the button when the button has input focus.
  final Color? focusColor;

  /// The color to use for filling the button when the button has a pointer
  /// hovering over it.
  final Color? hoverColor;

  /// The splash color for this [FloatingActionButton]'s [InkWell].
  final Color? splashColor;

  /// The z-coordinate to be used for the unselected, enabled
  /// [FloatingActionButton]'s elevation foreground.
  final double? elevation;

  /// The z-coordinate at which to place this button relative to its parent when
  /// the button has the input focus.
  ///
  /// This controls the size of the shadow below the floating action button.
  final double? focusElevation;

  /// The z-coordinate at which to place this button relative to its parent when
  /// the button is enabled and has a pointer hovering over it.
  ///
  /// This controls the size of the shadow below the floating action button.
  final double? hoverElevation;

  /// The z-coordinate to be used for the disabled [FloatingActionButton]'s
  /// elevation foreground.
  final double? disabledElevation;

  /// The z-coordinate to be used for the selected, enabled
  /// [FloatingActionButton]'s elevation foreground.
  final double? highlightElevation;

  /// The shape to be used for the floating action button's [Material].
  final ShapeBorder? shape;

  /// If specified, defines the feedback property for [FloatingActionButton].
  ///
  /// If [FloatingActionButton.enableFeedback] is provided, [enableFeedback] is
  /// ignored.
  final bool? enableFeedback;

  /// Overrides the default size constraints for the [FloatingActionButton].
  final BoxConstraints? sizeConstraints;

  /// Overrides the default size constraints for [FloatingActionButton.small].
  final BoxConstraints? smallSizeConstraints;

  /// Overrides the default size constraints for [FloatingActionButton.large].
  final BoxConstraints? largeSizeConstraints;

  /// Overrides the default size constraints for [FloatingActionButton.extended].
  final BoxConstraints? extendedSizeConstraints;

  /// The spacing between the icon and the label for an extended
  /// [FloatingActionButton].
  final double? extendedIconLabelSpacing;

  /// The padding for an extended [FloatingActionButton]'s content.
  final EdgeInsetsGeometry? extendedPadding;

  /// Creates a copy of this object with the given fields replaced with the
  /// new values.
  FloatingActionButtonThemeData copyWith({
    Color? foregroundColor,
    Color? backgroundColor,
    Color? focusColor,
    Color? hoverColor,
    Color? splashColor,
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? disabledElevation,
    double? highlightElevation,
    ShapeBorder? shape,
    bool? enableFeedback,
    BoxConstraints? sizeConstraints,
    BoxConstraints? smallSizeConstraints,
    BoxConstraints? largeSizeConstraints,
    BoxConstraints? extendedSizeConstraints,
    double? extendedIconLabelSpacing,
    EdgeInsetsGeometry? extendedPadding,
  }) {
    return FloatingActionButtonThemeData(
      foregroundColor: foregroundColor ?? this.foregroundColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      focusColor: focusColor ?? this.focusColor,
      hoverColor: hoverColor ?? this.hoverColor,
      splashColor: splashColor ?? this.splashColor,
      elevation: elevation ?? this.elevation,
      focusElevation: focusElevation ?? this.focusElevation,
      hoverElevation: hoverElevation ?? this.hoverElevation,
      disabledElevation: disabledElevation ?? this.disabledElevation,
      highlightElevation: highlightElevation ?? this.highlightElevation,
      shape: shape ?? this.shape,
      enableFeedback: enableFeedback ?? this.enableFeedback,
      sizeConstraints: sizeConstraints ?? this.sizeConstraints,
      smallSizeConstraints: smallSizeConstraints ?? this.smallSizeConstraints,
      largeSizeConstraints: largeSizeConstraints ?? this.largeSizeConstraints,
      extendedSizeConstraints: extendedSizeConstraints ?? this.extendedSizeConstraints,
      extendedIconLabelSpacing: extendedIconLabelSpacing ?? this.extendedIconLabelSpacing,
      extendedPadding: extendedPadding ?? this.extendedPadding,
    );
  }

  /// Linearly interpolate between two floating action button themes.
  ///
  /// If both arguments are null then null is returned.
  ///
  /// {@macro dart.ui.shadow.lerp}
  static FloatingActionButtonThemeData? lerp(FloatingActionButtonThemeData? a, FloatingActionButtonThemeData? b, double t) {
    assert(t != null);
    if (a == null && b == null)
      return null;
    return FloatingActionButtonThemeData(
      foregroundColor: Color.lerp(a?.foregroundColor, b?.foregroundColor, t),
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      focusColor: Color.lerp(a?.focusColor, b?.focusColor, t),
      hoverColor: Color.lerp(a?.hoverColor, b?.hoverColor, t),
      splashColor: Color.lerp(a?.splashColor, b?.splashColor, t),
      elevation: lerpDouble(a?.elevation, b?.elevation, t),
      focusElevation: lerpDouble(a?.focusElevation, b?.focusElevation, t),
      hoverElevation: lerpDouble(a?.hoverElevation, b?.hoverElevation, t),
      disabledElevation: lerpDouble(a?.disabledElevation, b?.disabledElevation, t),
      highlightElevation: lerpDouble(a?.highlightElevation, b?.highlightElevation, t),
      shape: ShapeBorder.lerp(a?.shape, b?.shape, t),
      enableFeedback: t < 0.5 ? a?.enableFeedback : b?.enableFeedback,
      sizeConstraints: BoxConstraints.lerp(a?.sizeConstraints, b?.sizeConstraints, t),
      smallSizeConstraints: BoxConstraints.lerp(a?.smallSizeConstraints, b?.smallSizeConstraints, t),
      largeSizeConstraints: BoxConstraints.lerp(a?.largeSizeConstraints, b?.largeSizeConstraints, t),
      extendedSizeConstraints: BoxConstraints.lerp(a?.extendedSizeConstraints, b?.extendedSizeConstraints, t),
      extendedIconLabelSpacing: lerpDouble(a?.extendedIconLabelSpacing, b?.extendedIconLabelSpacing, t),
      extendedPadding: EdgeInsetsGeometry.lerp(a?.extendedPadding, b?.extendedPadding, t),
    );
  }

  @override
  int get hashCode {
    return hashValues(
      foregroundColor,
      backgroundColor,
      focusColor,
      hoverColor,
      splashColor,
      elevation,
      focusElevation,
      hoverElevation,
      disabledElevation,
      highlightElevation,
      shape,
      enableFeedback,
      sizeConstraints,
      smallSizeConstraints,
      largeSizeConstraints,
      extendedSizeConstraints,
      extendedIconLabelSpacing,
      extendedPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other))
      return true;
    if (other.runtimeType != runtimeType)
      return false;
    return other is FloatingActionButtonThemeData
        && other.foregroundColor == foregroundColor
        && other.backgroundColor == backgroundColor
        && other.focusColor == focusColor
        && other.hoverColor == hoverColor
        && other.splashColor == splashColor
        && other.elevation == elevation
        && other.focusElevation == focusElevation
        && other.hoverElevation == hoverElevation
        && other.disabledElevation == disabledElevation
        && other.highlightElevation == highlightElevation
        && other.shape == shape
        && other.enableFeedback == enableFeedback
        && other.sizeConstraints == sizeConstraints
        && other.smallSizeConstraints == smallSizeConstraints
        && other.largeSizeConstraints == largeSizeConstraints
        && other.extendedSizeConstraints == extendedSizeConstraints
        && other.extendedIconLabelSpacing == extendedIconLabelSpacing
        && other.extendedPadding == extendedPadding;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties.add(ColorProperty('foregroundColor', foregroundColor, defaultValue: null));
    properties.add(ColorProperty('backgroundColor', backgroundColor, defaultValue: null));
    properties.add(ColorProperty('focusColor', focusColor, defaultValue: null));
    properties.add(ColorProperty('hoverColor', hoverColor, defaultValue: null));
    properties.add(ColorProperty('splashColor', splashColor, defaultValue: null));
    properties.add(DoubleProperty('elevation', elevation, defaultValue: null));
    properties.add(DoubleProperty('focusElevation', focusElevation, defaultValue: null));
    properties.add(DoubleProperty('hoverElevation', hoverElevation, defaultValue: null));
    properties.add(DoubleProperty('disabledElevation', disabledElevation, defaultValue: null));
    properties.add(DoubleProperty('highlightElevation', highlightElevation, defaultValue: null));
    properties.add(DiagnosticsProperty<ShapeBorder>('shape', shape, defaultValue: null));
    properties.add(DiagnosticsProperty<bool>('enableFeedback', enableFeedback, defaultValue: null));
    properties.add(DiagnosticsProperty<BoxConstraints>('sizeConstraints', sizeConstraints, defaultValue: null));
    properties.add(DiagnosticsProperty<BoxConstraints>('smallSizeConstraints', smallSizeConstraints, defaultValue: null));
    properties.add(DiagnosticsProperty<BoxConstraints>('largeSizeConstraints', largeSizeConstraints, defaultValue: null));
    properties.add(DiagnosticsProperty<BoxConstraints>('extendedSizeConstraints', extendedSizeConstraints, defaultValue: null));
    properties.add(DoubleProperty('extendedIconLabelSpacing', extendedIconLabelSpacing, defaultValue: null));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>('extendedPadding', extendedPadding, defaultValue: null));
  }
}
