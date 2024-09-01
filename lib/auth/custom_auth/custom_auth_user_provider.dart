import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class GlobalLiveAppAuthUser {
  GlobalLiveAppAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<GlobalLiveAppAuthUser> globalLiveAppAuthUserSubject =
    BehaviorSubject.seeded(GlobalLiveAppAuthUser(loggedIn: false));
Stream<GlobalLiveAppAuthUser> globalLiveAppAuthUserStream() =>
    globalLiveAppAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
