import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FFButtonOptions {
  const FFButtonOptions({
    this.textAlign,
    this.textStyle,
    this.elevation,
    this.height,
    this.width,
    this.padding,
    this.color,
    this.disabledColor,
    this.disabledTextColor,
    this.splashColor,
    this.iconSize,
    this.iconColor,
    this.iconAlignment,
    this.iconPadding,
    this.borderRadius,
    this.borderSide,
    this.hoverColor,
    this.hoverBorderSide,
    this.hoverTextColor,
    this.hoverElevation,
    this.maxLines,
    this.focusBorderSide,
    this.focusBorderRadius,
  });

  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final double? elevation;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? disabledColor;
  final Color? disabledTextColor;
  final int? maxLines;
  final Color? splashColor;
  final double? iconSize;
  final Color? iconColor;
  final IconAlignment? iconAlignment;
  final EdgeInsetsGeometry? iconPadding;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;
  final Color? hoverColor;
  final BorderSide? hoverBorderSide;
  final Color? hoverTextColor;
  final double? hoverElevation;
  final BorderSide? focusBorderSide;
  final BorderRadius? focusBorderRadius;
}

class FFButtonWidget extends StatefulWidget {
  const FFButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.iconData,
    required this.options,
    this.showLoadingIndicator = true,
  });

  final String text;
  final Widget? icon;
  final IconData? iconData;
  final Function()? onPressed;
  final FFButtonOptions options;
  final bool showLoadingIndicator;

  @override
  State<FFButtonWidget> createState() => _FFButtonWidgetState();
}

class _FFButtonWidgetState extends State<FFButtonWidget> {
  bool loading = false;

