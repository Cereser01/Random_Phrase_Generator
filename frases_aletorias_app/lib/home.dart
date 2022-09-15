import 'package:flutter/material.dart';
import "dart:math";

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> listaFrases = [
    "what’s crackin little bitches",
    "Br 153 é a rodovia do diabo",
    "Society is not all bad, we got music and bloodsports",
    "Nothing a little bit of cocaine won’t fix",
    "Follow the Pope on Twitter to spend less time on purgatory.",
    "Celular phones will not give you cancer, only hepatites.",
    "The first commercial airline flight took to the air in 1914. Everyone involved screamed the entire way.",
    "In 1948, at the request of a dying boy, baseball legend Babe Ruth ate seventy-five hot dogs, then died of hot dog poisoning.",
    "89% of magic tricks are not magic. Technically, they are sorcery.",
    "At some point in their lives 1 in 6 children will be abducted by the Dutch",
    "Like most things he did, Lincoln freed the slaves while sleep waking, and later had no memory of the event.",
    "Halley's Comet can be viewed orbiting earth every 76 years, for the other 75, it retreats to the heart of the Sun, where it hibernates undisturbed.",
    "While the submarine is vastly superior to the boat in every way, over 97% of people use boats for aquatic transportation",
    "Marie Curie invented the theory of radioactivity, the treatment of radioactivity, and dying of radioactivity.",
    "My fellow scientist, have you considered rejecting humanity, and returing to monkey? Food for thought.",
    "beat me with bars of soap in tube socks",
    "If you live with apes man, it's hard to be clean",
    "Somos Brasileiros! Vamos à luta, filhos da p-pátria!",
    "Sometimes all a man needs is a chrome pimpmobile",
    "Life is unpredictable. Cult management is hard.",
    "Todo mundo toma banho usando porra de macaco",
    "Studies have shown that seals react very positevely to blackface",
    "Tua perna parece a perna de uma mesa",
    "Download: Free Bee Movie XxX deleted scenes HD 4K (2022, Big Ounce edition No Virus) !",
    "let's eat gem stones and listen to old school black metal at the river together",
    "While you were wasting time counting sheep, I was training. Studying the pond. Counting the numerous bass I caught. Only to release them for tomorrow, when I start the cycle over",
    "Of course I don't sleep I got fish to catch",
    "Já matei 8 pessoas e enterrei ali no mato! Kkkk brincadeira xD to zoando xP",
    "Eu tinha é claro, princípios, como o que a mulher dos amigos era sagrada. Por isso, simplesmente cessava dias antes, a amizade com os maridos",
    "We are only born hating the Fr*nch. Everything else is acquired.",
    "eat plastic bags so turtles dont need to",
    "Three can keep a secret if two are dead",
    "Hard times calls for hard men to make hard choices while hard.",
    "Splice my genes daddy",
    "a prostata do Ciro Gomes tem tudo para solucionar os problemas desse pais",
    "why don't you peel off your skin? go ahead. peel it off",
    "tudo branco e pastoso pode ser considerado catupiry",
    "Tudo pode ser pastel de frango, basta o tempero correto",
    "dance like a lunatic on the sidewalk",
    "Italians heard of noodles from the chinese, removed the dog, and created pasta.",
    "not knowing you're retarded helps with confidence",
    "Therapists are for losers, real men kill themselves when something doesn't go their way",
    "cause emotional trauma to random people on the streets by any means necessary",
    "When two men swordfight in the shower, the winner strikes first",
    "the only cure for being french is euthanasia. unfortunately most french people choose to instead live in france.",
    "Does the Pope shit in the woods?",
    "i hope everyone whos happier than me gets hit by a truck",
    "Respeite os chineses e não conhecerás a mulher motoca",
    "Let's eat trash and get hit by a car",
    "Praying on someone's downfall isn't enough, I need to participate in it",
    "Hey kids! Homework stinks! Now lets do something relatable like the macarena",
    "sausages, which is all the parts of meat they don't put in dog food.",
    "Shotguns are such diverse platforms, used by breachers, duck hunters and sad musicians everywhere"
    ];

  final List<String> listaAutores = [
    "Albert Einstein",
    "Karl Marx",
    "Vinícius Pacheco",
    "Bruno Ceresér",
    "Platão",
    "Diógenes",
    "Sigmund Freud",
    "Aristóteles",
    "Barack Obama",
    "Rei Charles III",
    "Luis IVX",
    "Adolf Hitler",
    "Manfred Heil Junior",
    "Kurt Cobain",
    "Martin Luther King",
    "Lionel Messi",
    "Martin Luther",
    "Papa Francisco",
    "Vladmir Putin",
    "Mao Tse Tung",
    "Kim Jong Un",
    "Luis Inácio Lula da Silva",
    "Jair Messias Bolsonaro",
    "Roberto Carlos",
    "Madre Teresa de Calcutá",
    "Jesus Cristo",
    "Leonardo Da Vinci",
    "Luana Ceresér",
    "Martim Raeder",
    "Jaisson Potrich dos Reis",
    "Kanye West",
    "Raul Seixas"
  ];

  var _random = Random();
  var _previous;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text("Gerador de Frases Aletórias"),
          backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [

              Container(
                //Frase aleatória
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "''" + listaFrases[_random.nextInt(listaFrases.length)] + "''",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  "- " + listaAutores[_random.nextInt(listaAutores.length)],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),

                ),

              ),


              Container(
                //Botão de mudar de frase
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _random = Random();
                    });
                  },
                  child: const Text("Nova frase"),
                ),
              ),

            ],
          )
        ),
      ),
    );
  }
}
