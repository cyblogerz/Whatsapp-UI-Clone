import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRA Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRA Demo"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'This is demo of "Circular Reveal Animation" Flutter library',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 4),
                SizedBox(height: 4),
                SizedBox(height: 12),
                MaterialButton(
                  child: Text("show reveal image dialog"),
                  onPressed: () => showRevealImageDialog(context),
                  color: Colors.red,
                ),
                SizedBox(height: 12),
                MaterialButton(
                  child: Text("show reveal text dialog"),
                  onPressed: () => showRevealTextDialog(context),
                  color: Colors.amber,
                ),
                SizedBox(height: 12),
                Stack(
                  children:[
                    MaterialButton(
                    child: Text("show / hide image"),
                    onPressed: () {
                      if (animationController.status == AnimationStatus.forward ||
                          animationController.status ==
                              AnimationStatus.completed) {
                        animationController.reverse();
                      } else {
                        animationController.forward();
                      }
                    },
                    color: Colors.yellow,
                  ),
                    SizedBox(height: 12),
                CircularRevealAnimation(
                  child: Image.network(
                      "https://static1.srcdn.com/wordpress/wp-content/uploads/2019/11/john-wick-2-header-1.jpg"),
                  animation: animation,
//                centerAlignment: Alignment.centerRight,
                  centerOffset: Offset(50, 50),
//                minRadius: 12,
//                maxRadius: 200,
                ),
                    ] 
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showRevealImageDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Label",
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            child: Image.network(
                'https://static1.srcdn.com/wordpress/wp-content/uploads/2019/11/john-wick-2-header-1.jpg'),
            padding: const EdgeInsets.all(12.0),
            margin: EdgeInsets.only(top: 50, left: 12, right: 12, bottom: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return CircularRevealAnimation(
          child: child,
          animation: anim1,
          centerAlignment: Alignment.bottomCenter,
        );
      },
    );
  }

  void showRevealTextDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Label",
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (context, anim1, anim2) {
        return AlertDialog(
          title: Text("Title of the dialog"),
          content: Text(
              "Content of the dialog. Content of the dialog. Content of the dialog. Content of the dialog."),
          actions: [
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return CircularRevealAnimation(
          child: child,
          animation: anim1,
          centerAlignment: Alignment.center,
        );
      },
    );
  }
}
