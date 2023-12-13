import 'package:flutter/foundation.dart';

class Apis {
  static const String urlScheme = 'https';

  static const String debug = "api-test-multivendor.mazadak.net/api/v1/";

  static const String release = "api.bridgeskw.com/api/v1/";

  static const String baseUrl = "$urlScheme://${kDebugMode ? debug : release}";

  static const String appId = "uCwJMa1md7XFhVZ";

  static const String doLoginApiCall = "backend/auth/login";

  static const String doLogoutApiCall = "auth/logout";

  static const String doForgetPasswordApiCall = "frontend/auth/forget-password";

  static const String doVerifyResetPasswordApiCall = "frontend/auth/verify-reset-password";

  static const String doResetPasswordApiCall = "frontend/auth/reset-new-password";

  static const String doChangePasswordApiCall = "frontend/auth/update-password";

  static const String getProfileApiCall = "auth/me";

  static const String doRegisterApiCall = "frontend/auth/register";
  static const String doContactUs = "/backend/contact";

  static const String sendFcmToken = "auth/fcmToken";
  static const String getProducts = "products";
  static const String getCategories = "backend/categories";
  static const String getAttributes = "backend/attributes";
  static const String getBrands= "brands";
  static const String getNotifications = "backend/notifications";
  static const String getNotificationsBadgeCount = "backend/notifications/badgeCount";
  static const String seeNotifications = "backend/notifications/read";
  static const String getEarningReportsBarChart= "backend/reports/barChart";
  static const String getBrandsRatio= "backend/reports/donutChart";
  static const String getNewOrder= "backend/reports/analytics";
  static const String getStatistics= "backend/reports/statistics";
  static const String getCoupons = "frontend/coupons";
  static const String getOrders= "backend/orders";
  static const String getPaymentInfo= "frontend/orders/payment-info";
  static const String getAddresses = "frontend/user-address";
  static const String getCart = "frontend/carts";
  static const String removeFromCart = "frontend/carts/remove-product";
  static const String addToCart = "frontend/carts/add-product";
  static const String applyCoupon = "frontend/carts/apply-coupon";
  static const String getOffers = "backend/offers/";
  static const String getFavorites = "frontend/wishlist";
  static const String getRate = "frontend/reviews";
  static const String getCountryCodeData = "countries";
  static const String getAboutData = "frontend/pages/aboutus";
  static String getVendorDetails = "appSettings";
  static String getAppPages = "backend/pages";



  static String addFavorite(dynamic id) => "/frontend/wishlist/$id";
  static String getProductDetails(dynamic id) => "backend/products/$id";
  static String getReviews(dynamic id) => "/frontend/reviews/$id";
  static String getOrderDetails(dynamic id) => "/backend/orders/$id";
  static String getAddressDetails(dynamic id) => "/frontend/user-address/$id";
  static String getRelatedProduct(dynamic id) => "frontend/products/related-products/$id";
  static String removeAddress(dynamic id) => "frontend/user-address/$id";
  static String editAddress(dynamic id) => "frontend/user-address/$id";
  static String cancelOrder(dynamic id) => "frontend/orders/$id/cancel";

  static String getPageWithSlug(dynamic id) => "backend/pages/$id";

}
