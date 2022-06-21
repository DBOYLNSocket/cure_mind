import 'package:flutter/material.dart';
import 'database/message_db_connect.dart';
import 'message_list_page.dart';
import 'package:clone_sheage_app/view/top/top_screen_sample_data.dart';

class MatchingPage extends StatefulWidget {
  const MatchingPage({Key? key}) : super(key: key);

  @override
  _MatchingPageState createState() => _MatchingPageState();
}
class _MatchingPageState extends State<MatchingPage> {
  List<Matching_Users> matching_users = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    loadMessages();
  }

  @override
  void dispose() {
    MessageDBConnect.instance.closeDatabase();
    super.dispose();
  }

  Future loadMessages() async {
    setState(() => isLoading = true);
    Messages = await MessageDBConnect.instance.readAllMessagesSample();
    setState(() => isLoading = false);
  }

  @override
  Widget buildImageInteractionCard() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Ink.image(
                image: const AssetImage('assets/images/cafe.jpeg'),
                height: 100, // この高さを固定値じゃなくて親widgetの半分の高さにしたい
                fit: BoxFit.fill,
              ),
              const Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Text(
                  'Cats rule the world!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
              'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class TopScreen extends StatelessWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true, // 謎の余白ができるので対策
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      width: MediaQuery.of(context).size.width - 30.0,
                      height: MediaQuery.of(context).size.height - 50.0,
                      child: GridView.count(
                        crossAxisCount: 2,
                        primary: false,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        childAspectRatio: 0.8,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          for (var i = 0; i < 6; i++)
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0, bottom: 5.0, left: 5.0, right: 5.0),
                              child: TopGridImageCard(
                                imagePath: cardSampleList[i].imagePath,
                                content: cardSampleList[i].content,
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopGridImageCard extends StatelessWidget {
  final String imagePath, content;
  const TopGridImageCard({
    Key? key,
    required this.imagePath,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: null,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            ),
          ],
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            FractionallySizedBox( // 親widgetのサイズから子widgetのサイズを指定できる
              heightFactor: 0.5, // 親widgetの半分のheightに
              widthFactor: 1, // 親widgetのwidthに合わせる
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft, // 親widgetのbottomに合わせて配置
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 1,
                child: Column(
                  children: [
                    const SizedBox(),
                    Padding(
                      padding: const EdgeInsets.all(12).copyWith(bottom: 0),
                      child: Text(
                        content,
                        style: const TextStyle(fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}