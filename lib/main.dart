import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats', style: TextStyle(fontSize: 35)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: [
//            CircleAvatar(
//              backgroundImage: NetworkImage(
//                  'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
//              maxRadius: 50,
//            ),
//            SizedBox(height: 20),
//            Text(
//              'Atef Mansour',
//              style: TextStyle(fontSize: 30),
//            ),
//            SizedBox(height: 10),
//            Text(
//              'Abu Bouda',
//              style: TextStyle(fontSize: 20),
//            ),
//            Divider(
//              thickness: 3,
//              indent: 100,
//              endIndent: 100,
//              height: 20,
//              color: Colors.blue,
//            ),
////            Padding(
////              padding: EdgeInsets.symmetric(horizontal: 10),
////              child: Card(
////                elevation: 5,
////                child: Padding(
////                  padding: const EdgeInsets.all(12.0),
////                  child: Row(
////                    mainAxisAlignment: MainAxisAlignment.center,
////                    children: [
////                      Icon(
////                        Icons.phone,
////                        size: 35,
////                        color: Colors.blue,
////                      ),
////                      SizedBox(
////                        width: 20,
////                      ),
////                      Text(
////                        '+20 100-107-9956',
////                        style: TextStyle(
////                            fontSize: 35, fontWeight: FontWeight.w300),
////                      )
////                    ],
////                  ),
////                ),
////              ),
////            ),
//            CardWidget('+2 0100-10-79956', Icons.phone),
//            CardWidget('Abubouda@gmail', Icons.email),
//          ],
//        ),

          child: Column(
            children: [
              Row(
                children: [
                  AvatarWidget('Person1',
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                  AvatarWidget('Person2',
                      'https://thumbs.dreamstime.com/b/close-up-portrait-rejoicing-surprised-asian-woman-glasses-happy-person-hear-great-awesome-news-realise-something-close-178164807.jpg'),
                  AvatarWidget('Person3',
                      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/701/sign-youre-a-boring-person-1499907556.jpg'),
                  AvatarWidget('Person4',
                      'https://avada.theme-fusion.com/wp-content/uploads/2019/07/person_sample_2.jpg'),
                  AvatarWidget('Person5',
                      'https://miro.medium.com/max/6300/0*yNQ3UdtoAXyB8Whx'),
                  AvatarWidget('Person6',
                      'https://i0.wp.com/theparentcue.org/wp-content/uploads/2018/02/Raising-A-Kind-Person-1.jpg?fit=1200%2C800&ssl=1'),
                ],
              ),
              SizedBox(
                height: 55,
              ),
              Row(
                children: [
                  AvatarWidget2('Person1',
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                  AvatarWidget2('Person2',
                      'https://thumbs.dreamstime.com/b/close-up-portrait-rejoicing-surprised-asian-woman-glasses-happy-person-hear-great-awesome-news-realise-something-close-178164807.jpg'),
                  AvatarWidget2('Person3',
                      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/701/sign-youre-a-boring-person-1499907556.jpg'),
                  AvatarWidget2('Person4',
                      'https://avada.theme-fusion.com/wp-content/uploads/2019/07/person_sample_2.jpg'),
                  AvatarWidget2('Person5',
                      'https://miro.medium.com/max/6300/0*yNQ3UdtoAXyB8Whx'),
                  AvatarWidget2('Person6',
                      'https://i0.wp.com/theparentcue.org/wp-content/uploads/2018/02/Raising-A-Kind-Person-1.jpg?fit=1200%2C800&ssl=1'),
                ],
              ),
            ],
          ),

          //     AvatarWidget('Abubouda@gmail', Icons.email),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  const CardWidget(this.label, this.icon, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                //    Icons.email,
                icon,
                size: 25,
                color: Colors.blue,
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                // 'Abubouda@Gmail',
                '$label',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  final String label;
  final String imagep;
  const AvatarWidget(this.label, this.imagep, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('$imagep'),
            maxRadius: 50,
          ),
          SizedBox(height: 10),
          Text(
            '$label',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class AvatarWidget2 extends StatelessWidget {
  final String label;
  final String imagep;
  const AvatarWidget2(this.label, this.imagep, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('$imagep'),
            maxRadius: 50,
          ),
          Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  '$label',
                  style: TextStyle(fontSize: 15),
                ),

              ),
            ],
          ),
        ],
      ),
    );
  }
}
