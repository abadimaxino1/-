import 'package:flutter/material.dart';

class AIAssistantScreen extends StatefulWidget {
  const AIAssistantScreen({Key? key}) : super(key: key);

  @override
  State<AIAssistantScreen> createState() => _AIAssistantScreenState();
}

class _AIAssistantScreenState extends State<AIAssistantScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _chat = [];

  void sendMessage(String msg) {
    setState(() {
      _chat.add({'user': msg, 'ai': ''});
    });
    // منطق الذكاء الاصطناعي (ربط مع AI API أو ردود جاهزة)
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _chat.last['ai'] = 'هذا رد ذكي افتراضي.';
      });
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('المساعد الذكي')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _chat.length,
              itemBuilder: (context, i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (_chat[i]['user']!.isNotEmpty)
                      ListTile(
                        title: Text(_chat[i]['user']!, textAlign: TextAlign.right, style: TextStyle(color: Colors.teal)),
                        subtitle: Text('أنت'),
                      ),
                    if (_chat[i]['ai']!.isNotEmpty)
                      ListTile(
                        title: Text(_chat[i]['ai']!, style: TextStyle(color: Colors.blueGrey)),
                        subtitle: Text('مساعد تدبير'),
                      ),
                  ],
                );
              },
            ),
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(hintText: 'اكتب سؤالك...'),
                  onSubmitted: sendMessage,
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () => sendMessage(_controller.text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
