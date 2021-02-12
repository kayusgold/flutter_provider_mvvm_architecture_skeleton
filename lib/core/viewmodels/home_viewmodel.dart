import 'package:eazi_achitecture/core/enums/viewstates.dart';
import 'package:eazi_achitecture/core/models/models.dart';
import 'package:eazi_achitecture/core/services/api.dart';
import 'package:eazi_achitecture/core/viewmodels/base_model.dart';

import '../../locator.dart';

class HomeModel extends BaseModel {
  //Interact with Services here e.g: make a request to the server by calling the function that does that in service.
  //set view state etc.
  //Example: get user profile from the API service
  Api _api = locator<Api>();

  User user;

  Future getUser(int userID) async {
    setState(ViewState.Busy);
    user = await _api.getUserProfile(userID);
    setState(ViewState.Idle);
  }
}
