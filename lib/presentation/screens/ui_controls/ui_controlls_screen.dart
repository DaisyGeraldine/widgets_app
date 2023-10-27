import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static String name = 'UiControls.screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controls Screen'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation {
  car,
  bike,
  motorcycle,
  boat,
  plane,
  helicopter,
  rocket,
}

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Switch List Tile'),
          subtitle: const Text('Switch List Tile Subtitle'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),

        ExpansionTile(
          title: const Text('Expansion Tile'),
          subtitle: const Text('Expansion Tile Subtitle'),
          children: [
            RadioListTile(
              title: const Text('Radio Car'),
              subtitle: const Text('Radio list Car'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.car;
                });
              },
            ),
            RadioListTile(
              title: const Text('Radio Bike'),
              subtitle: const Text('Radio List bike'),
              value: Transportation.bike,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.bike;
                });
              },
            ),
            RadioListTile(
              title: const Text('Radio Motorcycle'),
              subtitle: const Text('Radio List Motorcycle'),
              value: Transportation.motorcycle,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.motorcycle;
                });
              },
            ),
            RadioListTile(
              title: const Text('Radio Boat'),
              subtitle: const Text('Radio List Boat'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.boat;
                });
              },
            ),
            RadioListTile(
              title: const Text('Radio Plane'),
              subtitle: const Text('Radio List Plane'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.plane;
                });
              },
            ),
            RadioListTile(
              title: const Text('Radio Helicopter'),
              subtitle: const Text('Radio List Helicopter'),
              value: Transportation.helicopter,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.helicopter;
                });
              },
            ),
            RadioListTile(
              title: const Text('Radio Rocket'),
              subtitle: const Text('Radio List Rocket'),
              value: Transportation.rocket,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.rocket;
                });
              },
            ),
          ],
        ),

        CheckboxListTile(
          title: const Text('¿Quieres desayuno?'),
          //subtitle: const Text('Checkbox List Tile Subtitle'),
          value: wantsBreakfast,
          onChanged: (value) {
            setState(() {
              wantsBreakfast = !wantsBreakfast;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('¿Quieres almuerzo?'),
          //subtitle: const Text('Checkbox List Tile Subtitle'),
          value: wantsLunch,
          onChanged: (value) {
            setState(() {
              wantsLunch = !wantsLunch;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('¿Quieres cena?'),
          //subtitle: const Text('Checkbox List Tile Subtitle'),
          value: wantsDinner,
          onChanged: (value) {
            setState(() {
              wantsDinner = !wantsDinner;
            });
          },
        ),

        


      ],
    );
  }
}