import 'package:flutter/material.dart';

class BuildStory extends StatelessWidget {
  const BuildStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildStoryItem(context);
  }

  Widget buildStoryItem(context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 4,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(color: Colors.black12),
                      image: DecorationImage(
                          image: AssetImage('images/elentra.jpg'),
                          fit: BoxFit.cover)),
                  width: MediaQuery.of(context).size.width / 3.7,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.blueAccent, width: 4.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0)),
                                ),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage:
                                      AssetImage('images/abdelrahman.jpg'),
                                ),
                              ),
                            ]),
                        //Spacer(),
                        Text('Abdelrahman Salah',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => Container(
                  width: 10.0,
                  //height: MediaQuery.of(context).size.height / 4,
                  color: Colors.white,
                ),
            itemCount: 15),
      ),
    );
  }
}
