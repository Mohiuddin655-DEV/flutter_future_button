import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_future_button/future_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Default
            const FutureButton(
              width: 200,
              margin: EdgeInsets.all(12),
              text: "Default",
            ),
            FutureButton(
              width: 200,
              margin: const EdgeInsets.all(12),
              text: "OK",
              onClick: () {},
            ),
            FutureButton(
              width: 200,
              margin: const EdgeInsets.all(12),
              textState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return "Loading...";
                  case ButtonState.disabled:
                    return "Disabled";
                  case ButtonState.initial:
                    return "Submit";
                }
              },
              onExecute: submit,
            ),
            //ExpendedIcon
            FutureButton(
              margin: const EdgeInsets.all(12),
              width: 200,
              expended: true,
              iconPadding: const EdgeInsets.only(left: 16),
              borderRadius: 25,
              textState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return "Uploading...";
                  case ButtonState.disabled:
                    return "Disabled";
                  case ButtonState.initial:
                    return "Upload";
                }
              },
              iconState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Icons.more_horiz;
                  case ButtonState.disabled:
                    return Icons.cancel;
                  case ButtonState.initial:
                    return Icons.upload;
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber;
                  case ButtonState.disabled:
                    return Colors.red.shade200;
                  case ButtonState.initial:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber.shade50;
                  case ButtonState.disabled:
                    return Colors.red.shade50;
                  case ButtonState.initial:
                    return Colors.amber;
                }
              },
              onClick: () {},
            ),
            FutureButton(
              width: 200,
              borderRadius: 25,
              iconPadding: const EdgeInsets.only(left: 16),
              expendedState: (state) {
                if (state == ButtonState.loading) {
                  return false;
                } else {
                  return true;
                }
              },
              textState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return "";
                  case ButtonState.disabled:
                    return "Disabled";
                  case ButtonState.initial:
                    return "Upload";
                }
              },
              iconState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Icons.more_horiz;
                  case ButtonState.disabled:
                    return Icons.cancel;
                  case ButtonState.initial:
                    return Icons.upload;
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber;
                  case ButtonState.disabled:
                    return Colors.red.shade200;
                  case ButtonState.initial:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber.shade50;
                  case ButtonState.disabled:
                    return Colors.red.shade50;
                  case ButtonState.initial:
                    return Colors.amber;
                }
              },
              onExecute: submit,
            ),
            FutureButton(
              margin: const EdgeInsets.all(12),
              width: 200,
              expended: true,
              iconPadding: const EdgeInsets.only(left: 16),
              borderRadius: 25,
              textState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return "Uploading...";
                  case ButtonState.disabled:
                    return "Disabled";
                  case ButtonState.initial:
                    return "Upload";
                }
              },
              iconState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Icons.more_horiz;
                  case ButtonState.disabled:
                    return Icons.cancel;
                  case ButtonState.initial:
                    return Icons.upload;
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber;
                  case ButtonState.disabled:
                    return Colors.red.shade200;
                  case ButtonState.initial:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber.shade50;
                  case ButtonState.disabled:
                    return Colors.red.shade50;
                  case ButtonState.initial:
                    return Colors.amber;
                }
              },
            ),
            //WithoutExpendedIcon
            SizedBox(
              width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FutureButton(
                    iconSize: 24,
                    borderRadius: 24,
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(12),
                    iconState: (state) {
                      switch (state) {
                        case ButtonState.loading:
                          return Icons.more_horiz;
                        case ButtonState.disabled:
                          return Icons.cancel;
                        case ButtonState.initial:
                          return Icons.upload;
                      }
                    },
                    colorState: (state) {
                      switch (state) {
                        case ButtonState.loading:
                          return Colors.amber;
                        case ButtonState.disabled:
                          return Colors.red.shade200;
                        case ButtonState.initial:
                          return Colors.white;
                      }
                    },
                    backgroundState: (state) {
                      switch (state) {
                        case ButtonState.loading:
                          return Colors.amber.shade50;
                        case ButtonState.disabled:
                          return Colors.red.shade50;
                        case ButtonState.initial:
                          return Colors.amber;
                      }
                    },
                    onClick: () {},
                  ),
                  FutureButton(
                    iconSize: 24,
                    borderRadius: 24,
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(12),
                    iconState: (state) {
                      switch (state) {
                        case ButtonState.loading:
                          return Icons.more_horiz;
                        case ButtonState.disabled:
                          return Icons.cancel;
                        case ButtonState.initial:
                          return Icons.upload;
                      }
                    },
                    colorState: (state) {
                      switch (state) {
                        case ButtonState.loading:
                          return Colors.amber;
                        case ButtonState.disabled:
                          return Colors.red.shade200;
                        case ButtonState.initial:
                          return Colors.white;
                      }
                    },
                    backgroundState: (state) {
                      switch (state) {
                        case ButtonState.loading:
                          return Colors.amber.shade50;
                        case ButtonState.disabled:
                          return Colors.red.shade50;
                        case ButtonState.initial:
                          return Colors.amber;
                      }
                    },
                    onExecute: submit,
                  ),
                  FutureButton(
                    iconSize: 24,
                    borderRadius: 24,
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(12),
                    iconState: (state) {
                      switch (state) {
                        case ButtonState.loading:
                          return Icons.more_horiz;
                        case ButtonState.disabled:
                          return Icons.clear;
                        case ButtonState.initial:
                          return Icons.upload;
                      }
                    },
                    colorState: (state) {
                      switch (state) {
                        case ButtonState.loading:
                          return Colors.amber;
                        case ButtonState.disabled:
                          return Colors.red.shade200;
                        case ButtonState.initial:
                          return Colors.white;
                      }
                    },
                    backgroundState: (state) {
                      switch (state) {
                        case ButtonState.loading:
                          return Colors.amber.shade50;
                        case ButtonState.disabled:
                          return Colors.red.shade50;
                        case ButtonState.initial:
                          return Colors.amber;
                      }
                    },
                  ),
                ],
              ),
            ),
            FutureButton(
              margin: const EdgeInsets.all(12),
              iconPadding: const EdgeInsets.only(left: 16),
              borderRadius: 25,
              textState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return "Uploading...";
                  case ButtonState.disabled:
                    return "Disabled";
                  case ButtonState.initial:
                    return "Upload";
                }
              },
              iconState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Icons.more_horiz;
                  case ButtonState.disabled:
                    return Icons.cancel;
                  case ButtonState.initial:
                    return Icons.upload;
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber;
                  case ButtonState.disabled:
                    return Colors.red.shade200;
                  case ButtonState.initial:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber.shade50;
                  case ButtonState.disabled:
                    return Colors.red.shade50;
                  case ButtonState.initial:
                    return Colors.amber;
                }
              },
              onClick: () {},
            ),
            FutureButton(
              margin: const EdgeInsets.all(12),
              iconPadding: const EdgeInsets.only(left: 16),
              borderRadius: 25,
              textState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return "Uploading";
                  case ButtonState.disabled:
                    return "Disabled";
                  case ButtonState.initial:
                    return "Upload";
                }
              },
              iconState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Icons.more_horiz;
                  case ButtonState.disabled:
                    return Icons.cancel;
                  case ButtonState.initial:
                    return Icons.upload;
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber;
                  case ButtonState.disabled:
                    return Colors.red.shade200;
                  case ButtonState.initial:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber.shade50;
                  case ButtonState.disabled:
                    return Colors.red.shade50;
                  case ButtonState.initial:
                    return Colors.amber;
                }
              },
              onExecute: submit,
            ),
            FutureButton(
              margin: const EdgeInsets.all(12),
              iconPadding: const EdgeInsets.only(left: 16),
              borderRadius: 25,
              textState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return "Uploading";
                  case ButtonState.disabled:
                    return "Disabled";
                  case ButtonState.initial:
                    return "Upload";
                }
              },
              iconState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Icons.more_horiz;
                  case ButtonState.disabled:
                    return Icons.cancel;
                  case ButtonState.initial:
                    return Icons.upload;
                }
              },
              colorState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber;
                  case ButtonState.disabled:
                    return Colors.red.shade200;
                  case ButtonState.initial:
                    return Colors.white;
                }
              },
              backgroundState: (state) {
                switch (state) {
                  case ButtonState.loading:
                    return Colors.amber.shade50;
                  case ButtonState.disabled:
                    return Colors.red.shade50;
                  case ButtonState.initial:
                    return Colors.amber;
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Future submit() async {
    print("Loading...");
    await Future.delayed(const Duration(seconds: 5)).then((value) async {
      print("Loaded 1");
    });
    await Future.delayed(const Duration(seconds: 5)).then((value) async {
      print("Loaded 2");
    });
    await Future.delayed(const Duration(seconds: 5)).then((value) {
      print("Loaded");
    });
  }
}
