import 'package:diocese_santos/presentation/presenters/rx/register/upload_photo_presenter.dart';
import 'package:diocese_santos/ui/pages/register/upload_photo_page.dart';
import 'package:flutter/material.dart';

Widget makeRegisterUploadPhotoPage() {
  final presenter = RegisterUploadPhotoRxPresenter();
  return RegisterUploadPhotoPage(presenter: presenter);
}
