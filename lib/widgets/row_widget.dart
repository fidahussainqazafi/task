import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final String txt;
  final VoidCallback onpreesed;
  const RowWidget({Key? key, required this.txt, required this.onpreesed, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [

        const CircleAvatar(child:  Icon(Icons.arrow_back)),
        const SizedBox(width: 10,),
        Text(txt,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        const SizedBox(width: 100,),
        ElevatedButton(onPressed: onpreesed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Text('Save',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
      ],
    );
  }
}
