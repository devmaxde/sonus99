import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class DefaultScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  final bool? backButton;
  IconButton? overrideButton;
  final Widget? floatingActionButton;
  final int bottomNavigationBarIndex;
  final bool disableScroll;
  final bool disableBottomNavigation;
  final bool disableDecoration;
  Function? refresh;
  final Function? overrideBackButton;

  DefaultScaffold(
      {super.key,
        required this.title,
        required this.child,
        this.backButton,
        this.floatingActionButton,
        this.bottomNavigationBarIndex = 0,
        this.disableScroll = false,
        this.disableBottomNavigation = false,
        this.disableDecoration = false,
        this.refresh,
        this.overrideBackButton});

  @override
  Widget build(BuildContext context) {
    if (backButton == null) {
      overrideButton = IconButton(
        icon: const Icon(Icons.home),
        iconSize: 30,
        onPressed: () async {
        },
      );
    } else {
      overrideButton = IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        iconSize: 30,
        onPressed: () {
          if (overrideBackButton != null) {
            overrideBackButton!();
            return;
          }

          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          } else {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AlertDialog(
                    title: Text("Fehler"),
                    content: Text("Du hast die Startseite erreicht!"),
                  );
                });
          }
        },
      );
    }

    Widget body = Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: child,
    );

    refresh ??= () async {
      return true;
    };

    if (!disableScroll) {
      body = RefreshIndicator(
          onRefresh: () async {
            await refresh!();
          },
          child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: child,
              )));
    }

    if (!disableDecoration) {
      body = Container(
          color: Theme.of(context).primaryColor,
          child: Container(
              width: MediaQuery.of(context).size.width.roundToDouble(),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              child: body));
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(title),
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
          ],
          leading: overrideButton,
        ),
        floatingActionButton: floatingActionButton,
        body: body);
  }
}
