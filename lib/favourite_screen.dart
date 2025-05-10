import 'package:flutter/material.dart';
import 'package:flutter_application_1/favourite_class.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("called");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("FavouriteScreen"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(child: Consumer<FavouriteClass>(
                      builder: (context, value, child) {
                    return InkWell(
                      onTap: () {
                        if (value.data.contains(index)) {
                          value.remove(index);
                        } else {
                          value.add(index);
                        }
                      },
                      child: ListTile(
                        title: Text(
                          '${index + 1}',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: value.data.contains(index)
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_outline,
                                color: const Color.fromARGB(255, 66, 64, 64),
                              ),
                      ),
                    );
                  }));
                }),
          )
        ],
      ),
    );
  }
}

// Icon(Icons.favorite)