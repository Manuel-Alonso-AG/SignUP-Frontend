import 'package:flutter/material.dart';

class TextStyleConstants {
  static TextStyle? headlineLarge(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.headlineLarge?.copyWith(color: color, fontWeight: fontWeight);
  static TextStyle? headlineMedium(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.headlineMedium?.copyWith(color: color, fontWeight: fontWeight);
  static TextStyle? headlineSmall(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.headlineSmall?.copyWith(color: color, fontWeight: fontWeight);
    
  static TextStyle? displayLarge(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.displayLarge?.copyWith(color: color, fontWeight: fontWeight);
  static TextStyle? displayMedium(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.displayMedium?.copyWith(color: color, fontWeight: fontWeight);
  static TextStyle? displaySmall(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.displaySmall?.copyWith(color: color, fontWeight: fontWeight);

  static TextStyle? bodyLarge(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.bodyLarge?.copyWith(color: color, fontWeight: fontWeight);
  static TextStyle? bodyMedium(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.bodyMedium?.copyWith(color: color, fontWeight: fontWeight);
  static TextStyle? bodySmall(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.bodySmall?.copyWith(color: color, fontWeight: fontWeight);

  static TextStyle? titleLarge(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.titleLarge?.copyWith(color: color, fontWeight: fontWeight);
  static TextStyle? titleMedium(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.titleMedium?.copyWith(color: color, fontWeight: fontWeight);
  static TextStyle? titleSmall(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.titleSmall?.copyWith(color: color, fontWeight: fontWeight);

  static TextStyle? labelLarge(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.labelLarge?.copyWith(color: color, fontWeight: fontWeight);
  static TextStyle? labelMedium(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.labelMedium?.copyWith(color: color, fontWeight: fontWeight);
  static TextStyle? labelSmall(BuildContext context, {Color? color, FontWeight? fontWeight}) => 
    Theme.of(context).textTheme.labelSmall?.copyWith(color: color, fontWeight: fontWeight);
  
}