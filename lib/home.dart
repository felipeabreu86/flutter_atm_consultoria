import 'package:flutter/material.dart';
import 'package:flutter_atm_consultoria/telaCliente.dart';
import 'package:flutter_atm_consultoria/telaContato.dart';
import 'package:flutter_atm_consultoria/telaEmpresa.dart';
import 'package:flutter_atm_consultoria/telaServico.dart';
import 'package:flutter_atm_consultoria/util/enums.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _tituloEmpresa = "ATM Consultoria";

  void _abrirTela(Telas telaEscolhida) {
    switch (telaEscolhida) {
      case Telas.empresa:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaEmpresa(),
          ),
        );
        break;
      case Telas.servico:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaServico(),
          ),
        );
        break;
      case Telas.cliente:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaCliente(),
          ),
        );
        break;
      case Telas.contato:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaContato(),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          _tituloEmpresa,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(42),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => _abrirTela(Telas.empresa),
                      child: Image.asset("images/menu_empresa.png"),
                    ),
                    GestureDetector(
                      onTap: () => _abrirTela(Telas.servico),
                      child: Image.asset("images/menu_servico.png"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => _abrirTela(Telas.cliente),
                      child: Image.asset("images/menu_cliente.png"),
                    ),
                    GestureDetector(
                      onTap: () => _abrirTela(Telas.contato),
                      child: Image.asset("images/menu_contato.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
