import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/models/settings.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Settings _settings = Settings();

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function onChange,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChange,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _createSwitch(
                  'Sem Glúten',
                  'Só exibe refeições sem glútem',
                  _settings.isGlutenFree,
                  (value) => setState(() => _settings.isGlutenFree = value),
                ),
                _createSwitch(
                  'Sem Lactose',
                  'Só exibe refeições sem lactose',
                  _settings.isLactoseFree,
                  (value) => setState(() => _settings.isLactoseFree = value),
                ),
                _createSwitch(
                  'Vegana',
                  'Só exibe refeições veganas',
                  _settings.isVegan,
                  (value) => setState(() => _settings.isVegan = value),
                ),
                _createSwitch(
                  'Vegetariana',
                  'Só exibe refeições Vegetarianas',
                  _settings.isVegetarian,
                  (value) => setState(() => _settings.isVegetarian = value),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
