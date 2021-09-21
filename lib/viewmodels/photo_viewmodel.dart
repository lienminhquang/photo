import 'package:photo/models/photo.dart';
import 'package:photo/models/photo_repository.dart';

class PhotoViewmodel {
  final PhotoRepository photoRepository;

  PhotoViewmodel({required this.photoRepository});
  Future<List<Photo>> getAll() {
    return photoRepository.getAll();
  }

  Future<List<Photo>> getNewPhotos() {
    return photoRepository.getNewPhoto();
  }
}
