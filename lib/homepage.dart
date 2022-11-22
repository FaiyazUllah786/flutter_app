import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Controllers
  late ScrollController _scrollController;

  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Batman",
      home: Scaffold(
          body: WebSmoothScroll(
        controller: _scrollController,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        'assets/images/bat.png',
                        height: 200,
                        width: 300,
                      ),
                    ),
                    //master wayne text
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Text(
                          'Welcome Master Wayne',
                          style: GoogleFonts.abel(
                              textStyle:
                                  TextStyle(fontSize: 45, color: Colors.white)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.grey[900],
                child: Row(
                  children: [
                    InkWell(
                      onTap: () async {
                        await launchUrlString(
                            "https://en.wikipedia.org/wiki/Batsuit");
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                          "Batsuit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await launchUrlString(
                            "https://en.wikipedia.org/wiki/Batmobile");
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Text("Batmobile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await launchUrlString(
                            "https://en.wikipedia.org/wiki/Batcopter");
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Text("Batcopter",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1000,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.all(50),
                          child: SafeArea(
                            child: Text(
                              "The night is darkest just\n before the down",
                              style: GoogleFonts.lobsterTwo(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 60,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.all(100),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Purchase the batman suit at \n minimal cost",
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Order Now",
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.grey[700]),
                                ),
                                InkWell(
                                  onTap: () {
                                    String email = "faiyazullah@gmail.com";
                                    String subject = "Like and subscribe";
                                    String body = "Hit the like button";

                                    String? encodeQueryParameters(
                                        Map<String, String> param) {
                                      return param.entries
                                          .map((e) =>
                                              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                          .join('&');
                                    }

                                    final Uri emailuri = Uri(
                                        scheme: 'mailto',
                                        path: email,
                                        query: encodeQueryParameters(<String,
                                            String>{
                                          'subject': subject,
                                          'body': body
                                        }));

                                    launchUrl(
                                      emailuri,
                                    );
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    height: 30,
                                    width: 130,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Order Now",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[700],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                )
                              ],
                            ))),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.maxFinite,
                color: Colors.grey[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        await launchUrlString("https://in.linkedin.com/");
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                          "Linkedin",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await launchUrlString("https://www.instagram.com/");
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Text("Instagram",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await launchUrlString("https://github.com/");
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Text("GitHub",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
