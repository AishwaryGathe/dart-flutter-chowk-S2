import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DFC Session 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.blue, Colors.black])),
          // width: MediaQuery.of(context).size.width,
          // color: Colors.green,
          child: Center(
            //TODO Using this widget and Container width size
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LastPage())),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://avatars.githubusercontent.com/u/19914114?v=4')),
                      color: Colors.blue,
                      // borderRadius: BorderRadius.all(Radius.circular(100.0)), //TODO First this
                    ),
                  ),
                ),
                Text(
                  'Hey I am Akshay',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text('I am a Flutter Developer'),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ThirdScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Resume'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'This is going to be a long text. My name is Iron Man. I have been seeing each other for the last 9 minutes. OMG.. wohoom This is going to be a long text. My name is Iron Man. I have been seeing each other for the last 9 minutes. OMG.. wohooThis is going to be a long text. My name is Iron Man. I have been seeing each other for the last 9 minutes. OMG.. wohooThis is going to be a long text. My name is Iron Man. I have been seeing each other for the last 9 minutes. OMG.. wohooThis is going to be a long text. My name is Iron Man. I have been seeing each other for the last 9 minutes. OMG.. wohoo',
                  style: TextStyle(
                    letterSpacing: 2.0,
                    height: 2.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Technologies> techList = [
      Technologies(techName: 'Dart'),
      Technologies(techName: 'Figma'),
      Technologies(techName: 'Java'),
      Technologies(techName: 'Dart'),
      Technologies(techName: 'Figma'),
      Technologies(techName: 'Java'),
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.lightBlue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Text(
                'Technologies I work with',
              ),
              Container(
                height: 120,
                child: ListView.builder(
                    itemCount: techList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            color: Colors.white,
                          ),
                          height: 200,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Image',
                              ),
                              Text(
                                techList[index].techName,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Text(
                'Previous Experience',
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          height: 100,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Image',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Linkedin India',
                                    ),
                                    Text(
                                      'Software Developer Intern',
                                    ),
                                    Text(
                                      '\t- Hello',
                                    ),
                                    Text(
                                      '\t- Hello',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Technologies {
  final String techName;

  Technologies({required this.techName});
}

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Socials> socialsList = [
      Socials(
          name: "Instagram",
          photoLink: "assets/image 7.png",
          link: "https://github.com/"),
      Socials(
          name: "Twitter",
          photoLink: "assets/image 8.png",
          link: "https://github.com/"),
      Socials(
          name: "LinkedIn",
          photoLink: "assets/image 9.png",
          link: "https://github.com/"),
      Socials(
          name: "GitHub",
          photoLink: "assets/image 5.png",
          link: "https://github.com/"),
      Socials(
          name: "Discord",
          photoLink: "assets/image 10.png",
          link: "https://github.com/"),
    ];
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.lightBlue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                "Keep in Touch !",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 70,
                width: 307,
                child: Text(
                  "If you have anything to share, go ahead! It could be any joke/funny stuff or any advice. Currently, I am also open for projects. So yeah just enter details and hit that huge submit button.",
                  maxLines: 4,
                ),
              ),
              // name
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 5),
                width: 307,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "I am excited to know your name !",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.white38,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // email id
              Container(
                padding: const EdgeInsets.only(left: 5),
                width: 307,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Email ID",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.white38,
                    ),
                  ),
                ),
              ),
              // message
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(left: 5),
                width: 307,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Your sweet/sour message...",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.white38,
                    ),
                  ),
                  maxLines: 5,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(onPressed: () {}, child: const Text("Send it !")),
              const SizedBox(height: 50),
              const Text(
                "Let's connect",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),
              Center(
                child: SizedBox(
                  height: 60,
                  child: ListView.builder(
                    itemCount: socialsList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => socialsList.elementAt(index).link,
                        child: Image(
                            image: AssetImage(
                          socialsList.elementAt(index).photoLink,
                        )),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Socials {
  final String name;

  final String photoLink;
  final String link;

  Socials({
    required this.name,
    required this.photoLink,
    required this.link,
  });
}
