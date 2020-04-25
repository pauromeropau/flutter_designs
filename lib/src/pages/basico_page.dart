import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0);
  final estiloSubtitulo = TextStyle(fontSize: 16.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://images.unsplash.com/photo-1448375240586-882707db888b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Sunt in sit amet commodo laborum nostrud magna mollit ex tempor.',
                      style: estiloTitulo,
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'Ad elit elit proident officia Lorem do do ipsum ut.',
                      style: estiloSubtitulo,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.star,
                size: 30.0,
              ),
              Text(
                '41',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'call'),
        _accion(Icons.near_me, 'route'),
        _accion(Icons.share, 'share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.black,
          size: 30.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.black),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Text(
        'Magna ea aute elit do ea irure consequat nulla id sint tempor cupidatat irure. Mollit est cupidatat occaecat culpa non aute incididunt eiusmod ut labore fugiat aliqua. Proident nisi voluptate enim ut veniam anim. Commodo adipisicing deserunt proident incididunt aute sunt. Sit duis laborum incididunt officia et veniam cupidatat officia.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
