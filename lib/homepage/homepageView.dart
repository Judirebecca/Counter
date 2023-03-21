import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'homepageVM.dart';

class homepageView extends StatelessWidget{
 homepageView({super.key});
  homepageVM _homepage = homepageVM();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Observer(
                  builder: (abc) {
                    // Create a text widget that consumes the variable count from the homepagmodel
                    return Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.lightBlue, borderRadius: BorderRadius.circular(8)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(_homepage.count.toString(), style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),),
                      ),
                    );
                  }
                ),
                const SizedBox(height:80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Create an iconbutton button which executes the method incrementcounter in homepageVM on pressed
                    IconButton(onPressed: _homepage.incrementCounter, icon: const Icon(Icons.add)),
                    const SizedBox(width:90),
                    // Create an iconbutton button which executes the method decrementcounter in homepageVM on pressed
                    IconButton(onPressed: _homepage.decrementCounter, icon: const Icon(Icons.horizontal_rule)),
                  ],
                )
               
              ],
            ),
          ],
        ),
      )
    );}
}