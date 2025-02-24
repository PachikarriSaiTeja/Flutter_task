import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
          
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, const Color.fromARGB(255, 239, 196, 196),Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                                Text(
                    "Good Afternoon, Prasad tnvd",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        "9618566951",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Prepaid",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Pack Info Card
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black26,
                      //     blurRadius: 4,
                      //     spreadRadius: 1,
                      //     offset: Offset(2, 2),
                      //   ),
                      // ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.mobiledata_off, color: Colors.grey,size: 30,),
                            SizedBox(width: 10
                            ,child: Text("- ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),),
                            Text(
                              " 0",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold,),
                            ),
                            Text("pack",style: TextStyle(fontSize: 10),)
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Expired",
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: Text("View Pack"),
                            ),
                            SizedBox(width: 10,),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                              child: Text("Recharge"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  // Expired Plan Warning
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.warning, color: Colors.red),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Uh-oh! Your plan has expired. Recharge now.",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        Text(
                          "Recharge",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Exclusive Offer
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              width: MediaQuery.sizeOf(context).width*0.95,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 198, 231, 255),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    "App Exclusive Offer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Applicable on recharges above Rs 249.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                 
                  SizedBox(height: 5),
                  Text(
                    "Check Now >",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Quick Actions
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              height: MediaQuery.sizeOf(context).height*0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                    "     Quick Actions",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ),
                  SizedBox(height: 30),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    children: [
                      quickAction(Icons.account_balance_wallet, "Recharge"),
                      quickAction(Icons.payment, "Pay Bill"),
                      quickAction(Icons.phone, "Landline"),
                      quickAction(Icons.wifi, "Book Fiber"),
                      quickAction(Icons.sim_card, "Upgrade to 4G SIM"),
                      quickAction(Icons.confirmation_number, "Choose Number",
                          isNew: true),
                      quickAction(Icons.do_not_disturb, "Do Not Disturb"),
                      quickAction(Icons.games, "Games"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget quickAction(IconData icon, String label, {bool isNew = false}) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey[200],
              child: Icon(icon, color: Colors.black54),
            ),
            if (isNew)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "New",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
