// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors, non_constant_identifier_names

//import 'package:cloud_firestore/cloud_firestore.dart'
    //show FirebaseFirestore, QuerySnapshot;
import 'package:flutter/material.dart';
import 'dart:core';
class ViewPost extends StatefulWidget {
  const ViewPost({Key? key}) : super(key: key);

  @override
  State<ViewPost> createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  var conteudo;

  
//--------------------widget buid----------------------------
  @override
  Widget build(BuildContext context) {

    final data = ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>  ;

   
    String titulo_pub = data['titulo_pub'];
    String subtitulo_pub = data['subtitulo_pub'];
    String autor_pub = data['autor_pub'];
    String texto = data['texto'];
    

    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            Container(
              child: Column(children: [
                Column(
                  children: [
                    Container(
                      child: Text(
                        titulo_pub,
                        style: TextStyle(height: 5, fontSize: 25),
                      ),
                    ),
                    Container(
                      child: Text(
                        subtitulo_pub,
                        style: const TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 16),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        border: Border.all(
                          color: Colors.transparent,
                          width: 7,
                        ),
                      ),
                      child: Text(
                        texto,
                        style: const TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 16),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        border: Border.all(
                          color: Colors.transparent,
                          width: 7,
                        ),
                      ),
                      child: Text(
                        autor_pub,
                        style: const TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 16, color: Colors.deepOrangeAccent),
                      ),
                    ),
                  ],
                ),
                Row(
                  // LINHA COM BOTOES DE AÇÃO
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 202, 77, 61),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  ),
                  child: Text('voltar'),
                        onPressed: () {
                          Navigator.pop(context);
                        }, 
                        
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      );
    
  }
}
