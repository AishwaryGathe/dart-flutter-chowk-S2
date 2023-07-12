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
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFFFFFFFF),
                Colors.pink[100]!,
              ],
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LastPage())),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://avatars.githubusercontent.com/u/19914114?v=4')),
                      color: Colors.blue,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Hey I am Akshay',
                    style: TextStyle(
                      fontSize: 32,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const Text('I am a Flutter Developer'),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const SecondScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Second Screen'.toUpperCase(),
                      style: const TextStyle(
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
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'This is going to be a long text. My name is Iron Man. I have been seeing each other for the last 9 minutes. OMG.. wohoom This is going to be a long text. My name is Iron Man. I have been seeing each other for the last 9 minutes. OMG.. wohooThis is going to be a long text. My name is Iron Man. I have been seeing each other for the last 9 minutes. OMG.. wohooThis is going to be a long text. My name is Iron Man. I have been seeing each other for the last 9 minutes. OMG.. wohooThis is going to be a long text. My name is Iron Man. I have been seeing each other for the last 9 minutes. OMG.. wohoo',
                  style: TextStyle(
                    letterSpacing: 2.0,
                    height: 2.0,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: ElevatedButton(
                  onPressed: () async {
                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const ThirdScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Next Screen'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
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

//! With the whole page scrolling
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Technologies> techList = [
      Technologies(
        techName: 'Dart',
        techLogo: "assets/image 2.png",
      ),
      Technologies(
        techName: 'Figma',
        techLogo: "assets/image 11.png",
      ),
      Technologies(
        techName: 'Dart',
        techLogo: "assets/image 2.png",
      ),
      Technologies(
        techName: 'Figma',
        techLogo: "assets/image 11.png",
      ),
    ];

    List<PreviousExperiences> experienceList = [
      PreviousExperiences(
        companyName: 'LinkedIn India',
        jobProfile: 'jobProfile1',
        achievements: ['achievements1', 'achievements2', 'achievements3'],
        companyLogo: "assets/image 9.png",
      ),
      PreviousExperiences(
        companyName: 'Google',
        jobProfile: 'jobProfile2',
        achievements: ['achievements'],
        companyLogo: "assets/image 9.png",
      ),
      PreviousExperiences(
        companyName: 'Facebook',
        jobProfile: 'jobProfile3',
        achievements: ['achievements', 'achievements'],
        companyLogo: "assets/image 9.png",
      ),
      PreviousExperiences(
        companyName: 'Twitter',
        jobProfile: 'jobProfile4',
        achievements: ['achievements', 'achievements', 'achievements'],
        companyLogo: "assets/image 9.png",
      ),
      PreviousExperiences(
        companyName: 'companyName5',
        jobProfile: 'jobProfile5',
        achievements: ['achievements', 'achievements'],
        companyLogo: "assets/image 9.png",
      ),
      PreviousExperiences(
        companyName: 'companyName6',
        jobProfile: 'jobProfile6',
        achievements: ['achievements'],
        companyLogo: "assets/image 9.png",
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.lightBlue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  'Technologies I work with',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    itemCount: techList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red,
                                blurRadius: 5.0,
                                offset: Offset(
                                  3,
                                  3,
                                ),
                              )
                            ],
                          ),
                          height: 200,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 30,
                                  child: Image(
                                    image: AssetImage(
                                      techList[index].techLogo,
                                    ),
                                  ),
                                ),
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
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  'Previous Experience',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: experienceList.length,
                    itemBuilder: (context, mainIndex) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          height: 120,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Image(
                                  image: AssetImage(
                                      experienceList[mainIndex].companyLogo),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    experienceList[mainIndex].companyName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4.0,
                                    ),
                                    child: Text(
                                      experienceList[mainIndex].jobProfile,
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 200,
                                    child: ListView.builder(
                                      itemCount: experienceList[mainIndex]
                                          .achievements
                                          .length,
                                      padding: EdgeInsets.zero,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Text(
                                            '\t-${experienceList[mainIndex].achievements[index]}');
                                      },
                                    ),
                                  ),
                                ],
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

class PreviousExperiences {
  final String companyName;
  final String jobProfile;
  final List<String> achievements;
  final String companyLogo;

  PreviousExperiences({
    required this.companyName,
    required this.jobProfile,
    required this.achievements,
    required this.companyLogo,
  });
}

class Technologies {
  final String techName;
  final String techLogo;

  Technologies({required this.techName, required this.techLogo});
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.yellow[50]!],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
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
                        color: Colors.grey,
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
                        color: Colors.grey,
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
                        color: Colors.grey,
                      ),
                    ),
                    maxLines: 5,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(onPressed: () {}, child: const Text("SUBMIT")),
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
                            socialsList[index].photoLink,
                          )),
                        );
                      },
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

//! With the whole page scrolling
class ThirdScreenWholePageScrolling extends StatelessWidget {
  const ThirdScreenWholePageScrolling({super.key});

  @override
  Widget build(BuildContext context) {
    List<Technologies> techList = [
      Technologies(
        techName: 'Dart',
        techLogo: "assets/image 2.png",
      ),
      Technologies(
        techName: 'Figma',
        techLogo: "assets/image 11.png",
      ),
      Technologies(
        techName: 'Dart',
        techLogo: "assets/image 2.png",
      ),
      Technologies(
        techName: 'Figma',
        techLogo: "assets/image 11.png",
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.lightBlue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    'Technologies I work with',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red,
                                  blurRadius: 5.0,
                                  offset: Offset(
                                    3,
                                    3,
                                  ),
                                )
                              ],
                            ),
                            height: 200,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: 30,
                                    child: Image(
                                      image: AssetImage(
                                        techList[index].techLogo,
                                      ),
                                    ),
                                  ),
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
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    'Previous Experience',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          height: 100,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
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
                                  children: const [
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
