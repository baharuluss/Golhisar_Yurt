import 'package:golhisar_yurtt/screen/login/login_page.dart';
import 'package:golhisar_yurtt/widget/onboarding_widget.dart.';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final data = [
    OnboardingData(

      title: "ARAMIZA HOŞGELDİNİZ",
      subtitle:
      "Gölhisar Kredi ve Yurtlar Kurumu Yurdumuzda konakladığınız için mutluyuz! ",
      image: const AssetImage("assets/images/img-1.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: const Color(0xFFe7426a),
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/bg-1.json"),
    ),
    OnboardingData(
      title: "YURT İŞLEMLERİ",
      subtitle: "Duyurular,Yemek Listesi, Kredi ve Yurtlar Kurumu Ödemeleri ve Daha Fazlası",
      image: const AssetImage("assets/images/img-2.png"),
      backgroundColor: Colors.white,
      titleColor: Colors.purple,
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      background: LottieBuilder.asset("assets/animation/bg-2.json"),
    ),
    OnboardingData(
      title: "KAYIT OL",
      subtitle: "Uygulamaya Kayıt Olarak, Yurt İşlemlerini Daha Kolay Yapabilirsiniz.",
      image: const AssetImage("assets/images/img-3.png"),
      backgroundColor: const Color.fromRGBO(71, 59, 117, 1),
      titleColor: Colors.yellow,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/bg-3.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return Onboarding(data: data[index]);
        },
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        },
      ),
    );
  }
}