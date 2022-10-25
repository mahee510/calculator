import 'package:flutter/material.dart';

import 'calculations.dart';

const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  bool darkMode = false;
  Calculations calc = Calculations();
  String result = '0';

  Widget _switchDarkMode() {
    return NeuContainer(
      darkMode: darkMode,
      borderRadius: BorderRadius.circular(40),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SizedBox(
        width: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.wb_sunny,
              color: darkMode ? Colors.grey : Colors.redAccent,
            ),
            Icon(
              Icons.nightlight_round,
              color: darkMode ? Colors.green : Colors.grey,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? colorDark : colorLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    darkMode = !darkMode;
                  });
                },
                child: _switchDarkMode(),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: FittedBox(
                          child: Text(
                            result,
                            style: TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                              color: darkMode ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "=",
                            style: TextStyle(
                              fontSize: 35,
                              color: darkMode ? Colors.green : Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Flexible(
                            child: Text(
                              calc.resultOperationText,
                              style: TextStyle(
                                fontSize: 20,
                                color: darkMode ? Colors.green : Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     ButtonOvel(
                  //       darkMode: darkMode,
                  //       title: "sin",
                  //     ),
                  //     ButtonOvel(
                  //       darkMode: darkMode,
                  //       title: "cos",
                  //     ),
                  //     ButtonOvel(
                  //       darkMode: darkMode,
                  //       title: "tan",
                  //     ),
                  //     ButtonOvel(
                  //       darkMode: darkMode,
                  //       title: "%",
                  //     ),
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("C");
                          });
                        },
                        child: ButtonRounded(
                          title: "C",
                          darkMode: darkMode,
                          textColor: darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("+/-");
                          });
                        },
                        child: ButtonRounded(
                          title: "+/-",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("%");
                          });
                        },
                        child: ButtonRounded(
                          title: "%",
                          darkMode: darkMode,
                          textColor: darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("/");
                          });
                        },
                        child: ButtonRounded(
                          title: "/",
                          darkMode: darkMode,
                          textColor: darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("7");
                          });
                        },
                        child: ButtonRounded(
                          title: "7",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("8");
                          });
                        },
                        child: ButtonRounded(
                          title: "8",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("9");
                          });
                        },
                        child: ButtonRounded(
                          title: "9",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("x");
                          });
                        },
                        child: ButtonRounded(
                          title: "x",
                          darkMode: darkMode,
                          textColor: darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("4");
                          });
                        },
                        child: ButtonRounded(
                          title: "4",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("5");
                          });
                        },
                        child: ButtonRounded(
                          title: "5",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("6");
                          });
                        },
                        child: ButtonRounded(
                          title: "6",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("-");
                          });
                        },
                        child: ButtonRounded(
                          title: "-",
                          darkMode: darkMode,
                          textColor: darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("1");
                          });
                        },
                        child: ButtonRounded(
                          title: "1",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("2");
                          });
                        },
                        child: ButtonRounded(
                          title: "2",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("3");
                          });
                        },
                        child: ButtonRounded(
                          title: "3",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("+");
                          });
                        },
                        child: ButtonRounded(
                          title: "+",
                          darkMode: darkMode,
                          textColor: darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("0");
                          });
                        },
                        child: ButtonRounded(
                          title: "0",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed(".");
                          });
                        },
                        child: ButtonRounded(
                          title: ".",
                          darkMode: darkMode,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("e");
                          });
                        },
                        child: ButtonRounded(
                          darkMode: darkMode,
                          icon: Icons.backspace_outlined,
                          iconColor: darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            result = calc.buttonPressed("=");
                          });
                        },
                        child: ButtonRounded(
                          title: "=",
                          darkMode: darkMode,
                          textColor: darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonOvel extends StatelessWidget {
  final bool darkMode;
  final String? title;
  final Color? textColor;
  const ButtonOvel({
    this.title,
    required this.darkMode,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    const double padding = 17;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: NeuContainer(
        darkMode: darkMode,
        padding: const EdgeInsets.symmetric(
            horizontal: padding, vertical: padding / 2),
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: padding * 2,
          alignment: Alignment.center,
          child: Text(
            title!,
            style: TextStyle(
              color: darkMode ? Colors.white : Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonRounded extends StatelessWidget {
  final bool darkMode;
  final String? title;
  final IconData? icon;
  final Color? iconColor;
  final Color? textColor;

  const ButtonRounded({
    this.title,
    required this.darkMode,
    this.icon,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    const double padding = 17;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeuContainer(
        borderRadius: BorderRadius.circular(40),
        darkMode: darkMode,
        padding: const EdgeInsets.all(padding),
        child: Container(
          width: padding * 2,
          height: padding * 2,
          alignment: Alignment.center,
          child: title != null
              ? FittedBox(
                  child: Text(
                    title!,
                    style: TextStyle(
                      // ignore: prefer_if_null_operators
                      color: textColor != null
                          ? textColor
                          : darkMode
                              ? Colors.white
                              : Colors.black,
                      fontSize: 30,
                    ),
                  ),
                )
              : Icon(
                  icon,
                  color: iconColor,
                  size: 30,
                ),
        ),
      ),
    );
  }
}

class NeuContainer extends StatefulWidget {
  final bool darkMode;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;

  const NeuContainer(
      {this.darkMode = false,
      required this.child,
      required this.borderRadius,
      required this.padding})
      : super();

  @override
  _NeuContainerState createState() => _NeuContainerState();
}

class _NeuContainerState extends State<NeuContainer> {
  bool onPressed = false;

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      onPressed = false;
    });
  }

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      onPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool darkMode = widget.darkMode;
    return Listener(
      onPointerUp: _onPointerUp,
      onPointerDown: _onPointerDown,
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
          color: darkMode ? colorDark : colorLight,
          borderRadius: widget.borderRadius,
          boxShadow: onPressed
              ? null
              : [
                  BoxShadow(
                    color: darkMode ? Colors.black54 : Colors.blueGrey.shade200,
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: darkMode ? Colors.blueGrey.shade700 : Colors.white,
                    offset: const Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  )
                ],
        ),
        child: widget.child,
      ),
    );
  }
}
