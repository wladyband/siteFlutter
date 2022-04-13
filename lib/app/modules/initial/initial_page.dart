
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../../config/app_images.dart';
import '../../config/app_routes.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({
    Key? key,
    this.url,
  }) : super(key: key);

  final url;
  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage>


with TickerProviderStateMixin {
    TabController? tabController;
    PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

    @override
    void deactivate(){
    }

    @override
    void dispose() {
      super.dispose();
    }



  @override
  Widget build(BuildContext context) {

    YoutubePlayerController _controllerAutobiografia = YoutubePlayerController(
        initialVideoId:
        '9lKjbpIVgAo',
      params: const YoutubePlayerParams(
        loop: false,
        color: 'transparent',
        desktopMode: true,
        strictRelatedVideos: true,
        showFullscreenButton: true,

        ),
        // flags: YoutubePlayerFlags(
        //   enableCaption: false,
        //   isLive: false,
        //   autoPlay: true
        // )
    );


    YoutubePlayerController _controllerMostrandoProjeto = YoutubePlayerController(
      initialVideoId:
      'KSrafMn4n2Y',
      params: const YoutubePlayerParams(
        loop: false,
        color: 'transparent',
        desktopMode: true,
        strictRelatedVideos: true,
        showFullscreenButton: true,
      ),
      // flags: YoutubePlayerFlags(
      //   enableCaption: false,
      //   isLive: false,
      //   autoPlay: true
      // )
    );

    return MaterialApp(
      scrollBehavior: EnableMouseScrollBehavior(),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: Get.width,
              height: Get.height,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Expanded(
                    child: PageView(
                      physics: const BouncingScrollPhysics(),
                      onPageChanged: (page) {
                        tabController!.index = page;
                      },
                      allowImplicitScrolling: true,
                      controller: pageController,
                      children: [
                        Center(
                          child: SizedBox(
                            width: 600,
                            height: 600,
                            child: YoutubePlayerIFrame(
                              controller: _controllerAutobiografia,
                              aspectRatio: 16 / 9,
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 600,
                            height: 600,
                            child: YoutubePlayerIFrame(
                              controller: _controllerMostrandoProjeto,
                              aspectRatio: 500 / 100,
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 1600,
                            height: 800,
                            child: Image.asset(AppImages.tela4),
                          ),
                        ),

                        Image.asset(AppImages.tela5),
                        Image.asset(AppImages.tela6),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child:Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                        ),
                        onPressed: () {
                          pageController?.previousPage(
                            curve: Curves.linear,
                            duration: const Duration(milliseconds: 400),
                          );
                        },
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Icon(
                            Icons.arrow_forward_ios,
                          size: 16,
                        ),
                        onPressed: () {
                          pageController?.nextPage(
                              curve: Curves.linear,
                              duration: const Duration(milliseconds: 400),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 309,
                          height: 47,
                          child: ElevatedButton.icon(
                            icon: const Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.email),
                            ),
                            label: const Center(
                              child: Text(
                                'Cadastrar',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            onPressed: () => Get.toNamed(Routes.login),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EnableMouseScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {PointerDeviceKind.touch, PointerDeviceKind.mouse};
}