  int get maxLines => widget.options.maxLines ?? 1;
  String? get text =>
      widget.options.textStyle?.fontSize == 0 ? null : widget.text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final defaultTextStyle = widget.options.textStyle ??
        theme.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.2,
          color: colorScheme.onPrimary,
        );
    final resolvedTextStyle = widget.options.textStyle ?? defaultTextStyle;
    final buttonColor = widget.options.color ?? colorScheme.primary;
    final hoverColor = widget.options.hoverColor ??
        buttonColor.withOpacity(colorScheme.brightness == Brightness.dark
            ? 0.18
            : 0.12);
    final splashColor = widget.options.splashColor ??
        buttonColor.withOpacity(colorScheme.brightness == Brightness.dark
            ? 0.22
            : 0.16);
    final disabledColor = widget.options.disabledColor ??
        colorScheme.outlineVariant.withOpacity(0.6);
    final disabledTextColor = widget.options.disabledTextColor ??
        colorScheme.onSurface.withOpacity(0.38);
    final borderRadius = widget.options.borderRadius ??
        BorderRadius.circular(16);
    final padding = widget.options.padding ??
        const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0);

    final bool hideText = resolvedTextStyle?.fontSize == 0;
    final String? textContent = hideText ? null : widget.text;

    Widget textWidget = loading
        ? SizedBox(
            width: widget.options.width == null
                ? _getTextWidth(
                    textContent,
                    resolvedTextStyle,
                    maxLines,
                  )
                : null,
            child: Center(
              child: SizedBox(
                width: 23,
                height: 23,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    resolvedTextStyle?.color ?? colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          )
        : AutoSizeText(
            textContent ?? '',
            style: textContent == null
                ? null
                : resolvedTextStyle?.withoutColor(),
            textAlign: widget.options.textAlign,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
          );

    final onPressed = widget.onPressed != null
        ? (widget.showLoadingIndicator
            ? () async {
                if (loading) {
                  return;
                }
                setState(() => loading = true);
                try {
                  await widget.onPressed!();
                } finally {
                  if (mounted) {
                    setState(() => loading = false);
                  }
                }
              }
            : () => widget.onPressed!())
        : null;

    ButtonStyle style = ButtonStyle(
      shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
        if (states.contains(WidgetState.hovered) &&
            widget.options.hoverBorderSide != null) {
          return RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: widget.options.hoverBorderSide!,
          );
        }
        if (states.contains(WidgetState.focused) &&
            widget.options.focusBorderSide != null) {
          return RoundedRectangleBorder(
            borderRadius: widget.options.focusBorderRadius ?? borderRadius,
            side: widget.options.focusBorderSide!,
          );
        }
        return RoundedRectangleBorder(
          borderRadius: borderRadius,
          side: widget.options.borderSide ?? BorderSide.none,
        );
      }),
      foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.disabled) &&
            widget.options.disabledTextColor != null) {
          return widget.options.disabledTextColor;
        }
        if (states.contains(WidgetState.hovered) &&
            widget.options.hoverTextColor != null) {
          return widget.options.hoverTextColor;
        }
        if (states.contains(WidgetState.disabled)) {
          return disabledTextColor;
        }
        return resolvedTextStyle?.color ??
            (widget.options.color != null
                ? resolvedTextStyle?.color
                : colorScheme.onPrimary);
      }),
      backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.disabled) &&
            widget.options.disabledColor != null) {
          return widget.options.disabledColor;
        }
        if (states.contains(WidgetState.hovered) &&
            widget.options.hoverColor != null) {
          return widget.options.hoverColor;
        }
        if (states.contains(WidgetState.disabled)) {
          return disabledColor;
        }
        return buttonColor;
      }),
      overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.pressed)) {
          return splashColor;
        }
        return widget.options.hoverColor == null ? hoverColor : Colors.transparent;
      }),
      padding: WidgetStateProperty.all(padding),
      elevation: WidgetStateProperty.resolveWith<double?>((states) {
        if (states.contains(WidgetState.hovered) &&
            widget.options.hoverElevation != null) {
          return widget.options.hoverElevation!;
        }
        if (states.contains(WidgetState.hovered) ||
            states.contains(WidgetState.focused)) {
          return (widget.options.elevation ?? 4.0) + 2;
        }
        if (states.contains(WidgetState.disabled)) {
          return 0;
        }
        return widget.options.elevation ?? 4.0;
      }),
      iconColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.disabled) &&
            widget.options.disabledTextColor != null) {
          return widget.options.disabledTextColor;
        }
        if (states.contains(WidgetState.hovered) &&
            widget.options.hoverTextColor != null) {
          return widget.options.hoverTextColor;
        }
        if (states.contains(WidgetState.disabled)) {
          return disabledTextColor;
        }
        return widget.options.iconColor ??
            (widget.options.color != null
                ? resolvedTextStyle?.color
                : colorScheme.onPrimary);
      }),
      shadowColor: WidgetStateProperty.all(
        theme.shadowColor.withOpacity(0.25),
      ),
      animationDuration: const Duration(milliseconds: 200),
    );

    if ((widget.icon != null || widget.iconData != null) && !loading) {
      Widget icon = widget.icon ??
          FaIcon(
            widget.iconData!,
            size: widget.options.iconSize,
            color: widget.options.iconColor ??
                (widget.options.color != null
                    ? resolvedTextStyle?.color
                    : colorScheme.onPrimary),
          );

      if (textContent == null) {
        return Container(
          height: widget.options.height,
          width: widget.options.width,
          decoration: BoxDecoration(
            border: Border.fromBorderSide(
              widget.options.borderSide ?? BorderSide.none,
            ),
            borderRadius: borderRadius,
            boxShadow: [
              BoxShadow(
                color: theme.shadowColor.withOpacity(0.15),
                blurRadius: 16,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: IconButton(
            splashRadius: 1.0,
            icon: Padding(
              padding: widget.options.iconPadding ?? EdgeInsets.zero,
              child: icon,
            ),
            onPressed: onPressed,
            style: style,
          ),
        );
      }
      return SizedBox(
        height: widget.options.height,
        width: widget.options.width,
        child: ElevatedButton.icon(
          icon: Padding(
            padding: widget.options.iconPadding ?? EdgeInsets.zero,
            child: icon,
          ),
          label: textWidget,
          onPressed: onPressed,
          style: style,
          iconAlignment: widget.options.iconAlignment ?? IconAlignment.start,
        ),
      );
    }

    return SizedBox(
      height: widget.options.height,
      width: widget.options.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: textWidget,
      ),
    );
  }
}

extension _WithoutColorExtension on TextStyle {
  TextStyle withoutColor() => TextStyle(
        inherit: inherit,
        color: null,
        backgroundColor: backgroundColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        height: height,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        // The _package field is private so unfortunately we can't set it here,
        // but it's almost always unset anyway.
        // package: _package,
        overflow: overflow,
      );
}

// Slightly hacky method of getting the layout width of the provided text.
double? _getTextWidth(String? text, TextStyle? style, int maxLines) =>
    text != null
        ? (TextPainter(
            text: TextSpan(text: text, style: style),
            textDirection: TextDirection.ltr,
            maxLines: maxLines,
          )..layout())
            .size
            .width
        : null;

class FFFocusIndicator extends StatefulWidget {
  final Widget child;
  final Border? border;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final void Function()? onDoubleTap;

  const FFFocusIndicator({
    Key? key,
    required this.child,
    this.border,
    this.borderRadius,
    this.padding,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
  }) : super(key: key);

  @override
  State<FFFocusIndicator> createState() => _FFFocusIndicatorState();
}

class _FFFocusIndicatorState extends State<FFFocusIndicator> {
  late FocusNode _focusNode;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (mounted) {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: widget.padding,
      decoration: BoxDecoration(
        border: _hasFocus ? widget.border : null,
        borderRadius: widget.borderRadius ?? BorderRadius.circular(4),
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusNode: _focusNode,
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        onDoubleTap: widget.onDoubleTap,
        child: widget.child,
      ),
    );
  }
}
