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

    Color colorPrimary = Theme.of(context).primaryColor;

    Widget buttonSection = Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          _buildButtonColumn(colorPrimary, Icons.call, "Llamar"),
          _buildButtonColumn(colorPrimary, Icons.near_me, "Ruta"),
          _buildButtonColumn(colorPrimary, Icons.share, "Compartir")
        ],
      )
    );

    // Seccion de párrafo
    Widget sectionText = Container(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      )
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      //scaffold permite crear una estructura basica para la app. una barra superior y un cuerpo.
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter layout demo")
        ),

        body: Column(
          children: [
            // Agregamos a la app el Widget Container que contiene una row que creamos previamente.
            sectionTitle,
            buttonSection,
            sectionText
            
          ],

        )
        
      ),

    );
  }

  // devuelve un widget de tipo columna con el icono, el color y el texto especificado.
  Column _buildButtonColumn(Color color, IconData icon, String text) {

    return Column(

      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Icon(icon, color: color),

        Container(

          padding: EdgeInsets.only(top: 8),

          child: Text(
            text,

            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color
            )
          )
        ),
      ],
    );

  }
}