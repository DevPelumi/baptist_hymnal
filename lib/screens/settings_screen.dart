import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/settings_ui.dart';

import '../models/settings.dart';
import '../providers/settings_provider.dart';

const style = TextStyle(
  fontFamily: 'Alata',
  fontSize: 25,
  fontWeight: FontWeight.w600,
  color: Colors.white,
  letterSpacing: 1.2,
);

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Consumer<SettingsProvider>(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'SETTINGS',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontFamily: 'Alata',
                  fontWeight: FontWeight.w600),
            ),
          ),
          builder: (ctx, provider, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              child,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: SettingsSection(title: null, tiles: [
                    SettingsTile(
                      title: 'Language',
                      subtitle: provider.getLanguage().stringValue,
                      leading: Icon(Icons.language),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: SettingsSection(title: null, tiles: [
                    SettingsTile.switchTile(
                        title: 'Mode',
                        subtitle:
                            '${provider.isDarkMode(MediaQuery.of(context).platformBrightness == Brightness.dark) ? 'Dark' : 'Light'} Mode',
                        leading: Icon(Icons.palette),
                        onToggle: (bool value) async {
                          await provider.setDarkMode(value);
                        },
                        switchValue: provider.isDarkMode(
                            MediaQuery.of(context).platformBrightness ==
                                Brightness.dark)),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: SettingsSection(title: null, tiles: [
                    SettingsTile(
                      title: 'Font Size',
                      subtitle: 'Hymn font size',
                      trailing: DropdownButton(
                          onChanged: (int newFont) async {
                            await provider.setFontSize(newFont);
                          },
                          dropdownColor: Colors.green.shade200,
                          icon: Icon(CupertinoIcons.chevron_down),
                          value: provider.getFontSize(),
                          items: [14, 16, 18, 20, 22]
                              .map((n) => DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(n.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  value: n))
                              .toList()),
                      leading: Icon(Icons.text_fields),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
