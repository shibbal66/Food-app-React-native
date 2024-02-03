import 'package:flutter/material.dart';
class NumberStepper extends StatefulWidget {
  final int initialValue;
  final Function(int) onChanged;
  const NumberStepper({super.key, required this.initialValue, required this.onChanged});

  @override
  State<NumberStepper> createState() => _NumberStepperState();
}

class _NumberStepperState extends State<NumberStepper> {
  int _currentValue=1;
  @override
  void initState() {
    // TODO: implement initState
    _currentValue=widget.initialValue;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){
          setState(() {
            if(_currentValue>1){
              _currentValue--;
              widget.onChanged(_currentValue);
            }

          });
        }, icon: Icon(Icons.remove_circle)),
        Text(_currentValue.toString(),style: TextStyle(fontSize: 20),),
        IconButton(onPressed: (){
          setState(() {
            _currentValue++;
            widget.onChanged(_currentValue);
          });
        }, icon: Icon(Icons.add_circle_outlined)),
      ],
    );
  }
}
