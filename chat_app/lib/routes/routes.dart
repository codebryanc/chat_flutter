import 'package:flutter/material.dart';

import 'package:chat_app/pages/Loading_page.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/registrer_page.dart';
import 'package:chat_app/pages/usuarios_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  '/': (_) => const LoginPage(),
  '/users': (_) => const UsersPage(),
  '/chat': (_) => const ChatPage(),
  '/login': (_) => const LoginPage(),
  '/registrer': (_) => const RegistrerPage(),
  '/loading': (_) => const LoadingPage(),
};