import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const _lightPrimary = Color(0xFF4B6FFF);
  static const _lightSecondary = Color(0xFF6C5CE7);
  static const _lightTertiary = Color(0xFF2FBF71);
  static const _lightSurface = Color(0xFFF5F7FA);
  static const _lightSurfaceVariant = Color(0xFFFFFFFF);

  static const _darkPrimary = Color(0xFF99A9FF);
  static const _darkSecondary = Color(0xFFC4B5FD);
  static const _darkTertiary = Color(0xFF4ADE80);
  static const _darkSurface = Color(0xFF0F172A);
  static const _darkSurfaceVariant = Color(0xFF1E293B);

  static ThemeData get lightTheme {
    final baseTextTheme = GoogleFonts.interTextTheme();

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: _lightPrimary,
        onPrimary: Colors.white,
        secondary: _lightSecondary,
        onSecondary: Colors.white,
        tertiary: _lightTertiary,
        onTertiary: Colors.white,
        error: Color(0xFFEF4444),
        onError: Colors.white,
        surface: _lightSurface,
        onSurface: Color(0xFF1F2937),
        surfaceTint: _lightPrimary,
        surfaceVariant: _lightSurfaceVariant,
        onSurfaceVariant: Color(0xFF4B5563),
        outline: Color(0xFFCBD5E1),
        outlineVariant: Color(0xFFE2E8F0),
        shadow: Color(0x1A0F172A),
        scrim: Colors.black54,
        inverseSurface: Color(0xFF111827),
        onInverseSurface: Color(0xFFE5E7EB),
        inversePrimary: _lightSecondary,
      ),
      scaffoldBackgroundColor: _lightSurface,
      textTheme: baseTextTheme.copyWith(
        displayLarge: baseTextTheme.displayLarge?.copyWith(
          fontSize: 54,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.5,
          color: const Color(0xFF111827),
        ),
        displayMedium: baseTextTheme.displayMedium?.copyWith(
          fontSize: 44,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF111827),
        ),
        displaySmall: baseTextTheme.displaySmall?.copyWith(
          fontSize: 36,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF111827),
        ),
        headlineLarge: baseTextTheme.headlineLarge?.copyWith(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1F2937),
        ),
        headlineMedium: baseTextTheme.headlineMedium?.copyWith(
          fontSize: 26,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF1F2937),
        ),
        headlineSmall: baseTextTheme.headlineSmall?.copyWith(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF1F2937),
        ),
        titleLarge: baseTextTheme.titleLarge?.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1F2937),
        ),
        titleMedium: baseTextTheme.titleMedium?.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF334155),
        ),
        titleSmall: baseTextTheme.titleSmall?.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF475569),
        ),
        bodyLarge: baseTextTheme.bodyLarge?.copyWith(
          fontSize: 16,
          height: 1.6,
          color: const Color(0xFF1F2937),
        ),
        bodyMedium: baseTextTheme.bodyMedium?.copyWith(
          fontSize: 14,
          height: 1.6,
          color: const Color(0xFF334155),
        ),
        bodySmall: baseTextTheme.bodySmall?.copyWith(
          fontSize: 12,
          height: 1.5,
          color: const Color(0xFF64748B),
        ),
        labelLarge: baseTextTheme.labelLarge?.copyWith(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        labelMedium: baseTextTheme.labelMedium?.copyWith(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF475569),
        ),
        labelSmall: baseTextTheme.labelSmall?.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF64748B),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(const Size.fromHeight(48)),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          elevation: WidgetStateProperty.resolveWith<double>((states) {
            if (states.contains(WidgetState.disabled)) {
              return 0;
            }
            if (states.contains(WidgetState.hovered) ||
                states.contains(WidgetState.pressed)) {
              return 8;
            }
            return 4;
          }),
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return const Color(0xFFCBD5F5);
            }
            return _lightPrimary;
          }),
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return const Color(0xFF94A3B8);
            }
            return Colors.white;
          }),
          overlayColor: WidgetStateProperty.all(
            const Color(0x144B6FFF),
          ),
          shadowColor: WidgetStateProperty.all(const Color(0x33455A8E)),
          animationDuration: const Duration(milliseconds: 200),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(const Size.fromHeight(48)),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          side: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.hovered) ||
                states.contains(WidgetState.pressed)) {
              return const BorderSide(color: _lightSecondary, width: 2);
            }
            return const BorderSide(color: Color(0xFFCBD5F5));
          }),
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return const Color(0xFF94A3B8);
            }
            return _lightSecondary;
          }),
          overlayColor: WidgetStateProperty.all(
            const Color(0x146C5CE7),
          ),
          animationDuration: const Duration(milliseconds: 200),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          foregroundColor: WidgetStateProperty.all(_lightSecondary),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
      cardTheme: CardTheme(
        color: _lightSurfaceVariant,
        shadowColor: const Color(0x1A0F172A),
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(16),
        elevation: 6,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: _lightSurfaceVariant,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        titleTextStyle: baseTextTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w700,
          color: const Color(0xFF0F172A),
        ),
        contentTextStyle: baseTextTheme.bodyMedium,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: _lightSecondary, width: 1.8),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFEF4444)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFEF4444)),
        ),
        labelStyle: baseTextTheme.bodyMedium?.copyWith(
          color: const Color(0xFF64748B),
        ),
        hintStyle: baseTextTheme.bodyMedium?.copyWith(
          color: const Color(0xFF94A3B8),
        ),
      ),
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        tileColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      dividerTheme: const DividerThemeData(
        thickness: 1,
        space: 32,
        color: Color(0xFFE2E8F0),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: _lightSurface,
        surfaceTintColor: Colors.transparent,
        foregroundColor: const Color(0xFF111827),
        titleTextStyle: baseTextTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w600,
          color: const Color(0xFF111827),
        ),
        toolbarHeight: 72,
        centerTitle: false,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: const Color(0xFFE2E8F0),
        selectedColor: _lightSecondary.withOpacity(0.12),
        secondarySelectedColor: _lightSecondary,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        labelStyle: baseTextTheme.labelMedium!,
        secondaryLabelStyle: baseTextTheme.labelMedium!
            .copyWith(color: const Color(0xFF6C5CE7)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        elevation: 0,
        pressElevation: 0,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: _lightSecondary,
        foregroundColor: Colors.white,
        shape: StadiumBorder(),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: _lightSurfaceVariant,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        clipBehavior: Clip.antiAlias,
        showDragHandle: true,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: _lightSurfaceVariant,
        indicatorColor: _lightSecondary.withOpacity(0.12),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => baseTextTheme.labelMedium?.copyWith(
            color: states.contains(WidgetState.selected)
                ? _lightSecondary
                : const Color(0xFF64748B),
          ),
        ),
        iconTheme: WidgetStateProperty.resolveWith(
          (states) => IconThemeData(
            color: states.contains(WidgetState.selected)
                ? _lightSecondary
                : const Color(0xFF94A3B8),
          ),
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
      }),
    );
  }

  static ThemeData get darkTheme {
    final baseTextTheme = GoogleFonts.interTextTheme();

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: _darkPrimary,
        onPrimary: Color(0xFF111827),
        secondary: _darkSecondary,
        onSecondary: Color(0xFF111827),
        tertiary: _darkTertiary,
        onTertiary: Color(0xFF052E16),
        error: Color(0xFFF87171),
        onError: Color(0xFF1F2937),
        surface: _darkSurface,
        onSurface: Color(0xFFE2E8F0),
        surfaceTint: _darkPrimary,
        surfaceVariant: _darkSurfaceVariant,
        onSurfaceVariant: Color(0xFFCBD5F5),
        outline: Color(0xFF475569),
        outlineVariant: Color(0xFF1E293B),
        shadow: Color(0x66000000),
        scrim: Color(0xAA000000),
        inverseSurface: Color(0xFFF5F7FA),
        onInverseSurface: Color(0xFF0F172A),
        inversePrimary: _lightPrimary,
      ),
      scaffoldBackgroundColor: _darkSurface,
      textTheme: baseTextTheme.apply(
        bodyColor: const Color(0xFFE2E8F0),
        displayColor: const Color(0xFFF8FAFC),
      ),
      cardTheme: CardTheme(
        color: _darkSurfaceVariant,
        surfaceTintColor: Colors.transparent,
        shadowColor: const Color(0x66000000),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(16),
        elevation: 8,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF1E293B),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFF334155)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFF334155)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: _darkSecondary),
        ),
        labelStyle: baseTextTheme.bodyMedium?.copyWith(
          color: const Color(0xFFCBD5F5),
        ),
        hintStyle: baseTextTheme.bodyMedium?.copyWith(
          color: const Color(0xFF94A3B8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: Theme.of(lightTheme).elevatedButtonTheme.style?.copyWith(
              backgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.disabled)) {
                  return const Color(0xFF1F2937);
                }
                return _darkSecondary;
              }),
              foregroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.disabled)) {
                  return const Color(0xFF475569);
                }
                return Colors.black;
              }),
              shadowColor:
                  WidgetStateProperty.all(const Color(0x6626315A)),
            ) ??
            ButtonStyle(),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: Theme.of(lightTheme).outlinedButtonTheme.style?.copyWith(
              foregroundColor: WidgetStateProperty.all(_darkPrimary),
              side: WidgetStateProperty.all(
                const BorderSide(color: Color(0xFF334155)),
              ),
            ) ??
            ButtonStyle(),
      ),
      textButtonTheme: TextButtonThemeData(
        style: Theme.of(lightTheme).textButtonTheme.style?.copyWith(
              foregroundColor: WidgetStateProperty.all(_darkPrimary),
            ) ??
            ButtonStyle(),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: _darkSurface,
        surfaceTintColor: Colors.transparent,
        foregroundColor: const Color(0xFFE2E8F0),
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: const Color(0xFFF5F7FA),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: _darkSurfaceVariant,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        clipBehavior: Clip.antiAlias,
        showDragHandle: true,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: _darkSurfaceVariant,
        indicatorColor: _darkPrimary.withOpacity(0.18),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: states.contains(WidgetState.selected)
                ? Colors.white
                : const Color(0xFF94A3B8),
          ),
        ),
        iconTheme: WidgetStateProperty.resolveWith(
          (states) => IconThemeData(
            color: states.contains(WidgetState.selected)
                ? Colors.white
                : const Color(0xFF94A3B8),
          ),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: const Color(0xFF1F2937),
        selectedColor: _darkSecondary.withOpacity(0.24),
        secondarySelectedColor: _darkSecondary,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        labelStyle: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: const Color(0xFFE2E8F0),
        ),
        secondaryLabelStyle: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: const Color(0xFFC4B5FD),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        elevation: 0,
        pressElevation: 0,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: _darkSurfaceVariant,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        titleTextStyle: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        contentTextStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0xFFE2E8F0),
        ),
      ),
      dividerTheme: const DividerThemeData(
        thickness: 1,
        space: 32,
        color: Color(0xFF1F2937),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
      }),
    );
  }
}
