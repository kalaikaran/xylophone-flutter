import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyX());

class MyX extends StatefulWidget {
  @override
  _MyXState createState() => _MyXState();
}

class _MyXState extends State<MyX> {
  final _player = AudioCache();
  Expanded buildKeys({int key, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          _player.play('note$key.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKeys(key: 1, color: Colors.redAccent),
              buildKeys(key: 2, color: Colors.orangeAccent),
              buildKeys(key: 3, color: Colors.yellowAccent),
              buildKeys(key: 4, color: Colors.greenAccent),
              buildKeys(key: 5, color: Colors.blueAccent),
              buildKeys(key: 6, color: Colors.purpleAccent),
              buildKeys(key: 7, color: Colors.pinkAccent),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  final _player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
//              buildKeys(key: 1),
              Expanded(
                child: FlatButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    _player.play('note1.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orangeAccent,
                  onPressed: () {
                    _player.play('note2.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellowAccent,
                  onPressed: () {
                    _player.play('note3.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    _player.play('note4.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    _player.play('note5.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purpleAccent,
                  onPressed: () {
                    _player.play('note6.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.pinkAccent.shade100,
                  onPressed: () {
                    _player.play('note7.wav');
                  },
                ),
              ),
//              Container(
//                child: Text(nouns.last),
//              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyAudio extends StatefulWidget {
  @override
  _MyAudioState createState() => _MyAudioState();
}

class _MyAudioState extends State<MyAudio> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AudioTest extends StatefulWidget {
  @override
  _AudioTestState createState() => _AudioTestState();
}

class _AudioTestState extends State<AudioTest> {
  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: _Tab(
          children: [
            Text('Play Local Asset \'audio.mp3\':'),
            _Btn(txt: 'Play', onPressed: () => audioCache.play('note1.wav')),
          ],
        ),
      ),
    );
  }
}

class _Tab extends StatelessWidget {
  final List<Widget> children;

  const _Tab({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: children
                .map((w) => Container(child: w, padding: EdgeInsets.all(6.0)))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class _Btn extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;

  const _Btn({Key key, this.txt, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 48.0,
        child: RaisedButton(child: Text(txt), onPressed: onPressed));
  }
}
