import 'package:flutter/material.dart';

class HowScreen extends StatelessWidget {
  const HowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            "How to use AquaLens?",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 80,
          ),
          ...List.generate(texts.length, (int index) {
            return ListTile(
              minVerticalPadding: 20,
              leading: Container(
                height: 70,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor),
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(
                texts[index][0],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(texts[index][1]),
            );
          }),
          const Spacer(),
          SizedBox(
            width: 300,
            child: FilledButton.icon(
                icon: const Icon(Icons.arrow_forward_sharp),
                onPressed: () {},
                label: const Text(
                  "Next",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }
}

final texts = [
  [
    'Prepare Your Environment',
    "Make sure you have enough light, and you are close enough to the object ",
  ],
  [
    "Take A Picture",
    "Ensure that the microplastics are as visible as poss in your image"
  ],
  [
    "Let Us Do The Work",
    'Our state-of-the-art model will detect and quantify all the microplastics',
  ]
];

  // ListTile(
  //           title: const Text("Prepare Your Environment"),
  //           subtitle: Text(
  //             'Make sure you have enough light, and you are close enough to the object ',
  //             style: Theme.of(context).textTheme.labelSmall,
  //           ),
  //           leading: Container(
  //             height: 70,
  //             width: 70,
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 color: Theme.of(context).primaryColor),
  //             child: const Text(
  //               '1',
  //               style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 30,
  //         ),
  //         ListTile(
  //           title: const Text("Take A Picture"),
  //           subtitle: Text(
  //             'Ensure that the microplastics are as visible as poss in your image',
  //             style: Theme.of(context).textTheme.labelSmall,
  //           ),
  //           trailing: Container(
  //             height: 70,
  //             width: 70,
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 color: Theme.of(context).primaryColor),
  //             child: const Text(
  //               '2',
  //               style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 30,
  //         ),
  //         ListTile(
  //           title: Text(
             
  //             style: Theme.of(context).textTheme.titleLarge,
  //           ),
  //           subtitle: Text(

  //             style: Theme.of(context).textTheme.labelSmall,
  //           ),
  //           leading: Container(
  //             height: 70,
  //             width: 70,
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 color: Theme.of(context).primaryColor),
  //             child: const Text(
  //               '3',
  //               style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         ),