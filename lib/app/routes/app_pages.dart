import 'package:get/get.dart';

import '../modules/bottom_navigation/bindings/bottom_navigation_binding.dart';
import '../modules/bottom_navigation/views/bottom_navigation_view.dart';
import '../modules/course_detail/bindings/course_detail_binding.dart';
import '../modules/course_detail/views/course_detail_view.dart';
import '../modules/form_signup/bindings/form_signup_binding.dart';
import '../modules/form_signup/views/form_signup_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/meditation/bindings/meditation_binding.dart';
import '../modules/meditation/views/meditation_view.dart';
import '../modules/music/bindings/music_binding.dart';
import '../modules/music/views/music_view.dart';
import '../modules/reminders/bindings/reminders_binding.dart';
import '../modules/reminders/views/reminders_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/sleep/bindings/sleep_binding.dart';
import '../modules/sleep/views/sleep_view.dart';
import '../modules/topic/bindings/topic_binding.dart';
import '../modules/topic/views/topic_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.FORM_SIGNUP,
      page: () => const FormSignupView(),
      binding: FormSignupBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.TOPIC,
      page: () => const TopicView(),
      binding: TopicBinding(),
    ),
    GetPage(
      name: _Paths.REMINDERS,
      page: () => const RemindersView(),
      binding: RemindersBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION,
      page: () => const BottomNavigationView(),
      binding: BottomNavigationBinding(),
    ),
    GetPage(
      name: _Paths.MEDITATION,
      page: () => const MeditationView(),
      binding: MeditationBinding(),
    ),
    GetPage(
      name: _Paths.SLEEP,
      page: () => const SleepView(),
      binding: SleepBinding(),
    ),
    GetPage(
      name: _Paths.COURSE_DETAIL,
      page: () => const CourseDetailView(),
      binding: CourseDetailBinding(),
    ),
    GetPage(
      name: _Paths.MUSIC,
      page: () => const MusicView(),
      binding: MusicBinding(),
    ),
  ];
}
