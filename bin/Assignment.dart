import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///This is flutter structure and how flutter file work
/// main()-------Myapp------MeterialApp-------Activitypage-------scaffold-------appbar---body

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ///Material app is prdifinded class in flutter
    /**
     * color
     * darkTheme
     * debugShow
     * home
     * tittle
     */
    ///Material app theme and applincation landing niwa kaj korea
    return MaterialApp(
      ///themer jonno primary color set for My home page activity
        theme: ThemeData(primarySwatch: Colors.green),
        ///dark them a jokon application jabe tokon theme hobe
        darkTheme: ThemeData(primarySwatch: Colors.lightGreen),
        ///Primary colar of the application
        color: Colors.red,
        ///False dile debugshowcheckbanner of hoi jabe;
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  @override
  Widget build(BuildContext context) {
    ///Scaffold will expand or ocupy the whole screen
    /**
     *      \----AppBar----/
     *      \              /
     * drawer \            / endDrawer
     *      \      Body    /
     *      \  float.....  /
     *      \///////////////
     *          Bottom tab
     */
    return Scaffold(
      ///This programme is about app bar and how work this app bar
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('INVENTORY MANAGEMENT SYSTEM'),
        titleSpacing: 10,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        elevation: 20,
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){MySnackBar('Addcall Icon',context);}, icon: Icon(Icons.add_call)),
          IconButton(onPressed: (){MySnackBar('Search Icon',context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar('Setting Icon',context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar('Email Icon',context);}, icon: Icon(Icons.email)),
        ],
      ),
      ///This part is about floating action button how work this floating button action
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        elevation: 50,
        child: Icon(Icons.add),
        onPressed: (){MySnackBar('This is add button', context);},
      ),
      ///This programme is about botttom tab navigation and how  work this bottom tab navigation
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person),label:'Person'),
            BottomNavigationBarItem(icon: Icon(Icons.message),label:'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.email),label:'Email')
          ],
          currentIndex: 1,
          onTap: (int index){
            if(index==0){
              MySnackBar('This is Person button', context);
            }
            else if(index==1){
              MySnackBar('This is Message button',context);
            }
            else{
              MySnackBar('This is Email button', context);
            }
          }
      ),
      ///I creat a drawer for my jinish potro rakhar jonno
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text('Majedul islam',style: TextStyle(color: Colors.black),),
                accountEmail:Text('imajedul661@gmail.com',style: TextStyle(color: Colors.black),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/majed.png'), // Specify your image asset here
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.home),title:Text('HOME'),onTap: (){MySnackBar('home icon', context);},),
            ListTile(leading: Icon(Icons.phone),title:Text('CONTACT'),onTap: (){MySnackBar('contact icon', context);},),
            ListTile(leading: Icon(Icons.email),title:Text('EMAIL'),onTap: (){MySnackBar('email icon', context);},),
            ListTile(leading: Icon(Icons.person),title:Text('PROFILE'),onTap: (){MySnackBar('profile icon', context);},),
            ListTile(leading: Icon(Icons.search),title:Text('SEARCH'),onTap: (){MySnackBar('search icon', context);},),
          ],
        ),
      ),
    );
  }
}
