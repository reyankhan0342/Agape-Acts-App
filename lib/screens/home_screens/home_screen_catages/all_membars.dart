import 'package:flutter/material.dart';

class AllMember extends StatelessWidget {
  const AllMember({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
    
          SizedBox(height: 150,),
          Text('friend screen',style: TextStyle(fontSize: 20),),
          Container(
            width: 500,
            height: 400,
        
        color: Colors.black,
          ),
            Container(
            width: 500,
            height: 400,
        
        color: Colors.pink,
          ),
            Container(
            width: 500,
            height: 400,
        
        color: Colors.blue,
          ),
            Container(
            width: 500,
            height: 400,
        
        color: Colors.white,
          ),
        ],
      ),
    );
  }
  }
