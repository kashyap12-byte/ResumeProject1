import 'package:flutter/material.dart';
import 'ima.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: kash(),
));

class kash extends StatelessWidget {

  void _launchEmail(String emailId) async{
    var ur= "mailto:$emailId";
    if(await canLaunch(ur)){
      await launch(ur);
    }
  }

  void _launchUrl(String Url) async{
    if(await canLaunch(Url)){
      await launch(Url);
    }
    else
      throw 'Could not open url';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ima())
                  );
                },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/Kash.jpg'),
                    radius: 50,
                  ),
                ),
            ),
            Divider(
              height: 40,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Kashyap Talati',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Coding Skills',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'C',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              'HTML',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),Text(
              'CSS',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              'CORE JAVA',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              'JAVASCRIPT',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),Text(
              'PYTHON',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),Text(
              'DART/FLUTTER',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),Text(
              'SQL',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),Text(
              'PHP',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    _launchEmail('talatikashyap@gmail.com');
                   },
                  icon: Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  ),

                SizedBox(width: 5.0),
                Text(
                  'talatikashyap@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
              IconButton(
                onPressed: (){
                  _launchUrl("https://github.com/kashyap12-byte//");
                },
              icon: Icon(
                Icons.link,
              ),
              color: Colors.grey,
              ),
              SizedBox(width: 5.0),
              Text(
              'https://github.com/kashyap12-byte/',
              style: TextStyle(
              color: Colors.grey[600],
              fontSize: 17,
              fontWeight: FontWeight.bold,
              
                     ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
