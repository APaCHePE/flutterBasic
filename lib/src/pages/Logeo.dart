
import 'package:flutter/material.dart';

class InicioSesion extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InicioSesionState();
  }
}

class _InicioSesionState extends State <InicioSesion>{

    TextStyle _estylo = new TextStyle(fontSize: 35.0);
    int contador = 0;

  build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text ('NUMERO DE CLICKS: ', style: TextStyle(fontSize: 25.0)),
            Text ('$contador', style: _estylo),
          ],
          
        ),
      ),
      floatingActionButton:  Row(
        mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(width: 30.0),
            FloatingActionButton (child: Icon(Icons.exposure_zero), onPressed: _reset,),
            Expanded(child: SizedBox(width: 5.0)) ,
            FloatingActionButton (child: Icon(Icons.add), onPressed: _agregar,),
            SizedBox(width: 5.0,),
            FloatingActionButton (child: Icon(Icons.remove), onPressed: _sustraer,),
          ],
        ),
      );
  }
  void _reset(){
    setState(() {
      contador=0;
    });
  }
  void _agregar(){
    setState(() => contador++);
  }
  void _sustraer(){
    setState(() => contador--);
  }
}