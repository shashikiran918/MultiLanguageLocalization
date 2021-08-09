class Language {
  final int id;
  final String name;
  final String code;
  final String flag;

  Language({this.id, this.name, this.code, this.flag});

  static List<Language> LanguageList() {
    return <Language>[
      Language(id: 1, name: 'English', code: 'en', flag: '🇺🇸'),
      Language(id: 2, name: 'فارسي', code: 'fa', flag: '🇮🇷'),
      Language(id: 3, name: 'العربية', code: 'ar', flag: '🇪🇬'),
      Language(id: 4, name: 'Hindi', code: 'hi', flag: '🇮🇳')
    ];
  }
}
