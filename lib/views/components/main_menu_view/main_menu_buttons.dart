import 'package:chess/model/app_model.dart';
import 'package:chess/views/components/shared/rounded_button.dart';
import 'package:flutter/cupertino.dart';

import '../../chess_view.dart';
import '../../settings_view.dart';

class MainMenuButtons extends StatelessWidget {
  final AppModel appModel;

  const MainMenuButtons(this.appModel, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          RoundedButton(
            'Start',
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    appModel.newGame(context, notify: false);
                    return ChessView(appModel);
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: RoundedButton(
                  'GitHub',
                  onPressed: () {
                    _openGitHub();
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: RoundedButton(
                  'Settings',
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const SettingsView(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _openGitHub() async {
    // const url = 'https://github.com/PScottZero/EnPassant';
    // if (await canLaunchUrlString(url)) {
    //   await launchUrlString(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }
}
