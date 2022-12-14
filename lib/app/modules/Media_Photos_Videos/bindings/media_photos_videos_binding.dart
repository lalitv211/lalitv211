import 'package:get/get.dart';

import '../controllers/media_photos_videos_controller.dart';

class MediaPhotosVideosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MediaPhotosVideosController>(
      () => MediaPhotosVideosController(),
    );
  }
}
