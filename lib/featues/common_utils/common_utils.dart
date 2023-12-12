import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;


import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../m_colors.dart';
import 'app_constants.dart';
import 'image_utils.dart';
import 'log_utils.dart';

class CommonUtils {
  static Color getColorFromHex(String hexColor) {
    try {
      hexColor = hexColor.toUpperCase().replaceAll("#", "");
      if (hexColor.length == 6) {
        hexColor = "0xFF$hexColor";
      }
      return Color(int.parse(hexColor));
    } catch (e) {
      return Colors.transparent;
    }
  }

  static bool getISTablet(BuildContext context) {
    return (MediaQuery
        .sizeOf(context)
        .width > 600);
  }

  static void showToastMessage(String? title,
      {String? message, String? status}) {
    CherryToast(
      icon: Icons.info_outline,
      themeColor: MColors.colorPrimary,
      title: Text(
        title ?? "",
        style:
        const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      displayTitle: false,
      description: Text(
        title ?? '',
        style: const TextStyle(color: Colors.black),
      ),
      toastPosition: Position.top,
      animationDuration: const Duration(milliseconds: 1000),
      autoDismiss: true,
    ).show(Get.context!);

    // Get.snackbar(title ?? "", message ?? "",
    //     snackPosition: SnackPosition.TOP,
    //     backgroundColor:
    //         CommonUtils.getStatusTypeBGColorFromString(status ?? ""),
    //     padding: const EdgeInsets.only(
    //       left: 6,
    //       right: 3,
    //       top: 3,
    //     ),
    //     icon: CommonUtils.getStatusTypeIconFromString(status ?? ""),
    //     borderRadius: 20,
    //     borderWidth: 1,
    //     borderColor: CommonUtils.getStatusTypeColorFromString(status ?? ""),
    //     margin: const EdgeInsets.all(15),
    //     colorText: Colors.black,
    //     titleText: Text(
    //       title ?? "",
    //       style:
    //           const TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
    //     ),
    //     duration: const Duration(seconds: 2),
    //     isDismissible: true,
    //     forwardAnimationCurve: Curves.elasticInOut,
    //     boxShadows: [
    //       const BoxShadow(
    //         color: Colors.black12,
    //         offset: Offset(0, 4),
    //         blurRadius: 8,
    //         spreadRadius: 0,
    //       )
    //     ]);
    // Get.closeCurrentSnackbar();
  }


  static Widget getStatusTypeIconFromString(String status) {
    switch (status) {
      case 'pending':
      case 'in_progress':
      case 'warning':
      case 'Late':
      case 'draft':
        return SvgPicture.asset(
          ImageUtils.getAssetsPath('ic_warning', 'svg', format: 'svg'),
          height: 4,
          width: 4,
        );
      case 'accepted':
      case 'Present':
      case 'finished':
      case 'success':
        return SvgPicture.asset(
          ImageUtils.getAssetsPath('ic_success', 'svg', format: 'svg'),
          height: 4,
          width: 4,
        );
      case 'rejected':
      case 'refused':
      case 'canceled':
      case 'error':
        return SvgPicture.asset(
          ImageUtils.getAssetsPath('ic_warning', 'svg', format: 'svg'),
          height: 4,
          width: 4,
        );
      default:
        return Image.asset(
          ImageUtils.getAssetsPath('logo', 'images', format: 'png'),
          height: 4,
          width: 4,
        );
    }
  }

  static Color getStatusTypeBGColorFromString(String status) {
    switch (status) {
      case 'pending':
      case 'in_progress':
      case 'Late':
      case 'draft':
      case 'warning':
        return MColors.colorPrimary;
      case 'accepted':
      case 'Present':
      case 'finished':
      case 'success':
      case 'start':
        return MColors.colorPrimary;
      case 'rejected':
      case 'refused':
      case 'canceled':
      case 'cut':
      case 'cancelled':
      case 'error':
        return MColors.colorPrimary;
      default:
        return MColors.colorPrimary;
    }
  }

  static Color getStatusTypeColorFromString(String status) {
    switch (status) {
      case 'pending':
      case 'in_progress':
      case 'Late':
      case 'draft':
      case 'warning':
        return const Color(0xffFFAA00);
      case 'accepted':
      case 'Present':
      case 'finished':
      case 'success':
      case 'start':
        return const Color(0xff2EC275);
      case 'rejected':
      case 'refused':
      case 'canceled':
      case 'cancelled':
      case 'error':
        return const Color(0xffF46F34);
      default:
        return MColors.colorPrimary;
    }
  }

  static Color getStatusTypeColorFromCode(int status) {
    switch (status) {
      case 77:
        return const Color(0xfffbc02d);
      case 66:
        return const Color(0xff00A843);
      case 67:
        return const Color(0xffd32f2f);
      default:
        return MColors.colorPrimary;
    }
  }

  static bool isLoadingDialogVisible = false;

  static void showDialog(Widget dialogWidget) {
    showGeneralDialog(
      context: Get.context!,
      barrierLabel: "Barrier",
      barrierDismissible: false,
      barrierColor: Colors.white.withOpacity(0.2),
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (_, __, ___) {
        return dialogWidget;
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
        } else {
          tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
        }
        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }

  // static void showLoadingDialog() {
  //   showGeneralDialog(
  //     context: Get.context!,
  //     barrierLabel: "Barrier",
  //     barrierDismissible: false,
  //     useRootNavigator: false,
  //     barrierColor: Colors.white.withOpacity(0.4),
  //     transitionDuration: const Duration(milliseconds: 200),
  //     pageBuilder: (_, __, ___) {
  //       isLoadingDialogVisible = true;
  //       return const SizedBox();
  //     },
  //     transitionBuilder: (_, anim, __, child) {
  //       Tween<Offset> tween;
  //       if (anim.status == AnimationStatus.reverse) {
  //         tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
  //       } else {
  //         tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
  //       }
  //       return SlideTransition(
  //         position: tween.animate(anim),
  //         child: FadeTransition(
  //           opacity: anim,
  //           child: child,
  //         ),
  //       );
  //     },
  //   );
  // }
  //
  // static void closeLoadingDialog() {
  //   if (isLoadingDialogVisible) {
  //     isLoadingDialogVisible = false;
  //     ModalRoute<Object?>? route = ModalRoute.of(Get.context!);
  //     if (route != null) {
  //       Log.w(route.settings.name.toString());
  //     }
  //     Navigator.pop(Get.context!);
  //   }
  // }

  static Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  // static void toggleAppLanguage(AppLanguages language) async {
  //   if (HiveHelper.mobileLanguage.value == Locale(language.name)) {
  //     return;
  //   } else {
  //     HiveHelper.mobileLanguage.value = Locale(language.name);
  //     HiveHelper.setLanguage(language.name);
  //     Get.updateLocale(Locale(language.name));
  //   }
  // }

  static AppLanguages getLanguageName(String language) {
    switch (language) {
      case 'ar':
        return AppLanguages.ar;
      case 'en':
        return AppLanguages.en;

      default:
        return AppLanguages.ar;
    }
  }
}
