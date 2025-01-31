import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceNotifier extends StateNotifier<SharedPreferences?> {
  SharedPreferenceNotifier() : super(null) {
    _init();
  }

  void _init() async {
    state = await SharedPreferences.getInstance();
  }
}

final sharedPreferenceNotifierProvider =
    StateNotifierProvider<SharedPreferenceNotifier, SharedPreferences?>((ref) {
  return SharedPreferenceNotifier();
});

const String lastLatKey = 'lastLat';
const String lastLngKey = 'lastLng';
const String userTokenKey = 'userToken';
