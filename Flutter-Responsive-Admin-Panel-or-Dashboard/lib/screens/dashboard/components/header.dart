import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

// class Header extends StatelessWidget {
//   const Header({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(defaultPadding),
//       decoration: BoxDecoration(
//         color: primaryColor,
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//       ),
//       child: Row(
//         children: [
//           if (!Responsive.isDesktop(context))
//             IconButton(
//               icon: Icon(Icons.menu),
//               onPressed: context.read<MenuAppController>().controlMenu,
//             ),
//           if (!Responsive.isMobile(context))
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Profil Dosen",
//                     style: TextStyle(
//                         fontSize: 44,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black)),
//                 Text(
//                   "Profil Dosen Pembimbing Lapangan",
//                   style: TextStyle(fontSize: 17, color: Colors.black),
//                 ),
//               ],
//             ),

//           if (!Responsive.isMobile(context))
//             Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
//           // Expanded(child: SearchField()),
//           ProfileCard(),
//         ],
//       ),
//     );
//   }
// }

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      // decoration: BoxDecoration(
      //   color: secondaryColor,
      //   borderRadius: const BorderRadius.all(Radius.circular(10)),
      //   border: Border.all(color: Colors.white10),
      // ),
      child: Column(
        children: [
          Row(
            children: [
              if (!Responsive.isMobile(context))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2),
                      child: Text(
                        "H Awaludin Jamil",
                        style: TextStyle(fontSize: 19, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2),
                      child: Text("Dosen",
                          style: TextStyle(fontSize: 17, color: Colors.black)),
                    ),
                  ],
                ),
              Image.asset(
                "assets/images/add_profile.png",
              ),
              // Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ],
      ),
    );
  }
}

// class SearchField extends StatelessWidget {
//   const SearchField({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: "Search",
//         fillColor: secondaryColor,
//         filled: true,
//         border: OutlineInputBorder(
//           borderSide: BorderSide.none,
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//         ),
//         suffixIcon: InkWell(
//           onTap: () {},
//           child: Container(
//             padding: EdgeInsets.all(defaultPadding * 0.75),
//             margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
//             decoration: BoxDecoration(
//               color: primaryColor,
//               borderRadius: const BorderRadius.all(Radius.circular(10)),
//             ),
//             child: SvgPicture.asset("assets/icons/Search.svg"),
//           ),
//         ),
//       ),
//     );
//   }
// }
