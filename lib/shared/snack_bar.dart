import 'package:flutter/material.dart';

/// Centralized, production-grade SnackBar service for MedAura app.
/// Clears existing SnackBars before showing a new one to eliminate queue lag,
/// handles unmounted contexts safely, and applies modern floating designs.
class AppSnackBar {
  static void _show({
    required BuildContext context,
    required String message,
    required Color backgroundColor,
    required IconData iconData,
    Duration duration = const Duration(seconds: 3),
  }) {
    if (!context.mounted) return;

    final messenger = ScaffoldMessenger.maybeOf(context);
    if (messenger == null) return;

    // Immediately clear queued snackbars so feedback pops up instantly.
    messenger.clearSnackBars();

    final isArabic = RegExp(r'[\u0600-\u06FF]').hasMatch(message);

    messenger.showSnackBar(
      SnackBar(
        content: Row(
          textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(iconData, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 1.3,
                  letterSpacing: 0.2,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () => messenger.hideCurrentSnackBar(),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(Icons.close_rounded, color: Colors.white.withValues(alpha: 0.8), size: 18),
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(color: Colors.white.withValues(alpha: 0.15), width: 1),
        ),
        elevation: 8,
        duration: duration,
      ),
    );
  }

  /// Show Error SnackBar (Modern Crimson)
  static void showError(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 4),
  }) {
    _show(
      context: context,
      message: message,
      backgroundColor: const Color(0xFFE11D48), // Rose Crimson
      iconData: Icons.error_outline_rounded,
      duration: duration,
    );
  }

  /// Show Success SnackBar (Emerald Green)
  static void showSuccess(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    _show(
      context: context,
      message: message,
      backgroundColor: const Color(0xFF059669), // Emerald Green
      iconData: Icons.check_circle_outline_rounded,
      duration: duration,
    );
  }

  /// Show Info SnackBar (Vibrant Royal Blue)
  static void showInfo(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    _show(
      context: context,
      message: message,
      backgroundColor: const Color(0xFF2563EB), // Vibrant Blue
      iconData: Icons.info_outline_rounded,
      duration: duration,
    );
  }

  /// Show Warning SnackBar (Warm Amber)
  static void showWarning(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    _show(
      context: context,
      message: message,
      backgroundColor: const Color(0xFFD97706), // Warm Amber
      iconData: Icons.warning_amber_rounded,
      duration: duration,
    );
  }
}
