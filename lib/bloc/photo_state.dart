part of 'photo_bloc.dart';

@immutable
abstract class PhotoState {}

class PhotoInitial extends PhotoState {}

class PhotoLoaded extends PhotoState {
  final List<Photo> photo;
  final List<Photo> news;

  PhotoLoaded(this.photo, this.news);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PhotoLoaded &&
        listEquals(other.photo, photo) &&
        listEquals(other.news, news);
  }

  @override
  int get hashCode => photo.hashCode ^ news.hashCode;
}
