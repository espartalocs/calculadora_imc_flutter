import 'package:flutter/material.dart';

// class InputTextDecorarion {
//   static _verificaIcon(IconData? iconSet, Color? colorIcon, BuildContext context) {
//     return iconSet != null
//         ? Icon(
//             iconSet,
//             size: Theme.of(context).iconTheme.size,
//             color: colorIcon,
//           )
//         : null;
//   }

//   static InputDecoration decoration(
//       {String? label,
//       Color? borderSideColor,
//       IconData? iconSet,
//       Color? colorIcon,
//       String? hinttext,
//       InkWell? suffixIcon,
//       String? counterText,
//       bool readonly = false,
//       required BuildContext context}) {
//     return _decoration(
//       label,
//       borderSideColor ?? Theme.of(context).inputDecorationTheme.border!.borderSide.color,
//       _verificaIcon(iconSet, colorIcon, context),
//       hinttext,
//       suffixIcon,
//       counterText,
//       readonly,
//       context,
//     );
//   }

//   static InputDecoration decorationWithWidget(String? label, Widget icon,
//       {String? hinttext, InkWell? suffixIcon, String? counterText, bool readonly = false, required BuildContext context}) {
//     return _decoration(
//         label, Theme.of(context).inputDecorationTheme.border!.borderSide.color, icon, hinttext, suffixIcon, counterText, readonly, context);
//   }

//   static InputDecoration _decoration(String? label, Color borderSideColor, Widget? icon_, String? hinttext, InkWell? suffixIcon,
//       String? counterText, bool readonly, BuildContext context) {
//     return InputDecoration(
//       isDense: true,
//       labelText: label,
//       // labelStyle: TemaPadrao.textStyle,
//       labelStyle: Theme.of(context).textTheme.bodySmall,
//       errorStyle: const TextStyle(color: Colors.redAccent),
//       border: const OutlineInputBorder(
//         borderRadius: BorderRadius.zero,
//         borderSide: BorderSide(color: Colors.grey),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(5),
//         borderSide: const BorderSide(color: Colors.grey),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(5),
//         borderSide: BorderSide(color: borderSideColor),
//       ),
//       filled: true,
//       fillColor: readonly ? Colors.grey : Colors.white,
//       icon: icon_,
//       hintText: hinttext,
//       suffixIcon: suffixIcon,
//       counterText: counterText,
//     );
//   }
// }
