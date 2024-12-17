import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/imdb_provider.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    int i = ModalRoute.of(context)!.settings.arguments as int;
    var pw = context.watch<ImdbProvider>();
    var pr = context.read<ImdbProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details page"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Image.network(
              '${pr.imdbModal?.dataModal?.mainSearchModal?.edgelist?[i].nodeModal?.entityModal?.primaryimageModal?.url}}',
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Details :",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
                "Original Name : ${pr.imdbModal?.dataModal?.mainSearchModal?.edgelist?[i].nodeModal?.entityModal?.originalModal?.text}"),
            subtitle: Text(
                "Release Date : ${pr.imdbModal?.dataModal?.mainSearchModal?.edgelist?[i].nodeModal?.entityModal?.releasedateModal?.day}/${pr.imdbModal?.dataModal?.mainSearchModal?.edgelist?[i].nodeModal?.entityModal?.releasedateModal?.month}/${pr.imdbModal?.dataModal?.mainSearchModal?.edgelist?[i].nodeModal?.entityModal?.releasedateModal?.year}"),
          ),
          Container()
        ],
      ),
    );
  }
}
