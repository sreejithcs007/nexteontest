import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class MobileSecondPage extends StatefulWidget {
  final SecondController controller;

  MobileSecondPage({super.key, required this.controller});

  @override
  State<MobileSecondPage> createState() => _MobileSecondPageState();
}

class _MobileSecondPageState extends State<MobileSecondPage> {
  @override
  void initState() {
    widget.controller.listdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xFF83D0E4),
            onPressed: widget.controller.adddata,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )),
        body: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              // color:Colors.red ,
              decoration: const BoxDecoration(
                  color: Color(0xFF83D0E4),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: const Expanded(
                child: Column(
                  children: [
                    Text(
                      "Emergency Kit",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      "We know migraines at school can be a real bummer, but you're a superhero for handling ",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Center(
                        child: Text("them like a champ!",
                            style:
                                TextStyle(color: Colors.black, fontSize: 10))),
                    Text(
                      "Your emergency kit is here to save the day and make you feel better.",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            Obx(
              () => Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.controller.values.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.grey,
                          child: Row(
                            children: [
                              Icon(Icons.home),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      widget.controller.listmodel.data
                                              ?.list?[index].name ??
                                          " ",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Expanded(
                                        child: Text(
                                      widget.controller.listmodel.data
                                              ?.list?[index].contact ??
                                          " ",
                                      style: TextStyle(color: Colors.black),
                                    )),
                                    Expanded(
                                        child: Text(
                                      widget.controller.listmodel.data
                                              ?.list?[index].details ??
                                          " ",
                                      style: TextStyle(color: Colors.black),
                                    )),
                                  ],
                                ),
                              ),
                              Icon(Icons.edit_note_outlined)
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ));
  }
}
