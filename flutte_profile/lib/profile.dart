
import 'package:flutter/material.dart';

class userprofile extends StatelessWidget {
  final List<MenuRowData> menurow1 = [
    MenuRowData(Icons.favorite, 'Favorite'),
    MenuRowData(Icons.phone, 'Cals'),
    MenuRowData(Icons.computer, 'Devices'),
    MenuRowData(Icons.folder, 'Archive'),
  ];


  final List<MenuRowData> menurow2 = [
    MenuRowData(Icons.newspaper, 'What news?'),
    MenuRowData(Icons.security, 'Security'),
    MenuRowData(Icons.storage, 'Storage'),
    MenuRowData(Icons.language, 'language'),
    MenuRowData(Icons.notifications_active, 'Notifications'),

  ];

  userprofile({super.key});
  String tit = 'Sitings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          tit,
          style: const TextStyle(fontFamily: 'Times new Roman', fontSize: 37),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Userinfo(),
            SizedBox(
              height: 30,
            ),
            MenuWidgets(
              menurow: menurow1,
            ),
            SizedBox(height: 30,),
             MenuWidgets(menurow: menurow2)
          ]
        ),
      ),
    );
  }
}

class Userinfo extends StatelessWidget {
  const Userinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Avatar(),
          SizedBox(
            height: 5,
          ),
          Name(),
          Numberphone(),
          SizedBox(
            height: 2,
          ),
          login(),
        ],
      ),
    );
  }
}

class MenuRowWidgets extends StatelessWidget {
  final MenuRowData data;

  MenuRowWidgets({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Row(
        children: [
          Icon(data.icon),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Text(
            data.info,
            style: TextStyle(fontSize: 17),
          )),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}




class MenuRowData {
  final IconData icon;
  final String info;

  MenuRowData(this.icon, this.info);
}

class MenuWidgets extends StatelessWidget {
  final List<MenuRowData> menurow;
   MenuWidgets({super.key, required this.menurow});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: menurow.map((data) => MenuRowWidgets(data: data )).toList(),
        
          
        
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}

class Name extends StatelessWidget {
  const Name({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Nikita Mihalev',
      style: TextStyle(fontSize: 25),
    );
  }
}

class Numberphone extends StatelessWidget {
  const Numberphone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('+790018377', style: TextStyle(fontSize: 15));
  }
}

class login extends StatelessWidget {
  const login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('@Mikhalev');
  }
}