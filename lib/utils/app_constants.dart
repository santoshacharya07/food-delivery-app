import 'package:flutter/material.dart';

class AppConstants {
  static const String APP_NAME = "84 BENJAN";
  static const int APP_VERSION = 1;

  static const String BASE_URL = "http://127.0.0.1:8000";
  static const String BASE_URL2 = "http://localhost:8000";
  static const POPULAR_PRODUCT_URI = "/api/v1/products/popular";
  static const RECPMMENDED_PRODUCT_URI = "/api/v1/products/recommended";
  // static const DRINKS_URI = "/api/v1/products/drinks";

//auth end points //user
  static const String REGISTRATION_URI = "/api/v1/auth/register";
  static const String LOGIN_URI = "/api/v1/auth/login";
  static const String USER_INFO_URI = "/api/v1/customer/info";
//
  static const String UPLOAD_URL = "/uploads/";

  static const String TOKEN = "";
  static const String EMAIL = "";
  static const String PASSWORD = "";

  static const String CART_LIST = "cart-list";
  static const String CART_HISTORY_LIST = "cart-history-list";
}
