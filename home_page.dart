import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController? tebController;
  @override
  void initState() {
    tebController =TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey.shade200,
          body: SingleChildScrollView(
            child: Stack(
              children: [
              ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                child: Container(
                height: 65.h,
                width: 100.w,
                color: Colors.grey.shade300,
                ),
              ),
              Column(
                 children: [
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10,top: 10),
                         child: Icon(Icons.format_line_spacing_sharp),
                       ),

                    SizedBox(width: 69.w,),

                       Padding(
                         padding: const EdgeInsets.only(top: 25,right: 10),
                         child: CircleAvatar(
                           maxRadius: 25,
                           backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSavALyqGfk1DMK2WfSlpELwmnVAi0uCh-F3vXkASqN4VuiiWlAshINf-aKm1ECOCLHbWg&usqp=CAU"),
                         ),
                       )
                     ],
                   ),

                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Row(
                       children: [
                         Text("Let's Find \nSomthimg Delicious!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                       ],
                     ),
                   ),


                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: TextFormField(

                       decoration: InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         isDense: true,
                         border: OutlineInputBorder(

                           borderRadius: BorderRadius.circular(15),
                         ),

                         prefixIcon: Icon(Icons.search),
                         hintText: "search.... ",
                         suffixIcon: Icon(Icons.import_export_outlined),

                       ),
                     ),
                   ),


                   TabBar(
                       onTap: (value){
                         tebController!.animateTo(value);
                       },
                       labelColor:  Color(0xfffd0807),
                       indicatorSize: TabBarIndicatorSize.label,
                       indicatorWeight: 2,
                       indicatorColor:  Color(0xfffd0807),
                       controller: tebController,
                       unselectedLabelColor: Colors.grey,
                       tabs:[
                   Tab(text: "food",),
                     Tab(text: "Drinks",),
                     Tab(text: "Snacks",),
                     Tab(text: "Sauce",),

                   ]),

                   Row(
                     children: [
                       Spacer(),
                       Padding(
                         padding: const EdgeInsets.only(top: 10,right: 25),
                         child: Text("see all",style: TextStyle(color:  Color(0xfffd0807),),),
                       ),
                     ],
                   ),


                  SizedBox(height: 10,),

                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 42.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            // color: Colors.black,
                          ),

                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Stack(
                                  children: [
                                    Column(mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 34.h,
                                          width: 50.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left:25),
                                          child: CircleAvatar(
                                            maxRadius: 75,
                                             backgroundImage: NetworkImage(chatlist[index].image!),
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(left: 25,top: 15),
                                          child: Text(chatlist[index].title!,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              }, separatorBuilder: (context,index){
                            return SizedBox(width: 20,);
                          }, itemCount: 5),
                        ),
                      ),
                    ],
                  )





                 ],
             ),


              ],
            ),
          ),


          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.pink,
              ),
            ],
          ),

        ),
      ),
    );
  }
}





class  chatmodel {
  String? image;
  String? title;
  String? subtitle;

  chatmodel({ this.image,this.title,this.subtitle});
}

List<chatmodel> chatlist =[
  chatmodel(
    image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8ZwZ2tuTvWJXRIRDBjpHM--O-J6sULrMbJA&usqp=CAU",
    title: "Crispy Baked \n   Falafel",
    subtitle:"\$30.00",
  ),

  chatmodel(
    image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8ZwZ2tuTvWJXRIRDBjpHM--O-J6sULrMbJA&usqp=CAU",
    title: "Crispy Baked \n   Falafel",
    subtitle:"\$30.00",
  ),

  chatmodel(
    image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8ZwZ2tuTvWJXRIRDBjpHM--O-J6sULrMbJA&usqp=CAU",
    title: "Crispy Baked \n   Falafel",
    subtitle:"\$30.00",
  ),

  chatmodel(
    image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8ZwZ2tuTvWJXRIRDBjpHM--O-J6sULrMbJA&usqp=CAU",
    title: "Crispy Baked \n   Falafel",
    subtitle:"\$30.00",
  ),

  chatmodel(
    image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8ZwZ2tuTvWJXRIRDBjpHM--O-J6sULrMbJA&usqp=CAU",
    title: "Crispy Baked \n   Falafel",
    subtitle:"\$30.00",
  ),

  chatmodel(
    image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8ZwZ2tuTvWJXRIRDBjpHM--O-J6sULrMbJA&usqp=CAU",
    title: "Crispy Baked \n   Falafel",
    subtitle:"\$30.00",
  ),
];