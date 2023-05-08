import 'package:flutter/material.dart';

class TileButton extends StatefulWidget {
  const TileButton({super.key});
  @override
  State<TileButton> createState() => _TileButtonState();
}

class _TileButtonState extends State<TileButton> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return toggle==false?FloatingActionButton(
      heroTag:null,
      mini: true,
      backgroundColor:Colors.white,
      onPressed:(){
        setState(() {
        toggle = !toggle;          
        });
      },
      child:Icon(Icons.home,color:Colors.black,),
    ):FloatingActionButton(
      heroTag:null,
      mini: true,
      backgroundColor:Colors.white,
      onPressed:(){
        setState(() {
        toggle = !toggle;          
        });
      },
      child:Icon(Icons.home,color:Colors.red,),
    );
  }
}
