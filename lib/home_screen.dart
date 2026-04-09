import 'package:application/styles/icons.dart';
import 'package:application/styles/web_colors.dart';
import 'package:application/widgets/setting_part.dart';
import 'package:application/widgets/shortcut.dart';
import 'package:application/widgets/switch_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SizedBox sizeBoxWidth10 = SizedBox(width: 10);
  bool switchValue = false;
  String _chosenValue = "Boris";
  String _languageChosenValue = "Français Fr";
  bool mouseRegion = false;

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: menuIcon,
      actions: [
        Flexible(
          child: SwitchButton(
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            },
            switchValue: switchValue,
          ),
        ),
        Flexible(child: buildUserAccount()),
      ],
    );
  }

  Widget buildUserAccount() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 2,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: switchValue
                ? DarkColor.kSearchColor
                : LightColor.kSearchColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: DropdownButton<String>(
            dropdownColor: switchValue
                ? DarkColor.kScaffoldColor
                : LightColor.kScaffoldColor,
            value: _chosenValue,
            icon: Icon(
              Icons.expand_more,
              color: switchValue ? DarkColor.kTextColor : LightColor.kTextColor,
            ),
            elevation: 0,
            underline: Container(color: Color(0xff212834)),
            style: TextStyle(
              color: switchValue ? DarkColor.kTextColor : LightColor.kTextColor,
            ),
            items: <String>["Boris", "Yaqoob", "Insaf", "Tariq"]
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            backgroundImage: userProfile.image,
                          ),
                        ),
                        Text(value),
                      ],
                    ),
                  );
                })
                .toList(),
            onChanged: (String? newValue) {
              setState(() {
                _chosenValue = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: switchValue
          ? DarkColor.kScaffoldColor
          : LightColor.kScaffoldColor,
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Le Widget Flexible est utilisé pour permettre à l'enfant de s'adapter à l'espace disponible dans la colonne, en prenant en compte les autres widgets et en évitant les débordements.
            Flexible(
              child: Image.asset("assets/images/google.png", scale: 2.0),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Material(
                elevation: 2,
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  style: TextStyle(
                    color: switchValue
                        ? DarkColor.kTextColor
                        : LightColor.kTextColor,
                  ),
                  decoration: InputDecoration(
                    hintText: "Recherchez sur Google ...",
                    hintStyle: TextStyle(
                      color: switchValue
                          ? DarkColor.kHintTextColor
                          : LightColor.kTextColor,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(Icons.search, color: Colors.blue),
                    ),
                    fillColor: switchValue
                        ? DarkColor.kSearchColor
                        : LightColor.kSearchColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),

            Column(
              children: [
                CircleAvatar(
                  backgroundColor: switchValue
                      ? DarkColor.kGoogleMicColor
                      : LightColor.kGoogleMicColor,
                  child: googleMic,
                ),
              ],
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShortCut(switchValue: switchValue, child: youtubeIcon),
                  ShortCut(switchValue: switchValue, child: mailIcon),
                  ShortCut(switchValue: switchValue, child: driveIcon),
                  ShortCut(switchValue: switchValue, child: meetIcon),
                  ShortCut(switchValue: switchValue, child: languageIcon),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.info,
                      color: switchValue
                          ? DarkColor.kTextColor
                          : LightColor.kTextColor,
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: switchValue
                          ? DarkColor.kTextColor
                          : LightColor.kTextColor,
                    ),
                  ),

                  sizeBoxWidth10,

                  Material(
                    elevation: 2,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 35,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: switchValue
                            ? DarkColor.kSearchColor
                            : LightColor.kSearchColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: DropdownButton<String>(
                        dropdownColor: switchValue
                            ? DarkColor.kScaffoldColor
                            : LightColor.kScaffoldColor,
                        value: _languageChosenValue,
                        icon: Icon(
                          Icons.expand_more,
                          color: switchValue
                              ? DarkColor.kTextColor
                              : LightColor.kTextColor,
                        ),
                        elevation: 0,
                        underline: Container(color: Color(0xff212834)),
                        style: TextStyle(
                          color: switchValue
                              ? DarkColor.kTextColor
                              : LightColor.kTextColor,
                        ),
                        items:
                            <String>[
                              "Français Fr",
                              "Email UK",
                              "Hindi",
                              "Balochi",
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _languageChosenValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Utile pour la plateforme web, pour détecter les interactions de la souris et réagir en conséquence (ex: souligner le texte au survol).
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SettingPart(
                    mouseRegion: mouseRegion,
                    onEnter: (event) {
                      setState(() {
                        mouseRegion = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        mouseRegion = false;
                      });
                    },
                    switchValue: switchValue,
                    text: "A propos",
                  ),
                  sizeBoxWidth10,
                  SettingPart(
                    mouseRegion: mouseRegion,
                    onEnter: (event) {
                      setState(() {
                        mouseRegion = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        mouseRegion = false;
                      });
                    },
                    switchValue: switchValue,
                    text: "Confidentialité",
                  ),
                  sizeBoxWidth10,
                  SettingPart(
                    mouseRegion: mouseRegion,
                    onEnter: (event) {
                      setState(() {
                        mouseRegion = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        mouseRegion = false;
                      });
                    },
                    switchValue: switchValue,
                    text: "Paramètres",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
