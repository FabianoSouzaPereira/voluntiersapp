import 'package:flutter/material.dart';
import 'package:voluntiersapp/ui/home/widgets/grid_icon.dart';
import 'package:voluntiersapp/ui/home/widgets/gride_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:voluntiersapp/core/router/paths.dart' as paths;

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    var viewPaddingTop = MediaQuery.of(context).viewPadding.top;
    final List<CustomIcon> icons = [
      const CustomIcon(iconData: Icons.favorite, route: 'route', iconColor: Colors.white),
      const CustomIcon(iconData: Icons.settings, route: paths.SettingsPagePath, iconColor: Colors.white),
      const CustomIcon(iconData: Icons.notifications, route: 'route', iconColor: Colors.white),
      const CustomIcon(iconData: Icons.person, route: paths.UserPagePath, iconColor: Colors.white),
      const CustomIcon(iconData: Icons.email, route: 'route', iconColor: Colors.white),
      const CustomIcon(iconData: Icons.camera, route: 'route', iconColor: Colors.white),
      const CustomIcon(iconData: Icons.movie, route: 'route', iconColor: Colors.white),
    ];

    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Text(
            locale.voluntiers(1)[0].toUpperCase() + locale.voluntiers(1).substring(1).toLowerCase(),
            style: const TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.transparent,
          child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: viewPaddingTop),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: IconsGrid(icons: icons),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
