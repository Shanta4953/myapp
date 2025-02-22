import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lab06AdvancedUI());
}

class Lab06AdvancedUI extends StatelessWidget {
  const Lab06AdvancedUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab O6 Advanced UI",
      home: Scaffold(
        appBar: AppBar(title: Text("Lab O6 Advanced UI")),
        body: Center(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl:
                    "https://cdn.prod.website-files.com/61845f7929f5aa517ebab941/6440f9477c2a321f0dd6ab61_How%20Artificial%20Intelligence%20(AI)%20Is%20Used%20In%20Biometrics.jpg",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmWru8q17zpOzzzT1s475ZS_8fOL1GS0teSw&s'),
              ),
              Expanded(
                child: Image(
                  image: NetworkImage(
                      'https://fastly.picsum.photos/id/337/536/354.jpg?hmac=T7nJ4MjfcTPFuaaLRH_1zwqyOFzmldcV-f5abNr2MyE'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
