// Flutter imports:
import 'package:flutter/material.dart';
import 'package:nakamatest/color.dart';

// class HeaderWidget extends StatefulWidget implements PreferredSizeWidget {
//   const HeaderWidget({super.key});

//   @override
//   State<HeaderWidget> createState() => _HeaderWidgetState();
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }

// class _HeaderWidgetState extends State<HeaderWidget> {
//   OverlayEntry? _overlayEntry;

//   OverlayEntry _createOverLayEntry() {
//     return OverlayEntry(
//       builder: (context) => GestureDetector(
//           onTap: removeOverlay,
//           child: Container(
//             color: Colors.black.withOpacity(0),
//             child: Stack(
//               children: <Widget>[
//                 Positioned(
//                     top: 110,
//                     left: 16,
//                     child: Material(
//                         elevation: 4.0,
//                         child: Container(
//                           width: 192,
//                           height: 214,
//                           color: Colors.white,
//                           child: const Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(Icons.person),
//                                   Text(
//                                     "旅行仲間",
//                                     style: TextStyle(fontSize: 12),
//                                   )
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Icon(Icons.person),
//                                   Text(
//                                     "近くの観光客",
//                                     style: TextStyle(fontSize: 12),
//                                   )
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Icon(Icons.person),
//                                   Text(
//                                     "同じ趣味の人を探す",
//                                     style: TextStyle(fontSize: 12),
//                                   )
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Icon(Icons.person),
//                                   Text(
//                                     "ツアー",
//                                     style: TextStyle(fontSize: 12),
//                                   )
//                                 ],
//                               ),
//                             ],
//                           ),
//                         )))
//               ],
//             ),
//           )),
//     );
//   }

//   void _showOverlay() {
//     _overlayEntry = _createOverLayEntry();
//     Overlay.of(context).insert(_overlayEntry!);
//   }

//   void removeOverlay() {
//     _overlayEntry?.remove();
//     _overlayEntry = null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading: IconButton(
//           icon: const Icon(
//             Icons.dehaze_sharp,
//             color: Colors.white,
//           ),
//           onPressed: _showOverlay),
//       centerTitle: false,
//       title: const Text(
//         "旅に行こう！",
//         style: TextStyle(color: Colors.white),
//       ),
//       backgroundColor: AppColor.headerColor,
//       actions: [
//         Container(
//           padding: const EdgeInsets.all(10),
//           child: ElevatedButton(
//             onPressed: () => {Navigator.pushNamed(context, "/advertisements")},
//             style: ElevatedButton.styleFrom(
//               backgroundColor: AppColor.buttonColor,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10) //こちらを適用
//                   ),
//               elevation: 3,
//             ),
//             child: const Text(
//               "ログイン",
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: AppColor.headerColor,
      centerTitle: false,
      title: const Text(
        "旅へ行こう！",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, "/advertisements")},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10) //こちらを適用
                  ),
              elevation: 3,
            ),
            child: const Text(
              "ログイン",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              color: AppColor.headerColor,
              child: const SizedBox(
                  height: 105,
                  width: double.infinity,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: AppColor.headerColor,
                    ),
                    child: Text(
                      "旅へ行こう！",
                      style: TextStyle(color: Colors.white),
                    ),
                  ))),
          Expanded(
              child: Container(
            color: AppColor.backgroundColor,
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColor.subButtonColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.local_mall,
                      color: AppColor.backgroundColor,
                    ),
                  ),
                  title: Text("旅行仲間"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColor.subButtonColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.near_me,
                      color: AppColor.backgroundColor,
                    ),
                  ),
                  title: Text("近くの観光客"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColor.subButtonColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.directions_walk,
                      color: AppColor.backgroundColor,
                    ),
                  ),
                  title: Text("同じ趣味の人を探す"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColor.subButtonColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.tour,
                      color: AppColor.backgroundColor,
                    ),
                  ),
                  title: Text("ツアー"),
                  onTap: () {},
                ),
                ListTile(
                  title: Center(
                    child: Text("ログイン"),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
