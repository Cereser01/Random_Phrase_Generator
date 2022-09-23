import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import "dart:math";
import 'clouds.dart';

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> listaFrases = [

    "Bem vindo ao gerador de frases aleatórias."

  ];

  List<String> listaAutores = [

    "Bruno Ceresér"

  ];

  List<String> listaFrasesNormal = [

    "O homem não é mais do que a série dos seus atos.",
    "Toda reforma interior e toda mudança para melhor dependem exclusivamente da aplicação do nosso próprio esforço.",
    "Cada qual sabe amar a seu modo; o modo pouco importa; o essencial é que saiba amar.",
    "O homem não é nada além daquilo que a educação faz dele.",
    "O conhecimento serve para encantar as pessoas. Não para humilhá-las.",
    "As raízes da educação são amargas, mas o fruto é doce.",
    "A educação é a arma mais poderosa que você pode usar para mudar o mundo.",
    "A única pessoa livre é aquela que não tem medo do ridículo.",
    "Às vezes ouço passar o vento; e só de ouvir o vento passar, vale a pena ter nascido.",
    "Deixa-te disso criança, deixa de orgulho, sossegas, não vês que a vida é um oceano por onde o acaso navega.",
    "A gente foge da solidão quando tem medo dos próprios pensamentos.",
    "A arte existe porque a vida não basta.",
    "Podemos julgar o coração de um homem pela forma como ele trata os animais.",
    "Democracia é oportunizar a todos o mesmo ponto de partida. Quanto ao ponto de chegada, depende de cada um.",
    "A amizade é semelhante a um bom café; uma vez frio, não se aquece sem perder bastante do primeiro sabor.",
  ];

  List<String> listaAutoresNormal = [
    "Georg Wilhelm Friedrich Hegel",
    "Immanuel Kant",
    "Machado de Assis",
    "Immanuel Kant",
    "Mário Sérgio Cortella",
    "Aristóteles",
    "Nelson Mandela",
    "Luis Fernando Veríssimo",
    "Fernando Pessoa",
    "Gonçalves Dias",
    "Érico Veríssimo",
    "Ferreira Gullar",
    "Immanuel Kant",
    "Fernando Sabino",
    "Immanuel Kant",
  ];

   List<String> listaFrasesDoidao = [
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
    "Shotguns are such diverse platforms, used by breachers, duck hunters and sad musicians everywhere",
    "HIV is a small price to pay for free needles",
    "Hitler: Don't glorify what he was from the start, but aspire to be like what he was in the end. Dead.",
    "If I was a car I bet I would be a good car and that's what tortures me",
    "You're one of the lucky ones. You're a good guy. There's still time for you. You go get your hot wife. Go back to Siberia. Live in the mountains or something. Live a peaceful life. Worldly possessions are a scourge on mankind. A scourge.",
    "We all got a chicken-duck-woman-thing waiting for us",
    "I post the frog",
    "Me tornei ingovernável, morbei nas calças",
    "a chinese fish looks like penis",
    "cuidado que é cabo da intranet chins comunista o chi jipinyg vai robar seus dados pra vender pro kim jon umg cuidado",
    "FUCK CANCER, CRANK HOG!!!!AAARROOOOOOOO!!!!",
    "You need to learn a practical artistic skill. Consider pottery.",
    "all day I dream about meeting the one and only Dr. Michael 'Morbucks' Morbius, creator of the fortnite vbuck",
    "We hold these truths to be self-evident, that all men are created equal except the French",
    "Air pumps now cost RS3,00 more. That's the price of inflation.",
    "This country used to mean something, but we lost our way and our customs. Fight for the freedom to sodomize trout .",
    "Mutt wiener is my master. But some times I can bait it into going to sleep.",
    "Yes, there are two sexes. The one I had with your mother and the one your mother had with me.",
    "Boomer jokes are back. I hate vegetables I hate my wife",
    "oof owie my nipple bones ooww",
    "This relatively cheap, mass produced product that is available at every department store defines me as a person.",
    "Anime? That's those shitty Chinese cartoons right?",
    "Life - a neverending cycle of snot redistribution.",
    "I get news from the only reliable source: cryptic symbolism in my dreams",
    "Yes, there are two sexes. The one I had with the Eiffel Tower and the one the Eiffel Tower had with me.",
    "Hold on, i think my dog is on fire gotta go",
    "Your PC has been Anschlussed. Do you want to send bug report to Windows?",
    "He could be a criminal, a drug addict, a kingpin or worse... french.",
    "Men are their own worst enemies sometimes, but there is solace in the knowledge that at least we are not french.",
    "Naked bull man explodes. In Space.",
    "Dang, somebody sandpaper my cerebellum",
    "Saddam Hussein wrote a best selling erotic novel.",
    "Men are their own worst enemies in a different way from women being their own worst enemies. But they are also each other's enemies. Basically we are in Fortnite.",
    "Forget whoever you are and simply become a person named Jim",
    "Men have two moods: Automation and beating wildlife with stick",
    "Every time an old lady dies, a Jesus picture ends up in a Goodwill.",
    "According to Dante, the deepest levels of hell are Frozen (2013) from Walt Disney Animation Studios",
    "So apparently the bullying advice hotline is for 'Victims'.",
    "Listen, who hasn't done some fucked up shit in the Balkans?",
    "You don't have to treat them humanely if they aren't human.",
    "The Boston area is a pvp enabled zone",
    "o medo se apossou de minha alma, meu espirito treme, sinto como se fosse virar pó, assim como Adão se sentiu quando deus perguntou: e esse pau pra fora heim?",
    "Strive for excellence, score higher than average in your chromosome count.",
    "Therapists don't want you to know this, but the true cure for PTSD is autism",
    "How exactly do you get your balls into a blow dryer that’s 4 feet off the ground and 2 inches from a wall? Very carefully",
    "Behind every big man there is a big rat",
    "You are disturbingly susceptible to propaganda",
    "I would allow Garfield to kill me. His actions are, after all, completely justified. It was a Monday, after all.",
    "I need the looming threat of actual prison time to make me keep up with my dental hygiene",
    "Slapping ketchup does not hurt your hand",
    "Forget the past, embrace dementia.",
    "Sources have confirmed Jeff Bezos does not have a butthole, he pays someone to shit for him.",
    "I'd still rather be in a trench somewhere in Africa with an M1 taking pot-shots at Gestapo.",
    "O veio sabe que o mulek é o mulek dos troll e o mulek sabe que o veio é um veio esquisito, basicamente isso.",
    "Minecraft proves that abolishing child labour was a mistake. The children yearn for the mines.",
    "if I become pregnant late-game, the result'll be much better",
    "after a normal handshake just sniff your palm and give them a disgusted look so they think that their hands stink",
    "I don't believe in hell. People go to Minas Gerais when they die.",
    "Fuck political parties, I choose my candidates based on how tall they are.",
    "Children should remain in the mines unless summoned by the Overseers.",
    "people who think they know everything but really they've just been brainwashed by the rat race",
    "I love throwing rocked wrapped in copper wire at power lines!",
    "The thinking man knows that flinging your own shit like a distressed gorilla is erotic and makes her feel dominated.",
    "i'll be honest, my parents do NOT care for my frog postin'",
    "Fat people live near swamps. To lose weight simply move further away from your closest swamp.",
    "Being nice is fine, but don't only be nice. It's not a personality in itself. That's why im also racist",
    "I like to rhyme and commit crime",
    "Nihilism leads to life losing its meaning. Hedonism leads to pleasure losing its meaning. Only the twice tied cock shuffle leads to true happiness.",
    "The internet is a joke and we are the punchline. Man was destined for the inferno and yet by some act of cruelty or negligence, we have remained. Our days are numbered, and we will not be so lucky as to be given a quick death. Prepare to pog for the last time.",
    "Help! Someone please help! Dad fell into the cum shaft.",
    "If you see crayons do not eat them. They can be booby trapped so resist the urge to indulge in a 24 pack of deliciousness.",
    "Pepe is the original NFT. Rare, strange, collectable and useless.",
    "Aside for the internal problems of each country nothing really happens in South America, I guess that's why a lot of GAMERS who love GAMING MOMENTS move here",
    "William Shakespeare did not exist. His plays were masterminded in 1589 by Francis Bacon, who used an Ouija board to enslave play-writing ghosts.",
    "The Schrödinger's cat paradox outlines a situation in which a cat in a box must be considered, for all intents and purposes, simultaneously alive and dead. Schrödinger created this paradox as a justification for killing cats.",
    "and he turned himself into a featherless biped. Funniest shit I've ever seen",
    "Maurice, the chinese government has crippled my legs, i can no longer move it move it",
    "Did China put toxins in my cat food?",
    "Micheal Bay secretly microwaves his actors.",
    "Eccentricity can get you far in life, but dwarf owning can get you even farther.",
    "Detritus is a dish best served at the ambient temperature of the surrounding environment.",
    "Get your affairs in order. The time of reckoning is coming. Prepare to pog for the last time.",
    "Who needs a web browser anyway? Just curl the url and look at the raw html like a true unit",
    "Prison is full of people that have never rollerskated.",
    "Book a test drive in the all new Fiat Nutmobile today! Available in 1.8L petrol and 2.0 turbo diesel. Finance options available from 12% APR.",
    "You can be the one to milk what others find unmilkable",
    "A German Soldier refused to shoot a unarmed soldier during a one on one confrontation at the battle of the Somme. That soldier turned out to be Taylor Swift.",
    "Nietzsche once said that a man who has a why can bear almost anyhow. But a man who has a tungsten cube can bear any object less dense, and all this talk of why and how becomes unnecessary.",
    "If you do enough drugs, the limitations of being alive no longer exist and you can become the scariest bipedal creature for a solid 15 minutes until you die of total organ failure.",
    "We don't use numbers, numbers are for confusing the tax payer.",
    "hindsight highlights retardation",
    "Child Labor! Is it really labor if we don't pay?",
    "The mountains taught me to shit but the city forced me to wipe. It taught me more than the mountains ever could. Still, I dispose of the toilet paper in public spaces as my own way of giving back to the city. Confuscious would do the same.",
    "I think fortnite should add a pregnant female skin. Every kill she gets she slowly gives birth. When in water blood comes out. At 10 kills she gives birth and the baby can be your pet. Thoughts? Fortnite should hire me yo",
    "if i get a duped minigun ill take a spongebath and wont bite my mothers hand when she tries to clean me",
    "gata eu escorregaria num tobogã de gilete e cairia numa piscina de álcool só pra ouvir seu peido por um walkie-talkie",
    "A stag beetle has one goal in life: to stand alone on high branches and look down as a god. All in his path will be fought or fucked, and cast down from those lofty heights.",
    "Extended use of high-power assault rifles may cause heart attack, stroke, bloodlust and an unnatural attraction to seabirds.",
    "A man's value is not defined by how much money they make, but by how many black socks they own.",
    "The McDonald's ice cream machine isn’t broken. It’s being by the Illuminati used to power their bird drones.",
    "am I dislexic or am I having a stroke??",
    "shapeshifting is the best super power because you can have any haircut any time you want, you can turn into a hotter version of yourself, you can turn into a dragon, you can turn into a robot, you can turn into a shambling mound of abstract shapes and sulk outside your estranged father's house at night while chanting ominously about his sins",
    "In the event that the Vice-President becomes President, the vacancy created at Vice-President is automatically filled by Kim Jong Un and the ghost of Vladimir Lenin.",

    ];

  final List<String> listaAutoresDoidao = [
    "Albert Einstein",
    "Karl Marx",
    "Vinícius Pacheco",
    "Bruno Ceresér",
    "Platão",
    "Diógenes",
    "Sigmund Freud",
    "Aristóteles",
    "Barack Obama",
    "King Charles III",
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
    //"Luana Ceresér",
    //"Martim Raeder",
    "Jaisson Potrich dos Reis",
    "Kanye West",
    "Raul Seixas",
    "Bishop George Berkeley",
    "Garfield",
    "King Julian",
    "Kuzco",
    "Salvador Dalí",
    "Lady Gaga",
    //"Millie Bobby Brown",
    "Cleo Pires",
    "William Boner",
    "Jhonny Depp",
    "Quentin Tarantino",
    "James Bond",
    "Júlio Spezzia de Souza",
    "Mozart",
    "Gabriel, o Pensador",
    "Saddam Hussein",
    "Paulo Guedes",
    "Felipe Smith",
    "Vladmir Lenin",
    "Cazuza",
  ];

  var _oneshot = true;
  var _frase = 0;
  var _autor = 0;
  var _random = Random();
  var crazy = false;

  void NovaFrase(){

    Navigator.push(context, PageRouteBuilder(
      pageBuilder: (_,__,___) => Clouds(),
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
    ));

    Timer(const Duration(seconds: 1), () {
      Navigator.pop(context);
    });

    Timer(const Duration(seconds: 1),(){
      setState(() {

        if(_oneshot == true){
          listaAutoresDoidao.shuffle();
          listaFrasesDoidao.shuffle();
          _oneshot = false;
        }

        if(crazy == true){
          listaFrases = listaFrasesDoidao;
          listaAutores = listaAutoresDoidao;
        }else{
          listaFrases = listaFrasesNormal;
          listaAutores = listaAutoresNormal;
        }

      _random = Random();
      if (_frase < (listaFrases.length - 1) && _frase >= 0) {
        _frase += 1;
      }else{
        listaFrasesDoidao.shuffle;
        _frase = 0;
      }
      if (_autor < (listaAutores.length - 1) && _autor >= 0) {
        _autor += 1;
      }else{
        listaAutoresDoidao.shuffle;
        _autor = 0;
        }

    });
    });
    


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text("Gerador de Frases Aletórias"),
          actions: [ Row(children: [

            ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
                onPressed: (){NovaFrase();},
                child: const Text("Nova Frase")),

            FlutterSwitch(
              width: 125,
              activeText: "Doidão",
              inactiveText: "Normal",
              inactiveColor: Colors.blueAccent,
              activeColor: Colors.black,
              padding: 8.0,
              showOnOff: true,
              value: crazy,

              onToggle: (val){
                setState((){
                  if(crazy == true){
                    crazy = false;
                  }else{
                  crazy = true;
                  }
            });
            },
            )
          ],
          )
          ],
          //backgroundColor: Colors.grey,
      ),
      body:
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("nightsky.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [

              Container(
                //Frase aleatória
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  (
                  "''" + listaFrases[_frase] + "''"
                  ),//String
                  style: const TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  "- " + listaAutores[_autor],
                  style: const TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),

                ),

              ),


              /*Container(
                //Botão de mudar de frase
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: (){
                    NovaFrase();
                  },
                  child: const Text("Nova frase"),
                ),
              ),*/

            ],
          )
        ),
      ),
    );
  }
}
