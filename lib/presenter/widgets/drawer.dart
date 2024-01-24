import 'package:flutter/material.dart';
import '../../utils/utils.dart';

Widget drawerItem(BuildContext context, void Function() themeClick) {
  return Drawer(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
    ),
    child: Container(
      color: const Color(darkBackground),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 35),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("USER USER",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white)),
                Text("+998 90 123 45 67",
                    style: TextStyle(color: Colors.white)),
                Text("@user", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(tealColor),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/postcard.png",
                    width: 100,
                    height: 70,
                  ),
                  Text("Payme People", style: TextStyle(color: Colors.white)),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.white),
                  SizedBox(width: 8)
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(color: Colors.white54, Icons.settings),
            title: const Text('Sozlamalar',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(color: Colors.white54, Icons.photo_outlined),
            title: const Text('Mavzu',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500)),
            onTap: () => {Navigator.pushNamed(context, "theme")
          },
          ),
          ListTile(
            leading: const Icon(color: Colors.white54, Icons.share_outlined),
            title: const Text("Do'stlar bilan ulashing",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading:
                const Icon(color: Colors.white54, Icons.support_agent_outlined),
            title: const Text("Qo'llab quvatlash xizmati",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(color: Colors.white54, Icons.exit_to_app),
            title: const Text('Yopish',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const SizedBox(height: 8)
        ],
      ),
    ),
  );
}
