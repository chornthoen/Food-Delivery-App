
import 'package:flutter/material.dart';
import 'package:foods/screen/calling_page.dart';
import 'package:foods/screen/calling_success_page.dart';
import 'package:foods/screen/congrate_page.dart';
import 'package:foods/screen/deliver_to_page.dart';
import 'package:foods/screen/fill_bio_page.dart';
import 'package:foods/screen/forgot_password1_page.dart';
import 'package:foods/screen/forgot_password_page.dart';
import 'package:foods/screen/menu_details_page.dart';
import 'package:foods/screen/message_page.dart';
import 'package:foods/screen/notification_page.dart';
import 'package:foods/screen/order_completed_page.dart';
import 'package:foods/screen/order_details.dart';
import 'package:foods/screen/payment_method_1.dart';
import 'package:foods/screen/payment_method_page.dart';
import 'package:foods/screen/rate_driver_page.dart';
import 'package:foods/screen/rate_restaurant_page.dart';
import 'package:foods/screen/reset_password.dart';
import 'package:foods/screen/restaurant_profile_page.dart';
import 'package:foods/screen/see_all_favorite_page.dart';
import 'package:foods/screen/see_all_menu.dart';
import 'package:foods/screen/see_all_popular_restaurant_page.dart';
import 'package:foods/screen/set_location.dart';
import 'package:foods/screen/sign_in_page.dart';
import 'package:foods/screen/sign_up_page.dart';
import 'package:foods/screen/testimonial_page.dart';

import '../screen/chat_page.dart';
import '../screen/find_food.dart';
import '../screen/get_started_screen.dart';
import '../screen/home_page.dart';
import '../screen/main_page.dart';
import '../screen/orders_page.dart';
import '../screen/popular_restaurants.dart';
import '../screen/profile_page.dart';
import '../screen/rate_meal_page.dart';
import '../screen/reset_password_successe.dart';
import '../screen/see_all_popularmenu_page.dart';
import '../screen/select_locatin_page.dart';
import '../screen/set_location_page.dart';
import '../screen/splash_screen.dart';
import '../screen/track_order_page.dart';
import '../screen/update_photo_page.dart';
import '../screen/update_photo_profile.dart';

Route<RouteSettings> onGenerateRoute(RouteSettings settings) {
  var args = settings.arguments;

  switch (settings.name) {
    case SplashPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashPage(),
      );
    case MenuDetailPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  MenuDetailPage(),
      );
    case TestimonialPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  TestimonialPage(),
      );
    case RestaurantProfilePage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  RestaurantProfilePage(),
      );
    case TrackOrderPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  TrackOrderPage(),
      );
    case SetLocation.routeName:
      return MaterialPageRoute(
        builder: (context) =>  SetLocation(),
      );
    case PaymentMethod1Page.routeName:
      return MaterialPageRoute(
        builder: (context) =>  PaymentMethod1Page(),
      );
    case DeliverToPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  DeliverToPage(),
      );
    case RateRestaurantPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  RateRestaurantPage(),
      );
    case RateMealPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  RateMealPage(),
      );
    case RateDriverPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  RateDriverPage(),
      );
    case OrderCompletedPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  OrderCompletedPage(),
      );
    case CallingSuccessPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  CallingSuccessPage(),
      );
    case CallingPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  CallingPage(),
      );
    case MessagePage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  MessagePage(),
      );
    case SeeAllMenu.routeName:
      return MaterialPageRoute(
        builder: (context) =>  SeeAllMenu(),
      );
    case SeeAllFavoritePage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  SeeAllFavoritePage(),
      );
    case NotificationPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  NotificationPage(),
      );
    case FindFoodPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  FindFoodPage(),
      );
    case OrderDetailsPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  OrderDetailsPage(),
      );
    case SeeAllPopularRestaurant.routeName:
      return MaterialPageRoute(
        builder: (context) =>  SeeAllPopularRestaurant(),
      );
    case SeeAllPopularMenuPage.routeName:
      return MaterialPageRoute(
        builder: (context) =>  SeeAllPopularMenuPage(),
      );

    case UpdateProfilePage.routeName:
      return MaterialPageRoute(
        builder: (context) => const UpdateProfilePage(),
      );
    case UpdatePhotoPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const UpdatePhotoPage(),
      );
    case CongratsPasswordSuccessfulPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const CongratsPasswordSuccessfulPage(),
      );
    case CongratsPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const CongratsPage(),
      );
    case FillBioPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const FillBioPage(),
      );
    case PaymentMethodPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const PaymentMethodPage(),
      );
    case SetLocationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const SetLocationPage(),
      );
    case SelectLocationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const SelectLocationPage(),
      );
    case ForgotPasswordSelect.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgotPasswordSelect(),
      );
    case ResetPasswordPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const ResetPasswordPage(),
      );
    case GetStartedPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const GetStartedPage(),
      );
    case SignInPage.routeName:
      return MaterialPageRoute(
        builder: (context) => SignInPage(),
      );
    case SignUpPage.routeName:
      return MaterialPageRoute(
        builder: (context) => SignUpPage(),
      );
    case ForgotPasswordPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ForgotPasswordPage(),
      );
    case MainPage.routeName:
      return MaterialPageRoute(
        builder: (context) => MainPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    case OrdersPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OrdersPage(),
      );
    case ChatPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ChatPage(),
      );
    case ProfilePage.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfilePage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
