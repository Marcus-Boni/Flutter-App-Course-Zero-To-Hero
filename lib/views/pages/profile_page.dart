import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool switched = false;
  double sliderValue = 0.0;
  String? dropdownValue = 'E1';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text(controller.text),
            Checkbox(
              activeColor: Colors.amberAccent,
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: true,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch(
              activeThumbColor: Colors.amber,
              value: switched,
              onChanged: (value) {
                setState(() {
                  switched = value;
                });
              },
            ),
            Slider.adaptive(
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            InkWell(
              splashColor: Colors.amber,
              onTap: () {
                setState(() {
                  print('Imagem clicada');
                });
              },
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white30,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  print('Botão pressionado');
                });
              },
              child: Text('Pressione-me'),
            ),
            DropdownButton(
              value: dropdownValue,
              items: [
                DropdownMenuItem(value: 'E1', child: Text('Elemento 1')),
                DropdownMenuItem(value: 'E2', child: Text('Elemento 2')),
                DropdownMenuItem(value: 'E3', child: Text('Elemento 3')),
              ],
              onChanged: (value) {
                setState(() {
                  dropdownValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
