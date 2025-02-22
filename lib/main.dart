import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lab06AdvancedUI());
}

/*
Navigation
*/
class Lab06AdvancedUI extends StatelessWidget {
  const Lab06AdvancedUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab O6 Advanced UI",
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(8.0),  // Added padding for better alignment
                child: Row(
                  children: [
                    Icon(Icons.people_alt_rounded, color: Colors.white),
                    SizedBox(width: 10),
                    Text("Contacts", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Device"),
                trailing: Text("0"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Messages"),
                trailing: Text("5"),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(title: Text("Lab O6 Advanced UI")),
        body: SingleChildScrollView(  // Wrap the body to avoid overflow
          child: Center(
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      "data:image/jpeg;base64,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",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Image.network(
                    'https://media.istockphoto.com/id/183412466/photo/eastern-bluebirds-male-and-female.jpg?s=612x612&w=0&k=20&c=6_EQHnGedwdjM9QTUF2c1ce7cC3XtlxvMPpU5HAouhc=',
                  ),
                ),
                SizedBox(height: 20),  // Added space between images
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYyUSpU3kL279ei16K3JgL7h86WKKWHXcJIA&s',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}