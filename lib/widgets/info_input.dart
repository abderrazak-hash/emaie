import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:emaie/constants.dart';

class InfoInput extends TextField {
  final String hintText;
  final InputDecoration decorations;
  final double? letterSpacing;
  InfoInput({
    Key? key,
    required this.hintText,
    this.letterSpacing,
    super.controller,
    super.focusNode,
    this.decorations = const InputDecoration(
      filled: true,
      fillColor: greyish,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: mainClr,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      hintStyle: TextStyle(
        color: textClr,
        fontSize: 15.0,
        letterSpacing: 1,
        fontWeight: FontWeight.bold,
      ),
      hintTextDirection: TextDirection.ltr,
      contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
    ),
    TextInputType? keyboardType = TextInputType.text,
    super.textInputAction,
    super.textCapitalization = TextCapitalization.words,
    super.strutStyle,
    super.textAlign = TextAlign.end,
    super.textAlignVertical,
    super.textDirection = TextDirection.ltr,
    super.readOnly = false,
    ToolbarOptions? toolbarOptions,
    super.showCursor = true,
    super.autofocus = false,
    super.obscuringCharacter = '•',
    super.obscureText = false,
    super.autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    super.enableSuggestions = true,
    super.maxLines = 1,
    super.minLines,
    super.expands = false,
    super.maxLength,
    super.maxLengthEnforcement,
    super.onChanged,
    super.onEditingComplete,
    super.onSubmitted,
    super.onAppPrivateCommand,
    super.inputFormatters,
    super.enabled,
    super.cursorWidth = 2.0,
    super.cursorHeight,
    super.cursorRadius = const Radius.circular(1.0),
    super.cursorColor = mainClr,
    super.selectionHeightStyle = ui.BoxHeightStyle.tight,
    super.selectionWidthStyle = ui.BoxWidthStyle.tight,
    super.keyboardAppearance,
    super.scrollPadding = const EdgeInsets.all(20.0),
    super.dragStartBehavior = DragStartBehavior.start,
    bool? enableInteractiveSelection,
    super.selectionControls,
    super.onTap,
    super.mouseCursor,
    super.buildCounter,
    super.scrollController,
    super.scrollPhysics,
    super.autofillHints = const <String>[],
    super.clipBehavior = Clip.hardEdge,
    super.restorationId,
    super.scribbleEnabled = true,
    super.enableIMEPersonalizedLearning = true,
  }) : super(
          key: key,
          decoration: decorations.copyWith(
            hintText: hintText,
          ),
          style: TextStyle(
            color: textClr,
            fontSize: 15.0,
            letterSpacing: letterSpacing ?? 1,
            fontWeight: FontWeight.bold,
          ),
        );
}
