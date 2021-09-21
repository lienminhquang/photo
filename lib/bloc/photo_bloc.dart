import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:photo/models/photo.dart';
import 'package:photo/viewmodels/photo_viewmodel.dart';

part 'photo_event.dart';
part 'photo_state.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  PhotoBloc(this.photoViewmodel) : super(PhotoInitial());
  final PhotoViewmodel photoViewmodel;

  @override
  Stream<PhotoState> mapEventToState(
    PhotoEvent event,
  ) async* {
    if (event is PhotoInitEvent) {
      yield PhotoInitial();
      var all = await photoViewmodel.getAll();
      var news = await photoViewmodel.getNewPhotos();
      yield PhotoLoaded(all, news);
    }
  }
}
