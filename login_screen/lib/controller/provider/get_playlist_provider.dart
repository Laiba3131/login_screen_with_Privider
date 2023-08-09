import 'package:flutter/cupertino.dart';
import 'package:login_screen/controller/service/api_manager.dart';

class GetPlayListProvider extends ChangeNotifier
{
    bool loading = false;
    var playlist;

    getPlaylist(context) async
    {
      loading= true;
      notifyListeners();
      playlist=await ApiManager.getPlayList(context);
      loading= false;
      notifyListeners();
    }
}