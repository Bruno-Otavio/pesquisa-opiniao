import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pesquisa_opiniao/main.dart';
import 'package:pesquisa_opiniao/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirestoreService _firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Enquetes', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: StreamBuilder<QuerySnapshot>(
        stream: _firestoreService.getEnquetes(), 
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List data = snapshot.data!.docs;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                DocumentSnapshot document = data[index];
                Map<String, dynamic> enquete = document.data() as Map<String, dynamic>;

                final radioOptions = [ enquete['option1'], enquete['option2'] ];
                String radioValue = '';

                return Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.blue.shade900,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        enquete['title'], 
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RadioListTile(
                        title: Text(enquete['option1']),
                        groupValue: radioValue,
                        value: radioOptions[0],
                        onChanged: (value) {
                          setState(() {
                            radioValue = value.toString();
                          });
                        }
                      ),
                      RadioListTile(
                        title: Text(enquete['option2']),
                        groupValue: radioValue,
                        value: radioOptions[1],
                        onChanged: (value) {
                          setState(() {
                            radioValue = value.toString();
                          });
                        }
                      ),
                    ]
                  ),
                );
              }
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(child: CircularProgressIndicator());
        }
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigatorKey.currentState?.pushNamed('/create'),
        backgroundColor: Colors.blue.shade800,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}
