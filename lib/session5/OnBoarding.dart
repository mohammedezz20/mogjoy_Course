import 'package:flutter/material.dart';

void main() {
  runApp(MobJoyOnboardingApp());
}

class MobJoyOnboardingApp extends StatelessWidget {
  const MobJoyOnboardingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MobJoyOnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MobJoyOnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final subjects = ['Welcome to MobJoy', 'Flutter Development', 'Kotlin Development'];
    return OnboardingPageView(subjects: subjects);
  }
}

class OnboardingPageView extends StatelessWidget {
  final List<String> subjects;

  const OnboardingPageView({required this.subjects});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();

    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return buildOnboardingPage(context, subjects[index], index, _pageController);
        },
      ),
    );
  }

  Widget buildOnboardingPage(BuildContext context, String subject, int index, PageController pageController) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/1.jpg',
          fit: BoxFit.fitHeight,
          width: double.infinity,
          height: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (index > 0) const SizedBox(height: 200),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                height: 50,
                width: 350,
                child: Center(
                  child: Text(
                    '$subject',
                    style: const TextStyle(
                      color: Colors.purple,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (index == 0)
                Column(
                  children: [
                    Text(
                      'It\'s time to know all about MobJoy technologies and courses!',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        if (index < subjects.length - 1) {
                          pageController.animateToPage(
                            index + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 60),
                        primary: Colors.purple,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Get Started', style: TextStyle(fontSize: 20.0)),
                    ),
                  ],
                ),
              if (index == 1)
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'Level ${index + 1}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (index == 2)
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Card(
                              margin: const EdgeInsets.only(bottom: 10),
                              color: Colors.white,
                              child: ListTile(
                                title: Text(
                                  'Level ${index + 1}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}