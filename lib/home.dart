// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldselver/cubit/cubit.dart';
import 'package:goldselver/cubit/states.dart';
// import 'package:goldselver/network/dio_helper.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit()
        ..getGoldPrice()
        ..getSilverPrice(),
      child: BlocConsumer<MainCubit, States>(
        listener: (context, state) {},
        builder: (context, state) {
          var myCubit = MainCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.grey[800],
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TODAY",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 233, 233),
                        fontSize: MediaQuery.of(context).size.width / 17,
                        fontWeight: FontWeight.bold,
                        // ignore: prefer_const_literals_to_create_immutables
                        shadows: [
                          BoxShadow(
                            color: Color.fromARGB(255, 212, 210, 188),
                            offset: Offset(1, 1),
                          )
                        ]),
                  ),
                  Text(
                    " PRICE ",
                    style: TextStyle(
                        color: Colors.orange[700],
                        fontSize: MediaQuery.of(context).size.width / 17,
                        fontWeight: FontWeight.bold,
                        // ignore: prefer_const_literals_to_create_immutables
                        shadows: [
                          BoxShadow(
                            color: Colors.orange,
                            offset: Offset(1, 1),
                          )
                        ]),
                  ),
                ],
              )),
            ),
            body: Container(
                margin: EdgeInsets.all(10),
                padding:
                    EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "gold.png",
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 6,
                        ),
                        Text(
                          "GOLD",
                          style: TextStyle(
                              color: Colors.orange[700],
                              fontSize: MediaQuery.of(context).size.width / 12,
                              fontWeight: FontWeight.bold,
                              // ignore: prefer_const_literals_to_create_immutables
                              shadows: [
                                BoxShadow(
                                  color: Colors.yellow,
                                  offset: Offset(2, 2),
                                )
                              ]),
                        ),
                        Row(
                          children: [
                            Text(
                              "${myCubit.goldI}",
                              style: TextStyle(
                                  color: Colors.orange[700],
                                  fontSize:
                                      MediaQuery.of(context).size.width / 17,
                                  fontWeight: FontWeight.bold,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.yellow,
                                      offset: Offset(1, 1),
                                    )
                                  ]),
                            ),
                            Text(
                              " \$",
                              style: TextStyle(
                                  color: Colors.green[900],
                                  fontSize:
                                      MediaQuery.of(context).size.width / 17,
                                  fontWeight: FontWeight.bold,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.green,
                                      offset: Offset(1, 1),
                                    )
                                  ]),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "silver.png",
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 6,
                        ),
                        Text(
                          "SILVER",
                          style: TextStyle(
                              color: Color.fromARGB(255, 236, 233, 233),
                              fontSize: MediaQuery.of(context).size.width / 12,
                              fontWeight: FontWeight.bold,
                              // ignore: prefer_const_literals_to_create_immutables
                              shadows: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 212, 210, 188),
                                  offset: Offset(2, 2),
                                )
                              ]),
                        ),
                        Row(
                          children: [
                            Text(
                              " ${myCubit.silverI}",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 228, 226, 226),
                                  fontSize:
                                      MediaQuery.of(context).size.width / 17,
                                  fontWeight: FontWeight.bold,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1, 1),
                                    )
                                  ]),
                            ),
                            Text(
                              " \$",
                              style: TextStyle(
                                  color: Colors.green[900],
                                  fontSize:
                                      MediaQuery.of(context).size.width / 17,
                                  fontWeight: FontWeight.bold,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.green,
                                      offset: Offset(1, 1),
                                    )
                                  ]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )),
          );
          ;
        },
      ),
    );
  }
}
