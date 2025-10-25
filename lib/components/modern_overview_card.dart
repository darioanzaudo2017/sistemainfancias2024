import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_theme.dart';

class ModernOverviewCard extends StatelessWidget {
  const ModernOverviewCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    this.icon,
  });

  final String title;
  final String subtitle;
  final String trailing;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final palette = theme.extension<AppPalette>() ?? const AppPalette.light();

    return AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [palette.gradientStart, palette.gradientEnd],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: palette.badgeBackground.withOpacity(0.18),
            blurRadius: 26,
            offset: const Offset(0, 18),
          ),
        ],
        border: Border.all(color: palette.neutralContainer.withOpacity(0.6)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null)
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: palette.neutralContainer.withOpacity(0.6),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                icon,
                color: colorScheme.primary,
              ),
            ),
          if (icon != null) const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.1,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: LinearGradient(
                colors: [
                  palette.badgeBackground,
                  colorScheme.primary,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: palette.badgeBackground.withOpacity(0.28),
                  blurRadius: 20,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text(
                trailing,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  color: palette.badgeForeground,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
