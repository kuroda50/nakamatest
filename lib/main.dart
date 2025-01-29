// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:device_preview/device_preview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'screens/advertisements_screen/advertisements_list_screen.dart';
import 'screens/advertisements_screen/advertisements_screen.dart';
import 'screens/blog_screen/blog_list_screen.dart';
import 'screens/blog_screen/blog_screen.dart';
import 'screens/chage_password_screen/after_chage_password_screen.dart';
import 'screens/chage_password_screen/chage_password_screen.dart';
import 'screens/edit_profile_screen/edit_profile_screen.dart';
import 'screens/favorite_list_screen/favorite_list_screen.dart';
import 'screens/feedback_scren/after_feedback_screen.dart';
import 'screens/feedback_scren/feedback_scren.dart';
import 'screens/for_tour_orner_screen/for_tour_orner_screen.dart';
import 'screens/gather_screen/gather_screen.dart';
import 'screens/login_screen/login_screen.dart';
import 'screens/look_for_by_hobby_screen/look_for_by_hobby_screen.dart';
import 'screens/look_for_near_tourists_screen/look_for_near_tourists.dart';
import 'screens/message_screen/message_list_screen.dart';
import 'screens/message_screen/message_screen.dart';
import 'screens/news_list_screen/news_list_screen.dart';
import 'screens/post_advertisement_screen/post_advertisement_screen.dart';
import 'screens/result_of_search_screen/result_of_search_screen.dart';
import 'screens/sign_up_screen/after_sign_up_screen.dart';
import 'screens/sign_up_screen/sign_up_screen.dart';
import 'screens/terms_of_service_screen/terms_of_service_screen.dart';
import 'screens/tour_screen/tour_list_screen.dart';
import 'screens/tour_screen/tour_screen.dart';

final strProvider = Provider((ref) {
  return 'Hello Riverpod';
});
void main() => runApp(
  ProviderScope(
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    ));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "仲間と集まろう！",
      theme: ThemeData(primaryColor: Colors.white),
      initialRoute: "/advertisements_list",
      routes: {
        '/advertisements_list': (context) => AdvertisementList(),
        '/advertisements': (context) => SimpleOverlayExample(),
        '/blog_list': (context) => BlogList(),
        '/blog': (context) => Blog(),
        '/after_change_password': (context) => AfterChagePassword(),
        '/change_password': (context) => ChagePassword(),
        '/edit_profile': (context) => EditProfile(),
        '/favorite_list': (context) => FavoriteList(),
        '/after_feedback': (context) => AfterFeedback(),
        '/feedbacks': (context) => Feedbacks(),
        '/for_tour_orner': (context) => ForTourOrner(),
        '/gather': (context) => Gather(),
        '/login': (context) => Login(),
        '/look_for_by_hobby': (context) => LookForByHobby(),
        '/look_for_near_tourists': (context) => LookForNearTourists(),
        '/message_list': (context) => MessageList(),
        '/message': (context) => Message(),
        '/news_list': (context) => NewsList(),
        '/post_advertisement': (context) => PostAdvertisement(),
        '/result_of_search': (context) => ResultOfSearch(),
        '/terms_of_service': (context) => TermsOfService(),
        '/after_sign_up': (context) => AfterSignUp(),
        '/sign_up': (context) => SignUp(),
        '/tour_list': (context) => TourList(),
        '/tour': (context) => Tour(),
      },
    );
  }
}

