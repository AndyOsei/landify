import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landify/values/values.dart';

const _lightFillColor = AppColors.black;

final Color _lightFocusColor = AppColors.black.withOpacity(0.12);

const _extraBold = FontWeight.w900;
const _bold = FontWeight.w700;
const _semiBold = FontWeight.w600;
const _medium = FontWeight.w500;
const _regular = FontWeight.w400;
// static const _light = FontWeight.w300;

final _textTheme = TextTheme(
  headline1: GoogleFonts.inter(
    fontWeight: _extraBold,
    fontSize: 72.0,
    height: 72.0 / 98.0,
    color: AppColors.black,
  ),
  headline2: GoogleFonts.inter(
    fontWeight: _extraBold,
    fontSize: 48.0,
    height: 48.0 / 64.0,
    color: AppColors.black,
  ),
  headline3: GoogleFonts.inter(
    fontWeight: _extraBold,
    fontSize: 40.0,
    height: 40.0 / 54.0,
    color: AppColors.black,
  ),
  headline4: GoogleFonts.inter(
    fontWeight: _extraBold,
    fontSize: 28.0,
    height: 28.0 / 40.0,
    color: AppColors.black,
  ),
  headline5: GoogleFonts.inter(
    fontWeight: _semiBold,
    fontSize: 24.0,
    height: 24.0 / 32.0,
    color: AppColors.black,
  ),
  headline6: GoogleFonts.inter(
    fontWeight: _medium,
    fontSize: 20.0,
    height: 20.0 / 30.0,
    color: AppColors.black,
  ),
  subtitle1: GoogleFonts.inter(
    fontWeight: _bold,
    fontSize: 18.0,
    height: 18.0 / 28.0,
    color: AppColors.black,
  ),
  subtitle2: GoogleFonts.inter(
    fontWeight: _medium,
    fontSize: 18.0,
    height: 18.0 / 28.0,
    color: AppColors.black,
  ),
  bodyText1: GoogleFonts.inter(
    fontWeight: _regular,
    fontSize: 16.0,
    height: 16.0 / 26.0,
    color: AppColors.gray,
  ),
  bodyText2: GoogleFonts.inter(
    fontWeight: _regular,
    fontSize: 14.0,
    height: 14.0 / 22.0,
    color: AppColors.gray,
  ),
);

ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
  return ThemeData(
    colorScheme: colorScheme,
    textTheme: _textTheme,
    canvasColor: colorScheme.background,
    scaffoldBackgroundColor: colorScheme.background,
    highlightColor: Colors.transparent,
    accentColor: colorScheme.primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    focusColor: AppColors.purple,
  );
}

ColorScheme _lightColorScheme = ColorScheme(
  primary: AppColors.purple,
  primaryVariant: AppColors.purple.shade800,
  secondary: AppColors.turquoise,
  secondaryVariant: AppColors.turquoise.shade800,
  background: AppColors.white,
  surface: AppColors.white,
  onBackground: AppColors.white,
  error: _lightFillColor,
  onError: _lightFillColor,
  onPrimary: _lightFillColor,
  onSecondary: AppColors.gray,
  onSurface: AppColors.gray,
  brightness: Brightness.light,
);

ThemeData lightThemeData = themeData(_lightColorScheme, _lightFocusColor);
