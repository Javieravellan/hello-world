import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget sectionTitle = Container(
      padding: const EdgeInsets.all(32),

      child: Row(

        children: [
            //primer elemento. Expanded permite que los elementos dentro se extiendan por todo el espacio
          Expanded(

            // un hijo columna con alineacion al inicio para empezar por la izquierda
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              // coleccion de hijos. El primero un container. el segundo un texto
              children: <Widget>[
                // hijo 1. se usa porque podemos agregar padding. tiene un hijo tipo Text
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  
                  // Hijo tipo text
                  child: Text(
                    'Flutter layout demo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    )
                  )
                ),

                // hijo 2: Solo un Text porque no necesitamos agregarle relleno en este caso
                Text(
                  'Qué bonito demo!',
                  
                  style: TextStyle(
                    color: Colors.grey[500]  
                  )
                )
              ],

            )
          ),

          // segundo elemento. un icono en color rojo
          Icon(
            Icons.star,
            color: Colors.redAccent
          ),

          // tercer elemento. un texto con valor 41.
          Text('16')
        ]

      )
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter layout demo")
        ),

        body: Center(
          child: Text("Hello world")
        )
        
      ),

    );
  }
}