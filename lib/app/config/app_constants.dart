class AppConstants {
  AppConstants._();

  static const apiBase = 'https://azerox.com.br/services';

  static const apiLogin = '$apiBase/jsonusers.asmx/GetUserLogin';
  static const apiPosts = '$apiBase/jsonposts.asmx/GetPostsAlbumByUser';
  static const apiRegister = '$apiBase/jsonusers.asmx/InsertUserFacebook';
  static const apiGetUserByEmail = '$apiBase/jsonusers.asmx/GetUserByEmail';
  static const apiFavoritePost = '$apiBase/jsonposts.asmx/InsertFavorite';
  static const apiDislikePost = '$apiBase/jsonposts.asmx/DeleteFavorite';
  static const apiFavoritedsPost =
      '$apiBase/jsonposts.asmx/GetPostsFavoritesByUser';
  static const apiGetPostsByUser = '$apiBase/jsonposts.asmx/GetPostsByUser';
  static const apiGetPUserBySearch =
      '$apiBase/jsonfriends.asmx/GetFriendsBySearch';
  static const apiInsertPost = '$apiBase/jsonposts.asmx/InsertPost';
  static const apiUploadImage =
      'https://s.azerox.com.br/Services/ImageHandler.ashx';
  static const apiUploadMp3 =
      'https://s.azerox.com.br/Services/AudioHandlerConverterIOS.ashx';
}
