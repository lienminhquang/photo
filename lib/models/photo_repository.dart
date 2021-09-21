import 'package:photo/models/photo.dart';

class PhotoRepository {
  final List<Photo> _photos = [
    Photo("assets/images/image2.png"),
    Photo("assets/images/image3.png"),
    Photo("assets/images/image4.png"),
    Photo("assets/images/image5.png"),
    Photo("assets/images/image6.png"),
    Photo("assets/images/image7.png"),
    Photo("assets/images/image8.png"),
    Photo("assets/images/image9.png"),
    Photo("assets/images/image10.png"),
    Photo("assets/images/image11.png")
  ];
  final List<Photo> _newPhotos = [
    Photo("assets/images/image1.png"),
  ];
  Future<List<Photo>> getAll() {
    return Future(() => _photos);
  }

  Future<List<Photo>> getNewPhoto() {
    return Future(() => _newPhotos);
  }
}
