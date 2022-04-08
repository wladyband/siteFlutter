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

  static const cities = [
    {"name": "Picos", "state": "Piauí"},
    {"name": "Teresina", "state": "Piauí"},
    {"name": "São Paulo Capital", "state": "São Paulo"},
    {"name": "São lourenço", "state": "São Paulo"},
    {"name": "A Texas", "state": "Texas"},
    {"name": "B Texas", "state": "Texas"},
    {"name": "A California", "state": "California"},
    {"name": "B California", "state": "California"},
    {"name": "A Alberta", "state": "Alberta"},
    {"name": "B Alberta", "state": "Alberta"},
    {"name": "A Quebec", "state": "Quebec"},
    {"name": "B Quebec", "state": "Quebec"},
  ];
  static const states = [
    {"name": "São Paulo", "country": "Brasil"},
    {"name": "Piauí", "country": "Brasil"},
    {"name": "Texas", "country": "EUA"},
    {"name": "California", "country": "EUA"},
    {"name": "Alberta", "country": "Canada"},
    {"name": "Quebec", "country": "Canada"},
  ];
  static const countries = [
    {"name": "Brasil"},
    {"name": "EUA"},
    {"name": "Canada"},
  ];
}
