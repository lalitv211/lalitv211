import 'package:get/get.dart';

import '../controllers/photo_album_add_new_page_controller.dart';

class PhotoAlbumAddNewPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhotoAlbumAddNewPageController>(
      () => PhotoAlbumAddNewPageController(),
    );
  }
}
