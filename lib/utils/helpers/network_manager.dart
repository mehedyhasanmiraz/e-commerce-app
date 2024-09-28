import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../popups/loader.dart';


/// Manage the network connectivity status and provides method to check and handle connectivity change
class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  /// Initialize network manager and set up stream to continually check the connection status
  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus as void Function(List<ConnectivityResult> event)?) as StreamSubscription<ConnectivityResult>;


  }


  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;
    if (_connectionStatus.value == ConnectivityResult.none) {
      TLoaders.warningSnackBar(title: "No Internet Connection");
    }
  }


  /// Check the internet connection status
  /// Return 'true' is connected 'false' otherwise
  Future<bool> isConnected() async {
  try {
    final result = await _connectivity.checkConnectivity();
    if(result == ConnectivityResult.none){
      return false;
    }else{
      return true;
    }
  }on PlatformException catch(_){
    return false;
    }
  }

  /// Dispose or close connectivity stream
  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }
}