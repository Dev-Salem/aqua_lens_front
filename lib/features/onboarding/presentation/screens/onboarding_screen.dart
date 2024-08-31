import 'package:aqua_lens/features/onboarding/presentation/screens/how_screen.dart';
import 'package:aqua_lens/features/onboarding/presentation/widgets/how_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;
//   @override
//   void initState() {
//     _controller = AnimationController(vsync: this);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       alignment: Alignment.center,
//       children: [
//         Image.asset(
//           'assets/background.jpg',
//           height: double.infinity,
//           fit: BoxFit.fitHeight,
//         ),
//         ...[
//           Positioned(
//             right: 10,
//             child: Text(
//               "LENS",
//               style:
//                   GoogleFonts.lato(fontSize: 55, fontWeight: FontWeight.bold),
//             )
//                 .animate(delay: 600.ms)
//                 .scaleXY(
//                     begin: 0,
//                     end: 1.1,
//                     curve: Curves.easeInOutCubic,
//                     duration: 800.ms)
//                 .then(delay: 75.ms)
//                 .scaleXY(begin: 1.2, end: 1),
//           ),
//           Positioned(
//               height: 290,
//               child: Transform.rotate(
//                 angle: 0.3,
//                 child: Image.asset(
//                   'assets/bottle.png',
//                 ),
//               )
//                   .animate(delay: 300.ms)
//                   .scaleXY(
//                       begin: 0,
//                       end: 1.1,
//                       curve: Curves.easeInOutCubic,
//                       duration: 800.ms)
//                   .then(delay: 75.ms)
//                   .scaleXY(begin: 1.2, end: 1)
//                   .then(delay: 500.ms)
//                   .shake(
//                     hz: 3,
//                   )
//                   .shimmer()),
//           Positioned(
//               left: 10,
//               child: Text(
//                 "AQUA",
//                 style:
//                     GoogleFonts.lato(fontSize: 55, fontWeight: FontWeight.bold),
//               )
//                   .animate()
//                   .scaleXY(
//                       begin: 0,
//                       end: 1.1,
//                       curve: Curves.easeInOutCubic,
//                       duration: 800.ms)
//                   .then(delay: 75.ms)
//                   .scaleXY(begin: 1.2, end: 1))
//         ],
//         ...[
//           const Positioned(
//               bottom: 70,
//               child: Text(
//                 "Microplastics, Detected, Defeated.",
//                 style: TextStyle(
//                     color: Colors.white,
//                     letterSpacing: 2,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w600),
//               )),
//           Positioned(
//               bottom: 20,
//               width: 300,
//               child: FilledButton.icon(
//                   icon: const Icon(Icons.arrow_forward_sharp),
//                   onPressed: () {
//                     _controller.forward();
//                     Future.delayed(400.ms, () {
//                       Navigator.of(context).push(PageRouteBuilder(
//                           transitionDuration: 0.ms,
//                           pageBuilder: (context, _, __) {
//                             return const HowScreen();
//                           }));
//                     });
//                   },
//                   label: const Text(
//                     "Get Started",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ))),
//         ].animate(delay: 1500.ms, interval: 200.ms).slideY(
//             curve: Curves.easeInOutCubic, begin: 5, end: 0, duration: 900.ms)
//       ],
//     )
//             .animate(autoPlay: false, controller: _controller)
//             .fadeOut(begin: 1, duration: 500.ms, curve: Curves.easeInOutBack)
//             .scaleXY(begin: 1, end: 0.5));
//   }
// }
/*
.shimmer(delay: 4000.ms, duration: 1800.ms)     // shimmer +
  .shake(hz: 4, curve: Curves.easeInOutCubic)     // shake +
  .scale(begin: 1.0, end: 1.1, duration: 600.ms)  // scale up
  .then(delay: 600.ms)                            // then wait and
  .scale(begin: 1.0, end: 1 / 1.1) 
*/

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text("AquaLens",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))
                .animate()
                .fadeIn(duration: 1000.ms, curve: Curves.easeInOut),
            const Text("Microplastics, Detected, Defeated.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))
                .animate()
                .fadeIn(
                    delay: 1000.ms, duration: 1000.ms, curve: Curves.easeInOut),
            const SizedBox(
              height: 64,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context)
                            .primaryColorDark
                            .withOpacity(0.4))),
                Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context)
                            .primaryColorDark
                            .withOpacity(0.6))),
                Image.asset(
                  'assets/recycle.png',
                  height: 350,
                )
              ],
            ).animate().fadeIn(
                delay: 1300.ms, duration: 900.ms, curve: Curves.easeInOut),
            const Spacer(),
            SizedBox(
              width: 300,
              child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).primaryColorDark)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (
                      context,
                    ) {
                      return const HowScreen();
                    }));
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ).animate().slideY(
                begin: 1.5,
                end: 0,
                duration: 600.ms,
                delay: 1800.ms,
                curve: Curves.easeInOut),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
