import 'package:drivers_app/global/global.dart';
import 'package:drivers_app/splashScreen/splash_screen.dart';
import 'package:flutter/material.dart';

class ProfileTapPage extends StatefulWidget {
  const ProfileTapPage({Key? key}) : super(key: key);

  @override
  State<ProfileTapPage> createState() => _ProfileTapPageState();
}

class _ProfileTapPageState extends State<ProfileTapPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(
          "Sign Out",
        ),
        onPressed: () {
          fAuth.signOut();
          Navigator.push(context,
              MaterialPageRoute(builder: (c) => const MySplashScreen()));
        },
      ),
    );
  }
}
