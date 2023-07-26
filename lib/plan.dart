import 'package:flutter/material.dart';

class PlanningPage extends StatefulWidget {
  const PlanningPage({super.key});

  @override
  State<PlanningPage> createState() => _PlanningPageState();
}

class _PlanningPageState extends State<PlanningPage> {
  final _textController = TextEditingController();

  // store users post
  // String userPost = '';
  // Initial Selected Value
  String dropdownvalue = '15 days';

  // List of items in our dropdown menu
  var items = [
    '15 days',
    '30 days',
    '60 days',
    '120 days',
    '1 year',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planning'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Image(
                image: AssetImage('images/pla3.png'),
              ),

              const SizedBox(
                height: 30,
              ),
              const Text(
                'Lets know your target!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
// // for later Container(color: Colors.red,)
              // Expanded(
              //     child: Container(
              //   child: const Center(
              //     child: Text('userPost'),
              //   ),
              // )),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: _textController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter Saving Target',
                    prefixIcon: const Icon(
                      Icons.money_outlined,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        //
                        _textController.clear();
                      },
                      icon: const Icon(Icons.clear),
                    )),
              ),

              const SizedBox(
                height: 20,
              ),

              // ! Select a duration
              Row(
                children: [
                  const Text(
                    'Select duration:            ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton(
                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ],
              ),

//               //   setState(() {
//               //       userPost = _textController.text;

//               // });
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text("Success"),
                          content: Text("Saved successfully"),
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(50, 40),
                ),
                child: const Text("Save"),
              ),
              const SizedBox(
                height: 150,
              ),
              const Text(
                'Your dream starts here!',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
