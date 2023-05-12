class appview {
  bool? success;
  Data? data;

  appview({this.success, this.data});

  appview.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? title;
  String? developer;
  String? category;
  double? rating;
  String? reviews;
  String? price;
  String? installations;
  String? description;
  List<String>? screenshots;
  GameInfo? gameInfo;
  Gameplay? gameplay;

  Data(
      {this.title,
        this.developer,
        this.category,
        this.rating,
        this.reviews,
        this.price,
        this.installations,
        this.description,
        this.screenshots,
        this.gameInfo,
        this.gameplay});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    developer = json['developer'];
    category = json['category'];
    rating = json['rating'];
    reviews = json['reviews'];
    price = json['price'];
    installations = json['installations'];
    description = json['description'];
    screenshots = json['screenshots'].cast<String>();
    gameInfo = json['game_info'] != null
        ? new GameInfo.fromJson(json['game_info'])
        : null;
    gameplay = json['gameplay'] != null
        ? new Gameplay.fromJson(json['gameplay'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['developer'] = this.developer;
    data['category'] = this.category;
    data['rating'] = this.rating;
    data['reviews'] = this.reviews;
    data['price'] = this.price;
    data['installations'] = this.installations;
    data['description'] = this.description;
    data['screenshots'] = this.screenshots;
    if (this.gameInfo != null) {
      data['game_info'] = this.gameInfo!.toJson();
    }
    if (this.gameplay != null) {
      data['gameplay'] = this.gameplay!.toJson();
    }
    return data;
  }
}

class GameInfo {
  String? size;
  String? version;
  String? updated;
  String? contentRating;

  GameInfo({this.size, this.version, this.updated, this.contentRating});

  GameInfo.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    version = json['version'];
    updated = json['updated'];
    contentRating = json['content_rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    data['version'] = this.version;
    data['updated'] = this.updated;
    data['content_rating'] = this.contentRating;
    return data;
  }
}

class Gameplay {
  String? difficultyLevel;
  List<String>? gameModes;
  List<String>? genre;
  List<String>? features;

  Gameplay({this.difficultyLevel, this.gameModes, this.genre, this.features});

  Gameplay.fromJson(Map<String, dynamic> json) {
    difficultyLevel = json['difficulty_level'];
    gameModes = json['game_modes'].cast<String>();
    genre = json['genre'].cast<String>();
    features = json['features'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['difficulty_level'] = this.difficultyLevel;
    data['game_modes'] = this.gameModes;
    data['genre'] = this.genre;
    data['features'] = this.features;
    return data;
  }
}