import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF1f1f1f),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      width: 40,
                      child: Image.network(
                          "https://em-content.zobj.net/source/apple/118/ghost_1f47b.png"),
                    ),
                    const Icon(
                      Icons.add,
                      size: 35,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'MONDAY 16',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'TODAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.pink,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '17 18 19 20 21 22 23 24 25 26 27 28 29 30',
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CardWidget(
                  cardColor: Color(0xfffef754),
                  startHour: '11',
                  startMin: '30',
                  endHour: '12',
                  endMin: '20',
                  title: 'DESIGN\nMEETING',
                  name: [
                    'ALEX',
                    'HELENA',
                    'NANA',
                  ],
                  boldNameFlags: [
                    false,
                    false,
                    false,
                    false,
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CardWidget(
                  cardColor: Color(0xFF9c6bce),
                  startHour: '12',
                  startMin: '35',
                  endHour: '14',
                  endMin: '10',
                  title: 'DAILY\nPROJECT',
                  name: [
                    'ME',
                    'RICHARD',
                    'CIRY',
                    'HJ',
                    'NICO',
                    '12345',
                    'Radiogaga',
                  ],
                  boldNameFlags: [
                    true,
                    false,
                    false,
                    false,
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CardWidget(
                  cardColor: Color(0xFFbcee4b),
                  startHour: '15',
                  startMin: '00',
                  endHour: '16',
                  endMin: '30',
                  title: 'WEEKLY\nPLANNING',
                  name: [
                    'DEN',
                    'NANA',
                    'MARK',
                  ],
                  boldNameFlags: [
                    false,
                    false,
                    false,
                    false,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Card 위젯 만들기
class CardWidget extends StatelessWidget {
  final Color cardColor;
  final String startHour, startMin, endHour, endMin, title;
  final List<String> name; // 하단 이름들
  final List<bool> boldNameFlags;

  final Color normalNameColor = Colors.black26;

  const CardWidget({
    super.key,
    required this.cardColor,
    required this.startHour,
    required this.startMin,
    required this.endHour,
    required this.endMin,
    required this.title,
    required this.name,
    required this.boldNameFlags,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 392,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0, 10),
              child: Row(
                children: [
                  Transform.translate(
                    offset: const Offset(0, 5),
                    child: Column(
                      children: [
                        Text(
                          startHour,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          startMin,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          '|',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          endHour,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          endMin,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.w400,
                          height: 0.8,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Text(
                  name[0],
                  style: TextStyle(
                    color: boldNameFlags[0] ? Colors.black : normalNameColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  name[1],
                  style: TextStyle(
                    color: boldNameFlags[1] ? Colors.black : normalNameColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  name[2],
                  style: TextStyle(
                    color: boldNameFlags[2] ? Colors.black : normalNameColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  name.length > 3 ? '+${name.length - 3}' : '',
                  style: TextStyle(
                    color: boldNameFlags[3] ? Colors.black : normalNameColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
