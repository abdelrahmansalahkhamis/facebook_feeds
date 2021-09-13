import 'dart:io';

import 'package:facebook_demo_task/LocalData/local_data.dart';
import 'package:facebook_demo_task/components/buid_post.dart';
import 'package:facebook_demo_task/components/build_new_post.dart';
import 'package:facebook_demo_task/components/build_story.dart';
import 'package:facebook_demo_task/cubit/facebook_cubit.dart';
import 'package:facebook_demo_task/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../circle_button.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FacebookCubit, FacebookStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = FacebookCubit.get(context);
        return !cubit.postsLoaded
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Scaffold(
                body: NestedScrollView(
                    scrollDirection: Axis.vertical,
                    headerSliverBuilder: (context, innerBoxIsScrolled) => [
                          SliverAppBar(
                            bottom: PreferredSize(
                                child: Container(
                                  color: Colors.black12,
                                  height: 0.5,
                                ),
                                preferredSize: Size.fromHeight(1.0)),
                            elevation: 10.0,
                            backgroundColor: Colors.white10,
                            floating: true,
                            snap: true,
                            title: Text(
                              'facebook',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w800),
                            ),
                            actions: [
                              CircleButton(
                                icon: Icons.search,
                                iconSize: 30.0,
                                onPressed: () => print('Search'),
                              ),
                              Ink(
                                padding: EdgeInsets.only(right: 10.0),
                                decoration: ShapeDecoration(
                                  color: Color(0x011AAAAAA),
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon: Image.asset('images/messenger.jpeg'),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                    body: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return BuildNewPost();
                              }
                              if (index == 1) {
                                return BuildStory();
                              }
                              return BuildPost(cubit.model[index - 2]);
                            },
                            separatorBuilder: (context, index) {
                              return separator(7.0);
                            },
                            itemCount: 7),
                      ),
                    )),
              );
      },
    );
  }

  Widget separator(height) {
    return SizedBox(
      height: height,
      child: Container(
        color: Colors.black12,
      ),
    );
  }
}
