import 'package:eazi_achitecture/core/enums/viewstates.dart';
import 'package:eazi_achitecture/core/viewmodels/home_viewmodel.dart';
import 'package:eazi_achitecture/ui/views/views.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      //wants to access the model functions?
      onModelReady: (model) => model.getUser(1),
      //the model will call that function getuser.
      builder: (context, model, child) => Scaffold(
        //wants to listen to model state: busy or idle?
        body: model.state == ViewState.Busy
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: Text("Hello Home"),
              ),
      ),
    );
  }
}
