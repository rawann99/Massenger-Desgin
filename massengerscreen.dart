
import 'package:flutter/material.dart';

class massengerscreen extends StatelessWidget {
  Widget BuildStory(){
    return Container(
      width: 60.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(backgroundColor:Colors.black,backgroundImage:NetworkImage("https://scontent.fcai20-3.fna.fbcdn.net/v/t1.6435-9/103430063_138683967814254_7126276929906412304_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=saGSUyi05u0AX-Z0iOQ&_nc_ht=scontent.fcai20-3.fna&oh=65403ac669ea97ca0c950c977b0d3d0c&oe=618772A7"),radius: 30.0),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 3.0,bottom: 3.0,),
                child: CircleAvatar(radius: 7.0,backgroundColor: Colors.green[700],),
              ),
            ],
          ),
          SizedBox(height: 6.0,),
          Text("Rahma Mohamed",overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white ),maxLines: 2,)
          ,

        ],
      ),
    );
  }
  Widget BuildChat(){
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(backgroundColor:Colors.black,backgroundImage:NetworkImage("https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/177257538_1950303385107705_4871420068034738534_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=t9d5sSy4u-kAX8aCmPx&_nc_ht=scontent-hbe1-1.xx&oh=a2a5df7504d43a18e1d8aab424fd233a&oe=6185D309"),radius: 30.0),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 3.0,bottom: 3.0,),
              child: CircleAvatar(radius: 7.0,backgroundColor: Colors.green[700],),
            ),
          ],
        ),
        SizedBox(width: 20.0,),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Samaa Khalid",style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.ellipsis,),
                SizedBox(height: 10.0,),



                Row(
                    children: [
                      Text("ok tmam",style: TextStyle(color: Colors.white38,),maxLines: 1,overflow: TextOverflow.ellipsis,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          width: 7.0,
                          height: 7.0,
                          decoration: BoxDecoration(color: Colors.white38,shape: BoxShape.circle),

                        ),
                      )
                      ,
                      Text("3:00 pm",style: TextStyle(color: Colors.white38),),
                    ]



                ),

              ]

          ),
        )


      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title:
        Row(

          children: [
            CircleAvatar(backgroundColor:Colors.black,backgroundImage:NetworkImage("https://scontent.fcai20-3.fna.fbcdn.net/v/t1.6435-9/186513401_830007544270919_4719087137296535568_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=BFIQYbad088AX-P7hEa&_nc_ht=scontent.fcai20-3.fna&oh=77eb255005cd79c346f51eb00a3edf20&oe=6185003D"),radius: 20.0)
            ,
            SizedBox(width: 15.0,),
            Text("Chats"
              ,style: TextStyle(fontSize: 20.0, color: Colors.white,fontWeight: FontWeight.bold,)
              ,
            textAlign: TextAlign.center,),

          ],
        ),
        actions: [
          IconButton(onPressed: (){},icon: Icon(Icons.mode_edit,color: Colors.blueAccent,size: 25.0,
    ),
    )
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.grey[700]),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row( children: [
                    Icon(Icons.search,color: Colors.grey,),
                    SizedBox(width: 5.0,),
                    Text("Search",style: TextStyle(color: Colors.grey,fontSize: 20.0)
                      ,),
                  ],),
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 100.0,
                  child: ListView.separated(
                    itemBuilder: (context,Index){return BuildStory();},
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 13.0,);
                      }

                    ,scrollDirection: Axis.horizontal,
                    itemCount: 8,
                  )
              ),
              SizedBox(height: 20.0,),
            
                 ListView.separated(itemBuilder: (context,Index){return BuildChat();}
                    , separatorBuilder: (context,Index){return SizedBox(height: 20.0,);}
                    , itemCount: 12,shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics()
                   ,),
              




            ],
          ),
        ),
      )

    );
  }
}
