import 'package:diocese_santos/presentation/presenters/upload_photo_presenter.dart';

final class RegisterUploadPhotoPresenterSpy
    implements RegisterUploadPhotoPresenter {
  int uploadPhotoCount = 0;

  @override
  void uploadPhoto() {
    uploadPhotoCount++;
  }
}
