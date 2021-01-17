import 'package:settings_ui/settings_ui.dart';
import 'package:flutter/material.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Setting'),
          backgroundColor: Colors.teal[200],
        ),
        body: SettingsList(sections: [

          SettingsSection(

            title: 'Section',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language),

                onTap: () {},
              ),
              SettingsTile(
                title: 'Environment',

                leading: Icon(Icons.wb_cloudy_outlined),

                onTap: () {},
              ),
            ],
          ),
          SettingsSection(
            title: 'Account',
            tiles: [
              SettingsTile(
                title: 'Phone number',

                leading: Icon(Icons.phone),

                onTap: () {},
              ),
              SettingsTile(
                title: 'Email',

                leading: Icon(Icons.email),

                onTap: () {},
              ),
              SettingsTile(
                title: 'Sign out',
                leading: Icon(Icons.assignment_return_outlined),
              ),
            ],
          ),
          SettingsSection(
            title: 'Secutiry',
            tiles: [
              SettingsTile(
                title: 'Lock app in background',

                leading: Icon(Icons.phonelink_lock_rounded),

                trailing: Icon(Icons.toggle_on_outlined),
                onTap: () {},
              ),
              SettingsTile(
                title: 'Use fingerprint',

                leading: Icon(Icons.fingerprint),
                trailing: Icon(Icons.toggle_on_outlined),

                onTap: () {},
              ),
              SettingsTile(
                title: 'Change password',
                leading: Icon(Icons.lock),
                trailing: Icon(Icons.toggle_on_outlined),
              ),
            ],
          )
        ]));
  }
}
