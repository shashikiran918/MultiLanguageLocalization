import 'package:flutter/material.dart';
import 'package:flutter_localization/app/localization/language_constant.dart';
import 'package:flutter_localization/app/models/language.dart';
import 'package:flutter_localization/main.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.code);
    MyApp.setLocale(context, _locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTranslated(context, 'settings')),
      ),
      body: Container(
        child: Center(
            child: DropdownButton<Language>(
          iconSize: 30,
          hint: Text(getTranslated(context, 'change_language')),
          onChanged: (Language language) {
            _changeLanguage(language);
          },
          items: Language.LanguageList().map<DropdownMenuItem<Language>>(
                (e) => DropdownMenuItem<Language>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        e.flag,
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(e.name)
                    ],
                  ),
                ),
              )
              .toList(),
        )),
      ),
    );
  }
}
