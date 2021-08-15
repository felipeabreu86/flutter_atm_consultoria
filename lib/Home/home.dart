import 'package:flutter/material.dart';
import 'package:flutter_atm_consultoria/Cliente/cliente.dart';
import 'package:flutter_atm_consultoria/Contato/contato.dart';
import 'package:flutter_atm_consultoria/Empresa/empresa.dart';
import 'package:flutter_atm_consultoria/Servico/servico.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEmpresa() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Empresa(),
      ),
    );
  }

  void _abrirServico() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Servico(),
      ),
    );
  }

  void _abrirCliente() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Cliente(),
      ),
    );
  }

  void _abrirContato() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Contato(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "ATM Consultoria",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 80),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: _abrirEmpresa,
                          child: Image.asset("assets/images/menu_empresa.png"),
                        ),
                        GestureDetector(
                          onTap: _abrirServico,
                          child: Image.asset("assets/images/menu_servico.png"),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: _abrirCliente,
                        child: Image.asset("assets/images/menu_cliente.png"),
                      ),
                      GestureDetector(
                        onTap: _abrirContato,
                        child: Image.asset("assets/images/menu_contato.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
