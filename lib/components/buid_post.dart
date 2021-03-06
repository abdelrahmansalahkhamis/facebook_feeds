import 'package:facebook_demo_task/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:universal_io/prefer_universal/io.dart';

class BuildPost extends StatelessWidget {
  PostModel model;

  BuildPost(this.model);
  @override
  Widget build(BuildContext context) {
    return buildPostWidget(context, model);
  }

  Widget buildPostWidget(context, PostModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 0.0),
            child: Row(
              children: [
                Stack(alignment: AlignmentDirectional.bottomEnd, children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage:
                            AssetImage('${model.userprofileImage}'),
                      ),
                    ),
                  ),
                  model.online
                      ? Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 6.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.green),
                          ),
                        )
                      : Container()
                ]),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${model.postUsername}',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(children: [
                      Text(
                        'Yesterday at 1:41 PM',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.public,
                        size: 15.0,
                        color: Colors.grey,
                      )
                    ]),
                  ],
                ),
                //Spacer(),
                Expanded(
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Platform.isAndroid
                          ? Icons.more_vert
                          : Icons.more_horiz),
                      //icon: Icon(Icons.more_horiz),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              '${model.text}',
              style: TextStyle(fontSize: 18),
            )),
        SizedBox(
          height: 5.0,
        ),
        addImage(context, model.image),
        SizedBox(
          height: 1.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 18.0),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_up,
                          color: Colors.blue,
                        )),
                    Text(
                      '${model.likes}',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              //Spacer(),
              Row(
                children: [
                  Text(
                    '${model.comments}',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text(
                    'Comments',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${model.shares}',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text(
                    'Shares',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[400],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                // child: InkWell(
                //   onTap: () {},
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       IconButton(
                //           onPressed: () {},
                //           icon: Icon(Icons.thumb_up_off_alt_outlined)),
                //       Text(
                //         'Like',
                //         style: TextStyle(color: Colors.black),
                //       )
                //     ],
                //   ),
                // ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.thumb_up_off_alt_outlined),
                      SizedBox(width: 10.0),
                      Text('Like')
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   width: 20.0,
              // ),
              Expanded(
                // child: InkWell(
                //   onTap: () {},
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       IconButton(
                //           onPressed: () {},
                //           icon: Icon(Icons.messenger_outline_rounded)),
                //       Text(
                //         'Comment',
                //         style: TextStyle(color: Colors.black),
                //       )
                //     ],
                //   ),
                // ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.messenger_outline_rounded),
                      SizedBox(width: 10.0),
                      Text('Comment')
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   width: 20.0,
              // ),
              Expanded(
                // child: InkWell(
                //   onTap: () {},
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       IconButton(onPressed: () {}, icon: Icon(Icons.shortcut)),
                //       Text(
                //         'Share',
                //         style: TextStyle(color: Colors.black),
                //       )
                //     ],
                //   ),
                // ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shortcut),
                      SizedBox(width: 10.0),
                      Text('Share')
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget addImage(context, image) {
    if (image != null) {
      if (image.length > 1) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 2.5,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Image(
                image: AssetImage('${image[index]}'),
                fit: BoxFit.cover,
              );
            },
            itemCount: image.length,
          ),
        );
      } else {
        return Image(
          image: AssetImage('${image[0]}'),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2.5,
          fit: BoxFit.cover,
        );
      }
    } else {
      return Container();
    }
  }
}
