import 'package:get/get.dart';

import '../controllers/photo_album_page_controller.dart';

class PhotoAlbumPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotoAlbumPageController>(
      () => PhotoAlbumPageController(),
    );
  }
}
