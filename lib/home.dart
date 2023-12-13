import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sonus99/default_scaffold.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }

}
class _HomeState extends State<HomePage>{
  String answer = "Hey,\nSonus99 hier. Frage mich, was dein Herz begehrt :D";

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
        disableScroll: true,
        title: "Sonus99",
        child:


  Column(
    children: [
      Expanded(
        child: Align(
          alignment: FractionalOffset.bottomCenter,
          child:
          Column(
            mainAxisSize: MainAxisSize.min,  // Wichtig: Setzen Sie dies auf 'min'
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(children: [
                  Padding(padding: EdgeInsets.all(20),
                    child:
                    Text(answer),)
                ],),
              ),
              GestureDetector(
                onTap: (){
                  get_quote();
                },
                child: Image.asset("assets/sonus.png"),

              )

            ],
          )
          ,
        ),
      )
    ],
  )    );
  }

  get_quote(){
    var answers  = [
      // Positive Antworten
      "Sicherlich",
      "Auf jeden Fall!",
      "Ja, absolut",
      "Kein Zweifel daran",
      "Es sieht gut aus",
      "Ja, ohne Frage",
      "Ganz bestimmt",
      "Ja, in jeder Hinsicht",
      "Zweifellos",
      "Sehr wahrscheinlich",

      // Neutrale Antworten
      "Vielleicht",
      "Nicht sicher, versuch es später",
      "Kann jetzt nicht vorhersagen",
      "Frag später nochmal",
      "Unklar, bitte warte",

      // Negative Antworten
      "Sieht schlecht aus",
      "Würde nicht darauf zählen",
      "Meine Antwort ist Nein",
      "Sehr zweifelhaft",
      "Definitiv nein",

      // Zusätzliche Antworten
      "Es ist kompliziert",
      "Besser, es dir jetzt nicht zu sagen",
      "Konzentriere dich und frag erneut",
      "Glaube nicht alles, was du hörst",
      "Vertraue deinem Bauchgefühl",
      "Frag jemand anderen",
      "Sieht vielversprechend aus",
      "Meine Quellen sagen Nein",
      "Meine Quellen sagen Ja",
      "Schwer zu sagen",
      "Das ist ein Geheimnis",
      "Ich kann das jetzt nicht beantworten",
      "Zeichen deuten auf Ja",
      "Sei nicht so sicher",
      "Ich würde nicht darauf wetten",
      "Du wirst es selbst sehen",
      "Könnte in beide Richtungen gehen",
      "Die Sterne sind nicht ausgerichtet",
      "Versuch es erneut",
      "Nicht in nächster Zeit",
      "Du wirst überrascht sein",
      "Das wird dir Glück bringen",
      "Erwartet ein unerwartetes Ergebnis",
      "Du wirst enttäuscht sein",
      "Gut, aber nicht perfekt",
      "Du wirst es nicht bereuen",
      "Bleib skeptisch",
      "Das hängt von dir ab",
      "Das ist unwahrscheinlich",
      "Hört sich gut an",
      "Das würde ich nicht tun",
      "Das sieht nicht gut aus",
      "Du wirst es nicht mögen",
      "Frag deine Mutter",
      "Frag deinen Vater",
      "Warum auch nicht?",
      "Vergiss es",
      "Es könnte schlimmer sein",
      "Es könnte besser sein",
      "Lieber nicht",
      "Tue es",
      "Warum fragst du mich?",
      "Vertraue dir selbst",
      "Folge deinem Herzen",
      "Das ist riskant",
      "Das ist eine sichere Sache",
      "Du solltest warten",
      "Zeit wird es zeigen",
      "Das hängt vom Timing ab",
      "Das ist unvermeidlich",
      "Das ist vermeidbar",
      "Ich würde darauf zählen",
      "Das wird teuer",
      "Das ist ein Schnäppchen",
      "Du wirst es nicht glauben",
      "Das wird Spaß machen",
      "Das wird Arbeit sein",
      "Das wird Anstrengung erfordern",
      "Das wird leicht sein",
      "Das wird kompliziert sein",
      "Es ist unentschieden",
      "Das ist ein schlechter Plan",
      "Das ist ein guter Plan",
      "Das wird dich überraschen",
      "Das wird offensichtlich sein",
      "Das ist eine Grauzone",
      "Das ist schwarz und weiß",
      "Das ist unklar",
      "Das ist klar wie Kloßbrühe",
      "Zu früh, um zu sagen",
      "Zu spät, um zu ändern",
      "Das ist nicht ratsam",
      "Das ist ratsam",
      "Das ist verhandelbar",
      "Das ist nicht verhandelbar",
      "Nimm dir Zeit zum Überlegen",
      "Das ist es nicht wert",
      "Das ist es absolut wert",
      "Das ist zeitkritisch",
      "Das ist zeitlos",
      "Du wirst es herausfinden",
      "Das ist unberechenbar",
      "Das ist vorhersehbar",
      "Du wirst lachen",
      "Du wirst weinen"
    ];

    setState(() {
      int randomIndex = Random().nextInt(answers.length);
      answer = answers[randomIndex];
    });
  }

}

