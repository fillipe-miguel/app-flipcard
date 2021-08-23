import 'package:flutter/material.dart';
import 'package:trabalho_flipcard/views/tela_cartao_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController txtnome = TextEditingController();


  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          title: Text("Digite seu nome!"),
          content: Text("Digite o seu nome no campo de texto!"),
          actions: <Widget>[
            // define os botões na base do dialogo
             TextButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void salvar(){
    String nome;
    setState(() {
      nome = txtnome.text;
      if(nome == ""){
        _showDialog();
      }
      else if(nome.isNotEmpty) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TelaDoCartao(nome)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe9dbff),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.credit_card),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Cartonizador 3000"),
            ),
          ],
        ),
      ),
      
      body: Column(
        children: [
          Center(
            child:
            SizedBox(

                child: Image.asset("../assets/images/logo.png")
            ),
          ),

          Container(
            width: 250,
            child: TextField(
              controller: txtnome,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border:  OutlineInputBorder(),
                  labelText: "Digite seu nome aqui:"
              ),
            ),
          ),

          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 70),
                  primary: Color(0xff7e57c2),
                  elevation: 20,
                  shadowColor: Color(0xff7e57c2),
                ),
                child: Text('Salvar!'),
                onPressed: salvar,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
