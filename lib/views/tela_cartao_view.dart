import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class TelaDoCartao extends StatefulWidget {

   String nome;
   TelaDoCartao(this.nome);

  @override
  _TelaDoCartaoState createState() => _TelaDoCartaoState();
}

class _TelaDoCartaoState extends State<TelaDoCartao> {


  _renderCard(BuildContext context){
    return Container(
      height: 250,
      width: 350,
      child: Card(
        elevation: 0.0,
        color: Color(0xFFe9dbff),
        child: FlipCard(
          flipOnTouch: true,
          direction: FlipDirection.VERTICAL,
          speed: 1000,
          front: _renderFront(),
          back: _renderBack(),
        ),
      ),
    );
  }

  _renderBack(){
    return Container(
      decoration: BoxDecoration(color: Color(0xFF4d2b90), borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(color: Colors.black),
            ),
          ),

          Container(

            height: 25,
            width: 300,
            decoration: BoxDecoration(color: Colors.white70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("152 ",style: TextStyle(
                  fontSize: 13,
                  fontStyle: FontStyle.italic,
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }

  _renderFront(){
    return Container(
      decoration: BoxDecoration(color: Color(0xFF4d2b90), borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Row(
              children: [
                Container(
                    height: 70,
                    width: 70,
                    child: Image.asset("../assets/images/logo_card.png")
                ),


                Text("  Cartão 3000",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 45, top: 20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("../assets/images/chip.png"),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Container(
                    height: 70,
                    width: 70,
                    child: Image.asset("../assets/images/logo_master.png"),
                  ),
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 28, bottom: 10,),
            child: Row(
              children: [
                Text("5150  4432  3883  7875",style: TextStyle(
                  letterSpacing: 4,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 90),
                child: Text('${widget.nome}',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),),
              ),
              Text("06/28",style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),)
            ],
          ),


        ],
      ),
    );
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

      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Column(
            children: [
              _renderCard(context),
            ],
          ),
        ),
      ),
    );
  }
}
