import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

void main() {
  runApp(InicioParcial());
}

class InicioParcial extends StatelessWidget {
  const InicioParcial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicacion',
      home: Parcial(),
    );
  }
}

class Parcial extends StatefulWidget {
  const Parcial({super.key});

  @override
  State<Parcial> createState() => _ParcialState();
}

class _ParcialState extends State<Parcial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: fondo(),
    );
  }
}

Widget fondo() {
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://wallpaperaccess.com/full/2987176.jpg"))),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 3),
              encabezado(),
              SizedBox(height: 3),
              nombre(),
              SizedBox(height: 3),
              imagenPerfil(),
              SizedBox(height: 3),
              registroCarnet(),
              SizedBox(height: 3),
              registroNombre(),
              SizedBox(height: 3),
              registroApellidos(),
              SizedBox(height: 3),
              registroDireccion(),
              SizedBox(height: 3),
              registroPassword(),
              SizedBox(height: 3),
              registroRePassword(),
              SizedBox(height: 3),
              registroCorreo(),
              SizedBox(height: 3),
              btnIngresar(),
              SizedBox(height: 3),
              btnCancelar(),
            ]),
      ));
}

Widget encabezado() {
  return Text(
    "Parcial I - ETPS3!",
    style: TextStyle(
        color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
  );
}

Widget nombre() {
  return Text(
    "Kevin Alberto Trujillo Reyes - 2514182017",
    style: TextStyle(
        color: Color.fromARGB(255, 124, 119, 119),
        fontSize: 15.0,
        fontWeight: FontWeight.bold),
  );
}

Widget imagenPerfil() {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: Image.network(
      "https://cdn-icons-png.flaticon.com/128/3135/3135768.png",
    ),
  );
}

Widget registroCarnet() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: new Icon(
            Icons.account_circle_rounded,
            color: Colors.black,
          ),
          hintText: "Ingrese su carnet",
          fillColor: Colors.black,
          filled: false),
    ),
  );
}

Widget registroNombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: new Icon(
            Icons.account_circle_rounded,
            color: Colors.black,
          ),
          hintText: "Ingrese su nombre",
          fillColor: Colors.black,
          filled: false),
    ),
  );
}

Widget registroApellidos() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: new Icon(
            Icons.account_circle_rounded,
            color: Colors.black,
          ),
          hintText: "Ingrese sus apellidos",
          fillColor: Colors.black,
          filled: false),
    ),
  );
}

Widget registroDireccion() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    child: TextField(
      maxLines: 20,
      minLines: 1,
      decoration: InputDecoration(
          icon: new Icon(
            Icons.bungalow_rounded,
            color: Colors.black,
          ),
          hintText: "Ingrese su direccion",
          fillColor: Colors.black,
          filled: false),
    ),
  );
}

Widget registroPassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: new Icon(
            Icons.contact_support_rounded,
            color: Colors.black,
          ),
          hintText: "Ingrese su contraseña",
          fillColor: Colors.black,
          filled: false),
    ),
  );
}

Widget registroRePassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: new Icon(
            Icons.contact_support_rounded,
            color: Colors.black,
          ),
          hintText: "Vuelva a ingresar su contraseña",
          fillColor: Colors.black,
          filled: false),
    ),
  );
}

Widget registroCorreo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    child: TextField(
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
          icon: new Icon(
            Icons.account_circle_rounded,
            color: Colors.black,
          ),
          hintText: "Vuelva a ingresar su correo",
          fillColor: Colors.black,
          filled: false),
    ),
  );
}

Widget btnIngresar() {
  return RaisedButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      onPressed: () {},
      child: Text(
        "Ingresar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

Widget btnCancelar() {
  return RaisedButton(
      color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      onPressed: () {},
      child: Text(
        "Cancelar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}