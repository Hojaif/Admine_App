import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<dynamic> _listData = [
    {"name": "Hojaifa Hossain", "roll": "21295", "phone": "095549121"},
    {"name": "Hojaifa Hossain", "roll": "21295", "phone": "095549121"},
    {"name": "Hojaifa Hossain", "roll": "21295", "phone": "095549121"},
    {"name": "Hojaifa Hossain", "roll": "21295", "phone": "095549121"},
    {"name": "Hojaifa Hossain", "roll": "21295", "phone": "095549121"},
    {"name": "Hojaifa Hossain", "roll": "21295", "phone": "095549121"},
    {"name": "Hojaifa Hossain", "roll": "21295", "phone": "095549121"},
    {"name": "Hojaifa Hossain", "roll": "21295", "phone": "095549121"},
    {"name": "Hojaifa Hossain", "roll": "21295", "phone": "095549121"},
    {"name": "Hojaifa Hossain", "roll": "21295", "phone": "095549121"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 10,bottom: 16,top: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FittedBox(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      height:
                          MediaQuery.of(context).size.width > 800 ? 300 : 306,
                      width:
                          MediaQuery.of(context).size.width > 800 ? 800 : 806,
                      child: Card(
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_outlined,
                                size: 120,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Sells",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 72,
                                  fontWeight: FontWeight.w900,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height:
                          MediaQuery.of(context).size.width > 800 ? 300 : 306,
                      width:
                          MediaQuery.of(context).size.width > 800 ? 800 : 806,
                      child: Card(
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.production_quantity_limits_outlined,
                                size: 120,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Product",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 72,
                                  fontWeight: FontWeight.w900,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // FittedBox(
            //   child: Row(
            //     children: [
            //       InkWell(
            //         onTap: () {},
            //         child: Container(
            //           height:
            //               MediaQuery.of(context).size.width > 800 ? 150 : 156,
            //           width:
            //               MediaQuery.of(context).size.width > 800 ? 800 : 806,
            //           child: Card(
            //             color: Colors.green,
            //             child: Padding(
            //               padding: const EdgeInsets.only(left: 10, top: 40),
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 children: [
            //                   Icon(
            //                     Icons.pedal_bike,
            //                     size: 40,
            //                     color: Colors.white,
            //                   ),
            //                   SizedBox(
            //                     height: 8,
            //                   ),
            //                   Text(
            //                     "Sells",
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 27,
            //                       fontWeight: FontWeight.w700,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       InkWell(
            //         onTap: () {},
            //         child: Container(
            //           height:
            //               MediaQuery.of(context).size.width > 800 ? 150 : 156,
            //           width:
            //               MediaQuery.of(context).size.width > 800 ? 800 : 806,
            //           child: Card(
            //             color: Colors.green,
            //             child: Padding(
            //               padding: const EdgeInsets.only(left: 10, top: 40),
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 children: [
            //                   Icon(
            //                     Icons.pedal_bike,
            //                     size: 40,
            //                     color: Colors.white,
            //                   ),
            //                   SizedBox(
            //                     height: 8,
            //                   ),
            //                   Text(
            //                     "Sells",
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 27,
            //                       fontWeight: FontWeight.w700,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _listData.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 80,
                    width: 600,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                _listData[index]["name"],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                _listData[index]["roll"],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                _listData[index]["phone"],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.green,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
