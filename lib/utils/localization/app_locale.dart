part 'languages/app_lang_vi.dart';
part 'languages/app_lang_en.dart';

mixin AppLocale {
  static const String title = 'title';
  static const String title1 = 'title1';

  static const Map<String, dynamic> en = enLocale;
  static const Map<String, dynamic> vi = viLocale;
}
