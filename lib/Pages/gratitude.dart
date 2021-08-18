import 'package:hng_task2/exports.dart';
class GratitudePage extends StatefulWidget {
  final int radioGroupValue;
  GratitudePage({  required this.radioGroupValue});

  @override
  _GratitudePageState createState() => _GratitudePageState();
}

class _GratitudePageState extends State<GratitudePage> {
  List <String> _gratitudeList = [];
  late String _selectGratitude;
  late int _radioGroupValue;
  void _radioOnChanged(var index){
    setState(() {
      _radioGroupValue = index;
      _selectGratitude = _gratitudeList[index];
      print('_selectedRadioValue $_selectGratitude');
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  _gratitudeList..add('Family')..add('Friends')..add('Coffee');
  _radioGroupValue = widget.radioGroupValue;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(' '),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () => Navigator.pop(context, _selectGratitude),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Radio(
                activeColor: Colors.black,
                value: 0,
                groupValue: _radioGroupValue,
                onChanged: (index) => _radioOnChanged(index),
              ),
              Text('Family'),
              Radio(
                activeColor: Colors.black,
                value: 1,
                groupValue: _radioGroupValue,
                onChanged: (index) => _radioOnChanged(index),
              ),
              Text('Friends'),
              Radio(
                activeColor: Colors.black,
                value: 2,
                groupValue: _radioGroupValue,
                onChanged: (index) => _radioOnChanged(index),
              ),
              Text('Coffee'),

            ],
          ),
        ),
      ),
    );
  }
}
