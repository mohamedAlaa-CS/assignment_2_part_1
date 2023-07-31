import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
      children: [ 
       Container(
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(24)),
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
             const SizedBox(width: 10,),
             const Column(
                children: [Text('owner',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Row(children: [Text('3h'),SizedBox(width: 5,), Icon(Icons.public)],)
              ],)
              ],),
    ),
   const SizedBox(height: 15,),
  const  Padding(
      padding:  EdgeInsets.only(left: 8),
      child: Text('My Post',style: TextStyle(fontSize: 30,),),
    ),
   const SizedBox(height: 50,),
    Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [ const Text('100'),
     const SizedBox(width: 5,),
      SizedBox(
        height: 25,
        child: Image.asset('lib/assets/like.jpg'),),
       const Spacer(),
      const  Text('100 comment'),
        ],),

    ),
    const SizedBox(height: 10,),
   const  Divider(thickness: 2,),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(height: 25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
              Image.asset('lib/assets/singleLike.jpg'),
             const SizedBox(width: 6,),
             const Text('Like',style: TextStyle(color: Colors.grey),)
            ],
          ),
           Row(
            children: [
              Image.asset('lib/assets/comment.jpg'),
             const SizedBox(width: 6,),
             const Text('Comment',style: TextStyle(color: Colors.grey),)
            ],
          ),
          Row(
            children: [
              Image.asset('lib/assets/share.png'),
            const  SizedBox(width: 6,),
             const Text('share',style: TextStyle(color: Colors.grey),)
            ],
          ),
        ],),
      ),
    ),
    const Divider(thickness: 2,),
    ],
    );
  }
}