import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _WriteAccountBook = false;
  bool get WriteAccountBook => _WriteAccountBook;
  set WriteAccountBook(bool _value) {
    _WriteAccountBook = _value;
  }

  List<dynamic> _accountBooks = [];
  List<dynamic> get accountBooks => _accountBooks;
  set accountBooks(List<dynamic> _value) {
    _accountBooks = _value;
  }

  void addToAccountBooks(dynamic _value) {
    _accountBooks.add(_value);
  }

  void removeFromAccountBooks(dynamic _value) {
    _accountBooks.remove(_value);
  }

  void removeAtIndexFromAccountBooks(int _index) {
    _accountBooks.removeAt(_index);
  }

  void updateAccountBooksAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _accountBooks[_index] = updateFn(_accountBooks[_index]);
  }

  void insertAtIndexInAccountBooks(int _index, dynamic _value) {
    _accountBooks.insert(_index, _value);
  }

  bool _makeFriendsRoom = false;
  bool get makeFriendsRoom => _makeFriendsRoom;
  set makeFriendsRoom(bool _value) {
    _makeFriendsRoom = _value;
  }

  bool _submitQuiz = false;
  bool get submitQuiz => _submitQuiz;
  set submitQuiz(bool _value) {
    _submitQuiz = _value;
  }

  int _roomId = 0;
  int get roomId => _roomId;
  set roomId(int _value) {
    _roomId = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
