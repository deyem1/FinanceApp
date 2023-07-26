import 'package:flutter/material.dart';

class MoneyPage extends StatelessWidget {
  const MoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Money'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          // TextFormField(
          //   decoration: const InputDecoration(
          //     icon: Icon(Icons.person),
          //     hintText: 'Enter Target Amount',
          //     labelText: 'Target Amount *',
          //   ),
          // ),
          const SizedBox(height: 20.0),
          // ! containerrrrrr
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2))
                ]),
            child: const Column(children: [
              Text(
                'Balance',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                '£58,900',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(image: AssetImage('images/mon1.png')),
              SizedBox(height: 20.0),
              // Text(
              //     '''Managing wealth and budget planning have become more efficient and effective with the integration of artificial intelligence (AI). AI algorithms have revolutionized the way individuals and businesses approach financial decision-making. By leveraging AI-powered tools, individuals can analyze their income, expenses, and savings patterns to create personalized budgets that align with their financial goals. These intelligent systems can track spending habits, identify areas of potential savings, and provide real-time insights into financial health. Moreover, AI can analyze market trends, investment opportunities, and risk factors, assisting individuals in making informed decisions for wealth management. \n \n With AI's ability to process vast amounts of data quickly and accurately, it can help optimize investment portfolios, detect anomalies, and recommend strategies to maximize returns while minimizing risks. Ultimately, AI empowers individuals to take control of their finances, make informed decisions, and build a solid foundation for long-term wealth management.''')

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Income',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Expenses',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '£159,050',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    '£100,150',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ]),
          ),

          const SizedBox(height: 30.0),

          // ! new entry
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 12,
                shadowColor: Colors.blue,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: ListTile(
                    // leading: Icon(Icons.flight_land),
                    title: Text(
                      'Income',
                      style: TextStyle(
                        fontSize: 16,
                        //COLOR DEL TEXTO TITULO
                        color: Colors.blueAccent,
                      ),
                    ),
                    subtitle: Text(
                      'Category',
                    ),
                    trailing: Icon(Icons.add),
                  ),
                ),
              ),

              // ! second row card
              Card(
                elevation: 12,
                shadowColor: Color.fromARGB(255, 243, 33, 33),
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: ListTile(
                    // leading: Icon(Icons.flight_land),
                    title: Text(
                      'Expense',
                      style: TextStyle(
                        fontSize: 16,
                        //COLOR DEL TEXTO TITULO
                        color: Color.fromARGB(255, 255, 68, 68),
                      ),
                    ),
                    subtitle: Text(
                      'Category',
                    ),
                    trailing: Icon(Icons.add),
                  ),
                ),
              ),
            ],
          ),
          // Card(
          //   shape: RoundedRectangleBorder(
          //     // borderRadius: BorderRadius.circular(15),
          //     side: BorderSide(
          //       color: Colors.black,
          //     ),
          //   ),
          //   elevation: 16,
          //   shadowColor: Colors.red,
          //   child: ListTile(
          //     leading: Icon(Icons.flight_land),
          //     title: Text(
          //       'Title',
          //       style: TextStyle(
          //         fontSize: 20,
          //         //COLOR DEL TEXTO TITULO
          //         color: Colors.blueAccent,
          //       ),
          //     ),
          //     subtitle: Text(
          //       'Sub Title',
          //     ),
          //     trailing: Icon(Icons.add),
          //   ),
          // ),
        ]),
      ),
    );
  }
}
