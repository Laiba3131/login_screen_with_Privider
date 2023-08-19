import 'package:flutter/cupertino.dart';
import 'package:login_screen/controller/service/api_manager.dart';

class GetPlayListProvider extends ChangeNotifier {
  bool loading1 = false;
  bool loading2 = false;
  bool loading3 = false;
  bool loading4 = false;
  var playlist;

  getPlaylist(context) async {
    loading1 = true;
    notifyListeners();
    playlist = await ApiManager.getPlayList(context);
    loading1 = false;
    notifyListeners();
  }

  addPlaylist(context, name) async {
    loading2 = true;
    notifyListeners();
    await ApiManager.addPlayList(context, name);
    getPlaylist(context);
    loading2 = false;
    notifyListeners();
  }

  delPlayList(context, id) async {
    loading3 = true;
    notifyListeners();
    await ApiManager.delPlayList(context, id);
    getPlaylist(context);
    loading3 = false;
    notifyListeners();
  }

  updatePlayList(context, updatedName, id) async {
    loading4 = true;
    notifyListeners();
    await ApiManager.updatePlayList(context, updatedName, id);
    getPlaylist(context);
    notifyListeners();
  }
}
