
import 'package:get/get_navigation/get_navigation.dart';
import 'package:localization/languages/arabic.dart';
import 'package:localization/languages/english.dart';

import 'languages/bangla.dart';

class Language extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {
    'en_Us':eng,
    'bn_BD':ban,
    'ar':arabic,
  };

}