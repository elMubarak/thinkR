import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 15),
                Text(
                  'Hey, Master MubiXy',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                SizedBox(height: 20),
                ProfileCircle(),
                SizedBox(height: 50),
                InputFeildContainer(),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1D38),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white10,
                        offset: Offset(0, 8),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputFeildContainer extends StatefulWidget {
  const InputFeildContainer({
    Key key,
  }) : super(key: key);

  @override
  _InputFeildContainerState createState() => _InputFeildContainerState();
}

class _InputFeildContainerState extends State<InputFeildContainer> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 30,
        bottom: 30,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff1C1D38),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.white10,
            offset: Offset(0, 8),
            blurRadius: 12,
          ),
        ],
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Email',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'input email',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xffB5B7F4).withOpacity(0.15),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Password',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: isObsecure,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObsecure = !isObsecure;
                      });
                    },
                    child: Icon(
                      isObsecure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'input password',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xffB5B7F4).withOpacity(0.15),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Center(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffB5B7F4).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCircle extends StatefulWidget {
  const ProfileCircle({
    Key key,
  }) : super(key: key);

  @override
  _ProfileCircleState createState() => _ProfileCircleState();
}

class _ProfileCircleState extends State<ProfileCircle>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      animationBehavior: AnimationBehavior.preserve,
      duration: new Duration(seconds: 100),
    );

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: AnimatedBuilder(
            animation: animationController,
            builder: (BuildContext context, Widget child) {
              return new Transform.rotate(
                angle: animationController.value * 5.2,
                child: child,
              );
            },
            child: Container(
              width: 230,
              height: 230,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff1C1D38),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white10,
                    offset: Offset(0, 8),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 8),
                      blurRadius: 12,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.all(14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '*o| | | | | | | | | | | * | | |  | | | o*',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'o*| | | | | | | | | | | * | | |  | | | *o',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            padding: EdgeInsets.all(20),
            child: CircleAvatar(
              backgroundColor: Color(0xff000000).withOpacity(0.8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  'https://avatars3.githubusercontent.com/u/40618838?s=460&v=4',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
