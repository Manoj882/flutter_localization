import 'package:flutter/material.dart';
import 'package:flutter_localization_app/l10n/l10n.dart';
import 'package:flutter_localization_app/provider/locale_provider.dart';
import 'package:provider/provider.dart';

class LanguagePickerwidget extends StatelessWidget {
  const LanguagePickerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale ?? const Locale('en');

    return DropdownButtonHideUnderline(
      child: DropdownButton(
        iconEnabledColor: Colors.black,
        
        value: locale,
        items: L10n.all.map((locale) {
          final languageName = L10n.getLanguageName(context, locale.languageCode);
          return DropdownMenuItem(
            child: Center(
              child: Text(
                languageName,
                style:  TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            value: locale,
            onTap: (){
          final provider = Provider.of<LocaleProvider>(context, listen: false);
          provider.setLocale(locale);
        },
          );
        }).toList(),
        
        onChanged: (_){},
      ),
    );
  }
}
