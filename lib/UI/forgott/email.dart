import 'package:flutter/material.dart';
import 'package:task1/UI/login/login.dart';

class Forgott extends StatefulWidget {
  const Forgott({super.key});

  @override
  State<Forgott> createState() => _ForgottState();
}

class _ForgottState extends State<Forgott> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/s.jpg",height: 250,width: 250,),
              Text(
                "Forgott \npasword",
                style: TextStyle(fontSize: 36, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: " E_male",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  width: 250,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},

                    child: Text("Next"),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
