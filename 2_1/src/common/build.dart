import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';

import '../common/text.dart';
import '../utils/create_components.dart';

class Build {
  var _users;
  var _infoStrings;
  var muted;
  final _onToggleMute;
  final _onCallEnd;
  final _onSwitchCamera;

  Build(this._users,this._infoStrings,this.muted,this._onToggleMute,this._onCallEnd,this._onSwitchCamera);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(barTitle),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: <Widget>[
            viewRows(_users),
          ],
        ),
      ),
    );
  }
}
