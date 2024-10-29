//
// import 'dart:developer';
// import 'package:get/get.dart';
// import '../model/directory_model.dart';
// import 'directory_repository.dart';
//
// class DirectoryController extends GetxController implements GetxService {
//   static DirectoryController get current => Get.find();
//   final DirectoryRepository repository = DirectoryRepository();
//
//   bool _isLoading = false;
//
//   bool get isLoading => _isLoading;
//
//   bool _hasError = false;
//
//   bool get hasError => _hasError;
//
//   // =/@ Directory Model
//   DirectoryModel? directoryModel;
//
//   Future getDirectoryList() async {
//     try {
//       _isLoading = true;
//       _hasError = false;
//       update();
//
//       final response = await repository.getDirectoryList();
//       directoryModel = response;
//
//       _isLoading = false;
//       update();
//     } catch (e, s) {
//       log('Error: ', error: e, stackTrace: s);
//       _isLoading = false;
//       _hasError = true;
//       update();
//     }
//   }
// }
