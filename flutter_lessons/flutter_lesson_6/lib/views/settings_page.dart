import 'package:flutter/material.dart';
import 'package:flutter_lesson_6/product/cache/cache_key_enum.dart';
import 'package:flutter_lesson_6/product/cache/cache_manager.dart';
import 'package:flutter_lesson_6/product/provider/app_provider.dart';
import 'package:flutter_lesson_6/product/utils/extensions/string_extension.dart';
import 'package:flutter_lesson_6/product/utils/extensions/theme_mod_extension.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Future<void> updateThemeFromCache() async {
    final theme = await CacheManager().getString(CacheKeyEnum.theme);

    if (theme == null) return;

    final cacheTheme = theme.getFromCache;

    if (!mounted) return;

    context.read<AppProvider>().setTheme(cacheTheme);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"), centerTitle: true),
      body: Column(
        children: [
          Consumer<AppProvider>(
            builder:
                (context, appProvider, child) => SwitchListTile(
                  value: appProvider.theme == ThemeMode.dark,
                  onChanged: appProvider.changeTheme,
                  title: Text("Tema: ${appProvider.theme.stringValue}"),
                ),
          ),
        ],
      ),
    );
  }
}
