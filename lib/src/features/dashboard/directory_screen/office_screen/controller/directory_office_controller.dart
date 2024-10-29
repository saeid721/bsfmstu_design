// import 'dart:developer';
// import 'package:get/get.dart';
// import '../model/directory_office_model.dart';
// import 'directory_office_repository.dart';
//
// class DirectoryOfficeController extends GetxController implements GetxService {
//   static DirectoryOfficeController get current => Get.find();
//   final DirectoryOfficeRepository repository = DirectoryOfficeRepository();
//
//   bool _isLoading = false;
//
//   bool get isLoading => _isLoading;
//
//   bool _hasError = false;
//
//   bool get hasError => _hasError;
//
//   // =/@ Directory Office Model
//   DirectoryOfficeModel? directoryOfficeModel;
//
//   Future getDirectoryOfficeList() async {
//     try {
//       _isLoading = true;
//       _hasError = false;
//       update();
//
//       final response = await repository.getDirectoryOfficeList();
//       directoryOfficeModel = response;
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
