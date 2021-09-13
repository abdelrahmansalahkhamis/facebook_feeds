import 'package:flutter/material.dart';

class BuildNewPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildNewPost();
  }

  Widget buildNewPost() {
    return Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage('images/abdelrahman.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'What\'s in your mind?'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Divider(
              height: 1,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_outlined,
                              color: Colors.red,
                            )),
                        Text(
                          'Live',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Container(width: 1.0, height: 25.0, color: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.article, color: Colors.green)),
                        Text(
                          'Photo',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Container(width: 1.0, height: 25.0, color: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.room,
                              color: Colors.purple,
                            )),
                        Text(
                          'Room',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
