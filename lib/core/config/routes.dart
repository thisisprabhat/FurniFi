import 'package:flutter/material.dart';
import '/presentation/screens/settings/ui/settings_page.dart';
import '/presentation/screens/track_order/ui/track_order_page.dart';
import '/presentation/screens/product/ui/product_details_page.dart';
import '/presentation/screens/feedback/ui/feedback_page.dart';
import '/presentation/screens/order_summary/ui/order_summary.dart';
import '/presentation/screens/cart/ui/cart_page.dart';
import '/presentation/screens/orders/ui/orders_page.dart';
import '/presentation/screens/favourite/ui/favourites_page.dart';
import '/presentation/screens/address/ui/change_address.dart';
import '/presentation/screens/address/ui/add_address.dart';
import '/presentation/screens/notification/ui/notification.dart';
import '/presentation/screens/authentication/ui/login.dart';
import '/presentation/screens/authentication/ui/signup.dart';
import '/presentation/screens/onboarding/ui/onboarding_screen.dart';
import '/presentation/screens/mainpage/ui/mainpage.dart';
import '/presentation/screens/profile/ui/profile_page.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainPage.route:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case OnboardingScreen.route:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Login.route:
        return MaterialPageRoute(builder: (_) => const Login());
      case Signup.route:
        return MaterialPageRoute(builder: (_) => const Signup());
      case NotificationPage.route:
        return MaterialPageRoute(builder: (_) => const NotificationPage());
      case ProfilePage.route:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case AddAddress.route:
        return MaterialPageRoute(builder: (_) => const AddAddress());
      case ChangeAddress.route:
        return MaterialPageRoute(builder: (_) => const ChangeAddress());
      case FavouritesPage.route:
        return MaterialPageRoute(builder: (_) => const FavouritesPage());
      case OrdersPage.route:
        return MaterialPageRoute(builder: (_) => const OrdersPage());
      case CartPage.route:
        return MaterialPageRoute(builder: (_) => const CartPage());
      case OrderSummary.route:
        return MaterialPageRoute(builder: (_) => const OrderSummary());
      case FeedbackPage.route:
        return MaterialPageRoute(
          builder: (_) => const FeedbackPage(),
          fullscreenDialog: true,
        );
      case ProductDetailsPage.route:
        return MaterialPageRoute(builder: (_) => const ProductDetailsPage());
      case TrackOrderPage.route:
        return MaterialPageRoute(builder: (_) => const TrackOrderPage());
      case SettingsPage.route:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      default:
        return null;
    }
  }
}
