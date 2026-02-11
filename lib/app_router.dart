import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/note_list_screen.dart';
import 'screens/note_detail_screen.dart';
import 'screens/note_form_screen.dart';
import 'screens/settings_screen.dart';

class AppRouter {
  static Map<String, WidgetBuilder> get routes {
    return {
      '/': (context) => const HomeScreen(),
      '/home_screen': (context) => const HomeScreen(),
      '/note_list_screen': (context) => const NoteListScreen(),
      '/note_detail_screen': (context) => const NoteDetailScreen(),
      '/note_form_screen': (context) => const NoteFormScreen(),
      '/settings_screen': (context) => const SettingsScreen(),
    };
  }
}
