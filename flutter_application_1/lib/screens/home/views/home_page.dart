import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/imdb_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<ImdbProvider>().getImdbData();
  }

  @override
  Widget build(BuildContext context) {
    var pw = context.watch<ImdbProvider>();
    var pr = context.read<ImdbProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: ListView.builder(
        itemCount: pw.imdbModal?.dataModal?.mainSearchModal?.edgelist?.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'details', arguments: index);
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(blurRadius: 3, color: Colors.grey)
              ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Image.network(
                      '${pr.imdbModal?.dataModal?.mainSearchModal?.edgelist?[index].nodeModal?.entityModal?.primaryimageModal?.url}',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Text(
                          "Name : ${pr.imdbModal?.dataModal?.mainSearchModal?.edgelist?[index].nodeModal?.entityModal?.originalModal?.text}",
                          maxLines: 3,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "release year : ${pr.imdbModal?.dataModal?.mainSearchModal?.edgelist?[index].nodeModal?.entityModal?.releasedateModal?.year}",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
