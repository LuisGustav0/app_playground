import 'package:flutter/material.dart';

class ListAnimationImplicitPage extends StatefulWidget {
  const ListAnimationImplicitPage({super.key});

  @override
  State<ListAnimationImplicitPage> createState() =>
      _ListAnimationImplicitPageState();
}

class TitleModel {
  final String title;
  final String subtitle;

  TitleModel({
    required this.title,
    required this.subtitle,
  });
}

class _ListAnimationImplicitPageState extends State<ListAnimationImplicitPage> {
  Future<List<Widget>> _fetchListItems() async {
    List<Widget> listWidget = [];

    for (int i = 0; i < 50; i++) {
      listWidget.add(
        ExpansionTile(
          title: Text('My expansion title $i'),
          children: const [
            ListTile(
              title: Text(
                'Lorem Ipsum is simply dummy text of the '
                'printing and typesetting industry. Lorem Ipsum has been the'
                ' industrys standard dummy text ever since the 1500s, when '
                'an unknown printer took a galley of type and scrambled it '
                'to make a type specimen book. It has survived not only '
                'five centuries, but also the leap into electronic '
                'typesetting, remaining essentially unchanged. It was '
                'popularised in the 1960s with the release of Letraset '
                'sheets containing Lorem Ipsum passages, and more recently '
                'with desktop publishing software like Aldus PageMaker '
                'including versions of Lorem Ipsum',
              ),
            ),
          ],
        ),
      );
    }

    return listWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Animation Implícita'),
      ),
      body: FutureBuilder(
        future: _fetchListItems(),
        builder: (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (BuildContext context, int index) {
              return snapshot.data![index];
            },
          );
        },
      ),
    );
  }
}
