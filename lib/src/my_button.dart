import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int index = 0;
  List<String> imageNames = ['Imagen111.jpg', 'Imagen222.jpg', 'Imagen333.jpg'];
  List<String> imageLabels = ['Imagen 1', 'Imagen 2', 'Imagen 3'];

  void onPressButton() {
    setState(() {
      index = (index + 1) % imageNames.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STATEFUL WIDGET IMAGENES", textAlign: TextAlign.center),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                imageLabels[
                    index], // Mostrar el texto correspondiente a la imagen
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  height: 10.0), // Añadir un espacio entre el texto y la imagen
              Image.asset(
                'assets/${imageNames[index]}',
                width: 200.0,
                height: 200.0,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                child: Text(
                  "Update",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: onPressButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}
