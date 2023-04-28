import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
      width: 260,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.amber,
                    child: ClipOval(
                      child: Image.asset('assets/images/empty.webp'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 0.0, bottom: 10, right: 150),
              child: Text(
                'Username',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 10, right: 100),
              child: Text(
                ' email.toString(),',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 179, 167, 166),
              thickness: 1,
            ),

            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            //here is a divider
            ListTile(
              leading: const Icon(Icons.check_box_outline_blank),
              title: const Text('My subreddits'),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (ctx) => const PostScreen()));
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55.0),
              child: ListTile(
                title: const Text('Gaming'),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (ctx) => const PostScreen()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55.0),
              child: ListTile(
                title: const Text('Funny'),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (ctx) => const PostScreen()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55.0),
              child: ListTile(
                title: const Text('Series'),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (ctx) => const PostScreen()));
                },
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 179, 167, 166),
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.face),
              title: const Text('About'),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (ctx) => const PostDetails()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.device_unknown_outlined),
              title: const Text('Help'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Apps & Tools'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ));
  }
}
