import 'package:flutter/material.dart';
import 'package:post/kanalho.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool addacount = false;
  bool toriki = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("ожидании сети..."),
              IconButton(onPressed: () {}, icon: Icon(Icons.search))
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://avatars.mds.yandex.net/i?id=050fb7044b5d5834ec6e56d2c12a5be10b6afa22-12643871-images-thumbs&n=13"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                          },
                          icon:const Icon(
                            Icons.mode_night_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shuhrat",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text("+992 009880540",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                          ],
                        ),
                      
                        IconButton(
                            onPressed: () {
                              setState(() {
                                addacount = !addacount;
                                print(addacount);
                              }); 
                            }, icon: Icon(addacount?
                            Icons.keyboard_arrow_up_outlined:
                            Icons.keyboard_arrow_down_outlined,

                            ),
                           )
                    ],
                    ),
                  )
                ],
              ),
            ),
            if(addacount)Addacount(),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.person_outline_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text("мой профил")
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.group_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text("создать группу")
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  Icon(Icons.person_outline),
                  SizedBox(
                    width: 20,
                  ),
                  Text("контакты")
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.call_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text("звонки")
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  Icon(Icons.person_add_alt),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Люди рядом")
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.turned_in_not_sharp),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Избранное")
                ],
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Icon(Icons.settings_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Настройки")
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                children: [
                  Icon(Icons.person_add_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Пригласить друзей")
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.contact_support_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Возможности Телеграм")
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Все чаты"),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kanalho()));
                    },
                    child: Text("Каналхо"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Addacount extends StatelessWidget {
  const Addacount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
       
        Padding(
          padding: const EdgeInsets.only(top: 8,left: 16,right: 16),
          child: Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black),
              ),
            const  SizedBox(width: 20,),
              
              Text("Shuhrat")
            ],
          ),
        ),
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 2,color: Colors.grey))
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: const Row(
              children: [
                Icon(Icons.add),
                SizedBox(
                  width: 28,
                ),
                Text("Добавить аккаунт")
              ],
            ),
        ),
      )
      ],
    );
  }
}
