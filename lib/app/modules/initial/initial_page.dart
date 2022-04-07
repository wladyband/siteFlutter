import 'package:azerox/app/modules/initial/widgets/video_player.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
    String url;
    YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: '51DQyYJ_foM',
      params: const YoutubePlayerParams(
        loop: false,
        color: 'transparent',
        desktopMode: true,
        strictRelatedVideos: true,
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
                                controller: _controller,
                               aspectRatio: 500 / 100,
                              ),
                          ),
                        ),
                        Image.asset(AppImages.azerox2),
                        Image.asset(AppImages.azerox3),
                        Image.asset(AppImages.azerox4),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        textColor: Colors.white,
                        color: Colors.pink,
                        child: Text("Previous"),
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
                        color: Colors.pink,
                        child: Text("Next"),
                        onPressed: () {
                          pageController?.nextPage(
                              curve: Curves.linear,
                              duration: const Duration(milliseconds: 400),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
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
                                'Cadastrar E-mail',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0XFF7D7D7D),
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
