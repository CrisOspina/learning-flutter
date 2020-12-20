import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final _textStyle = new TextStyle(fontSize: 40.0);
  int _count = 0;

  void _add() => setState(() => _count++);
  void _remove() => setState(() => _count != 0 ? _count-- : _count);
  void _reset() => setState(() => _count = 0);

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _remove,
          child: Icon(Icons.remove),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
        )
      ],
    );
  }

  Widget _createAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text('Welcome flutter/dart 🚀'),
    );
  }

  Widget _createBody() {
    return Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _title(),
        _marginBody(),
        _subtitle(),
        _marginBody(),
        _message()
      ],
    ));
  }

  Widget _marginBody() => SizedBox(height: 30.0);

  Widget _title() => Text('Numbers clicks: ', style: _textStyle);

  Widget _subtitle() {
    return Text(
      _count == 0 ? '☢ add please...' : '$_count - 🚀',
      style: _count == 0
        ? TextStyle(fontSize: 41.0, color: Colors.red[600])
        : _textStyle,
    );
  }

  Widget _message() {
    return Text(
      _count == 0 ? "¡Uups human! 🤦‍♂️" : '',
      style: TextStyle(fontSize: 50.0, color: Colors.red[800]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      body: _createBody(),
      floatingActionButton: _createButtons(),
    );
  }
}
