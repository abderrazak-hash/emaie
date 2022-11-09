import 'package:emaie/screens/order_screen2.dart';
import 'package:flutter/material.dart';

import 'package:emaie/widgets/emaie_button.dart';

import 'package:emaie/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int selectedMenu = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80.0,
            width: double.infinity,
            color: mainClr,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    '$iconsPath/logout.svg',
                    height: 20.0,
                    fit: BoxFit.cover,
                  ),
                  const Text('الطلبات',
                      style: TextStyle(
                        color: white,
                      )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderScreen2(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      '$iconsPath/notification.svg',
                      height: 20.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EMaieButton(
                onPressed: () {
                  setState(() {
                    selectedMenu = 0;
                  });
                },
                width: 100.0,
                color: selectedMenu == 0 ? white : null,
                label: 'تم التسليم',
              ),
              EMaieButton(
                onPressed: () {
                  setState(() {
                    selectedMenu = 1;
                  });
                },
                width: 100.0,
                color: selectedMenu == 1 ? white : null,
                label: 'قيد التوصيل',
              ),
              EMaieButton(
                onPressed: () {
                  setState(() {
                    selectedMenu = 2;
                  });
                },
                width: 100.0,
                color: selectedMenu == 2 ? white : null,
                label: 'جديد',
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Divider(color: grey, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'كاش',
                          style: infoStyle,
                        ),
                        Text(
                          ':طريقة الدفع',
                          style: fieldStyle,
                        ),
                      ],
                    ),
                    const Divider(color: grey, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          ':تفاصيل الطلب',
                          style: fieldStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        // scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          height: screenHeight * .25,
                          child: SingleChildScrollView(
                            child: Column(
                              children: List.generate(
                                6,
                                (index) => Row(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          'دينار',
                                          style: TextStyle(
                                            color: mainClr,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        Text(
                                          '50.04',
                                          style: TextStyle(
                                            color: mainClr,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          'مم',
                                          style: TextStyle(
                                            color: mainClr,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        Text(
                                          '16 x 333',
                                          style: TextStyle(
                                            color: mainClr,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Text(
                                          'عناصر',
                                          style: TextStyle(
                                            color: mainClr,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        Text(
                                          ' 3',
                                          style: TextStyle(
                                            color: mainClr,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'أكوافينا',
                                      style: TextStyle(
                                        color: mainClr,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ]
                                      .map(
                                        (e) => Expanded(
                                          child: e,
                                        ),
                                      )
                                      .toList(),
                                ),
                              )
                                  .map(
                                    (e) => Column(
                                      children: [
                                        e,
                                        const Divider(
                                            color: grey, thickness: 1),
                                      ],
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Divider(color: grey, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'طريق المطار - جسر ماديا',
                              style: infoStyle,
                            ),
                            Text(
                              'شارع عمر - مبنى 15 - الطابق 5 - الشقة 10',
                              style: TextStyle(
                                color: mainClr,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                        const Text(':العنوان', style: fieldStyle),
                      ],
                    ),
                    const Divider(color: grey, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              '2022',
                              textAlign: TextAlign.right,
                              style: infoStyle,
                            ),
                            Text(
                              'أغسطس ',
                              textAlign: TextAlign.right,
                              style: infoStyle,
                            ),
                            Text(
                              ' 20',
                              textAlign: TextAlign.right,
                              style: infoStyle,
                            ),
                          ],
                        ),
                        const Text(':وقت التوصيل', style: fieldStyle),
                      ],
                    ),
                    const Divider(color: grey, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text('دينار', style: infoStyle),
                            Text(' 75', style: infoStyle),
                          ],
                        ),
                        const Text(':المجموع', style: fieldStyle),
                      ],
                    ),
                    const Divider(color: grey, thickness: 1),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EMaieButton(
                onPressed: () {},
                width: screenWidth * .35,
                label: 'قبول الطلب',
              ),
              EMaieButton(
                onPressed: () {},
                width: screenWidth * .35,
                color: red,
                label: 'رفض الطلب',
              ),
            ],
          )
        ],
      ),
    );
  }
}
