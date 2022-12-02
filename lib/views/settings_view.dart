import 'package:chess/model/app_model.dart';
import 'package:chess/views/components/settings_view/piece_theme_picker.dart';
import 'package:chess/views/components/shared/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'components/settings_view/app_theme_picker.dart';
import 'components/settings_view/toggles.dart';
import 'components/shared/bottom_padding.dart';
import 'components/shared/text_variable.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
      builder: (context, appModel, child) => Container(
        decoration: BoxDecoration(gradient: appModel.theme.background),
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            const TextLarge('Settings'),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  const AppThemePicker(),
                  const SizedBox(height: 20),
                  const PieceThemePicker(),
                  const SizedBox(height: 10),
                  Toggles(appModel),
                ],
              ),
            ),
            const SizedBox(height: 30),
            RoundedButton(
              'Back',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const BottomPadding(),
          ],
        ),
      ),
    );
  }
}
