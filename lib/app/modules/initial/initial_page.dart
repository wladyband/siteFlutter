import 'package:azerox/app/config/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../config/app_images.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

YoutubePlayerController _defaultVideoController({
  required String initialVideo,
}) {
  return YoutubePlayerController(
    initialVideoId: initialVideo,
    params: const YoutubePlayerParams(
      loop: false,
      color: 'transparent',
      desktopMode: true,
      strictRelatedVideos: true,
      showFullscreenButton: true,
    ),
  );
}

class _InitialPageState extends State<InitialPage> {
  final _pageController = PageController();
//  final _videoBiographic = _defaultVideoController(initialVideo: '9lKjbpIVgAo');
  final _videoProject = _defaultVideoController(initialVideo: '6EJyjF8SHRE');
  final _activeScroll = EnableMouseScrollBehavior();

  Image? image1;
  Image? image2;
  Image? image3;
  Image? image4;
  Image? image5;



  @override
  void dispose() {
    _pageController.dispose();
   // _videoBiographic.close();
    _videoProject.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  @override
  void initState() {
    super.initState();

    image1 = Image.network('https://azerox-s3-imagens.s3.us-east-1.amazonaws.com/1tela.jpeg');
    image2 = Image.network('https://azerox-s3-imagens.s3.us-east-1.amazonaws.com/3tela.png');
    image3 = Image.network('https://azerox-s3-imagens.s3.us-east-1.amazonaws.com/4tela.png');
    image4 = Image.network('https://azerox-s3-imagens.s3.us-east-1.amazonaws.com/5tela.png');
    image5 = Image.network('https://azerox-s3-imagens.s3.us-east-1.amazonaws.com/6tela.png');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(image1!.image, context);
    precacheImage(image2!.image, context);
    precacheImage(image3!.image, context);
    precacheImage(image4!.image, context);
    precacheImage(image5!.image, context);

  }

  Widget _body() {
    return ListView(
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 400,
            height: context.heightTransformer(reducedBy: 25),
            child: Center(
              child: PageView(
                controller: _pageController,
                scrollBehavior: _activeScroll,
                children: [
                //  YoutubePlayerIFrame(controller: _videoBiographic),

                  image1!,
                  YoutubePlayerIFrame(controller: _videoProject),
                  image2!,
                  image3!,
                  image4!,
                  image5!,
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              child: const Icon(Icons.arrow_forward_ios),
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
            ),
          ],
        ),
        Center(

          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
              child: SizedBox(
                width: 309,
                height: 47,
                child: Center(
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Cadastrar",
                      style:TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              onPressed: () => Get.toNamed(Routes.login),
            ),
          ),
        )
      ],
    );
  }
}

class EnableMouseScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};
}
