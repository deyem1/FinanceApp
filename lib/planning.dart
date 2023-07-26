import 'package:flutter/material.dart';
// import 'package:my_second_app/home_page.dart';

String plannerText = 'Your Dream starts here!';
// ''' Navigating the Path to Financial Freedom: A Guide to Financial Planning in the UK \n \n Introduction: \n Financial planning is a crucial aspect of building a secure future and achieving financial freedom. Whether you're a young professional starting your career, a family looking to grow your wealth, or someone planning for retirement, having a solid financial plan tailored to your needs is essential. In the United Kingdom, a country known for its strong financial services sector, there are several key considerations to keep in mind when it comes to financial planning. This blog aims to provide you with valuable insights and practical tips to navigate the path towards financial success in the UK. \n Set Clear Financial Goals: The first step in any financial planning journey is to define your goals. Identify your short-term and long-term objectives, such as buying a home, saving for your children's education, or planning for retirement. Setting clear and achievable goals will help guide your financial decisions and ensure that you stay focused on what truly matters to you. \n Understand Tax Efficiency: \n Tax planning plays a crucial role in optimizing your finances. Familiarize yourself with the UK tax system and explore legitimate strategies to minimize your tax liabilities. Consider utilizing tax-advantaged accounts like Individual Savings Accounts (ISAs) and Self-Invested Personal Pensions (SIPPs) to maximize your savings and investments while taking advantage of tax breaks.\n Budgeting and Cash Flow Management: \n Create a realistic budget that outlines your income, expenses, and savings. Track your spending habits and identify areas where you can make adjustments to save more. Utilize digital tools and mobile apps that can help you monitor your cash flow and provide insights into your financial habits. This will empower you to make informed decisions and stay on track with your financial plan.\n Build an Emergency Fund:\n Life is full of unexpected events, and having an emergency fund is crucial to protect yourself from financial setbacks. Aim to save at least three to six months' worth of living expenses in a readily accessible account. This fund will provide a safety net during challenging times and prevent you from dipping into long-term investments or incurring high-interest debt.\n Diversify Your Investments:\n Investing wisely is key to growing your wealth over time. Spread your investments across different asset classes, such as stocks, bonds, real estate, and mutual funds, to reduce risk and increase potential returns. Consider seeking advice from a qualified financial advisor who can help you create an investment portfolio aligned with your risk tolerance and financial goals.\n Plan for Retirement:\n Planning for retirement should be a priority, regardless of your age. Take advantage of workplace pension schemes, such as the Auto-Enrolment Scheme, and contribute as much as you can. Additionally, explore personal pension options like SIPPs, which provide greater control and flexibility over your retirement savings. Regularly review your pension plan and adjust your contributions as your financial circumstances change.\n Seek Professional Guidance:\n While financial planning can be done independently, seeking professional guidance can provide invaluable insights and expertise. Consider consulting a certified financial planner or advisor who can help assess your financial situation, provide personalized advice, and develop a comprehensive financial plan tailored to your needs.\n Conclusion:\n \n Financial planning is a journey that requires dedication, discipline, and informed decision-making. By setting clear goals, understanding tax efficiency, managing your cash flow, building an emergency fund, diversifying investments, planning for retirement, and seeking professional guidance when needed, you can lay a solid foundation for a financially secure future. Remember, financial planning is not a one-time event but an ongoing process that requires regular reviews and adjustments. With a well-crafted financial plan in place, you can navigate the complexities of the UK financial landscape and pave the way towards long-term financial freedom.''';

class PlanPage extends StatefulWidget {
  const PlanPage({
    super.key,
    required this.title,
    //  required this.imagePath,
  });
  final String title;

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  // final _textController = TextEditingController();

  // store users post
  String userPost = '';

  // final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Image(
                image: AssetImage('images/pla23.png'),
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // ! tile 1
              GestureDetector(
                child: Container(
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
                    // Image(
                    //   image: AssetImage('images/rai7.png'),
                    // ),
                    ListTile(
                      title: Text(
                        ' Start by defining your short-term, medium-term, and long-term financial goals. ',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      hoverColor: Colors.amber,
                      leading: Icon(
                        Icons.build_circle,
                      ),
                    ),
                  ]),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

// ! tile 2
              GestureDetector(
                child: Container(
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
                    // Image(
                    //   image: AssetImage('images/rai7.png'),
                    // ),
                    ListTile(
                      title: Text(
                        'Take stock of your income, expenses, debts, and assets. ',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      hoverColor: Colors.amber,
                      leading: Icon(
                        Icons.production_quantity_limits,
                      ),
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

// ! tile 3
              GestureDetector(
                child: Container(
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
                    // Image(
                    //   image: AssetImage('images/rai7.png'),
                    // ),
                    ListTile(
                      title: Text(
                        ' Develop a monthly budget that outlines your income and expenses. ',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      hoverColor: Colors.amber,
                      leading: Icon(
                        Icons.thumbs_up_down,
                      ),
                    )
                  ]),
                ),
              ),
// for later Container(color: Colors.red,)
              // Expanded(
              //     child: Container(
              //   child: Center(
              //     child: Text(userPost),
              //   ),
              // )),
              // TextField(
              //   controller: _textController,
              //   keyboardType: TextInputType.number,
              //   decoration: InputDecoration(
              //       border: const OutlineInputBorder(),
              //       hintText: 'Enter income',
              //       suffixIcon: IconButton(
              //         onPressed: () {
              //           //
              //           _textController.clear();
              //         },
              //         icon: const Icon(Icons.clear),
              //       )),
              // ),

              //   setState(() {
              //       userPost = _textController.text;

              // });
              // ElevatedButton(
              //     onPressed: () {
              //       setState(() {
              //         userPost = _textController.text;
              //       });
              //     },
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.red,
              //       foregroundColor: Colors.white,
              //       minimumSize: const Size(50, 40),
              //     ),
              //     child: const Text('Save')),
              const SizedBox(
                height: 90,
              ),
              Text(
                plannerText,
                style: const TextStyle(
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
