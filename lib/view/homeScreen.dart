import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_drawer_ui/provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StepperProvider? sf;
  StepperProvider? st;
  @override
  Widget build(BuildContext context) {
    sf=Provider.of<StepperProvider>(context,listen: false);
    st=Provider.of<StepperProvider>(context,listen: true);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF64538),
        title: Text(
          "Stepper App",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      drawer: Drawer(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(height: 30),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/profile.png"),
            backgroundColor: Colors.white,
          ),
          Text(
            "_N_A_M_E_",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "---> Select your Hobby <---",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.library_music,
                  color: Colors.black54,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text("Music")
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.my_library_books,
                  color: Colors.black54,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text("Library"),
                SizedBox(height: 20),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.sailing,
                  color: Colors.black54,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text("Swimming"),
                SizedBox(height: 20),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.sports_baseball,
                  color: Colors.black54,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text("Baseball"),
                SizedBox(height: 20),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.keyboard_hide,
                  color: Colors.black54,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text("Casio"),
                SizedBox(height: 20),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.radar,
                  color: Colors.black54,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text("Target"),
                SizedBox(height: 20),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.language,
                  color: Colors.black54,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text("IELTS"),
                SizedBox(height: 20),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.speaker,
                  color: Colors.black54,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text("Dance"),
                SizedBox(height: 20),
                SizedBox(height: 20),
              ],
            ),
          ),
        ]),
      ),
      body: Stepper(

        currentStep: st!.i,
        onStepContinue: () {
          sf!.Plus();
        },
        onStepCancel: () {
          sf!.Remove();
        },
        steps: [
          Step(
              title: Text("Fill Normal Details"),
              content: Column(
                children: [
                  SizedBox(height: 5),

                  TextField(
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.black54),
                      label: Text("Name"),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.black54),
                      label: Text("Location"),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.black54),
                      label: Text("Email"),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.black54),
                      label: Text("Number"),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusColor: Colors.black,
                    ),
                  ),
                ],
              )),
          Step(
            title: Text("Fill your Hobby"),
            content:  Column(
          children: [
          SizedBox(height: 5),

          TextField(
            decoration: InputDecoration(
              floatingLabelStyle: TextStyle(color: Colors.black54),
              label: Text("Write Intrest Filled "),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
              focusColor: Colors.black,
            ),
          ),
          SizedBox(height: 5),

        ],
      )
          ),
          Step(
            title: Text("Bank Details"),
              content: Column(
                children: [
                  SizedBox(height: 5),

                  TextField(
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.black54),
                      label: Text("Bank Holder Name"),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.black54),
                      label: Text("Account no"),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.black54),
                      label: Text("IFSC code"),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusColor: Colors.black,
                    ),
                  ),

                ],
              )
          ),
          Step(
            title: Text("Press the Okay For Done"),
              content:  Column(
                children: [
                  SizedBox(height: 5),

                  TextField(
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.black54),
                      label: Text("Write Intrest Filled "),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),

                ],
              )
          ),
        ],
      ),
    ));
  }
}
