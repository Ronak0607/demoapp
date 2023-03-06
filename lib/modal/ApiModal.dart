import 'dart:convert';

ApiModal apiModalFromJson(String str) => ApiModal.fromJson(json.decode(str));
String apiModalToJson(ApiModal data) => json.encode(data.toJson());
class ApiModal {
  ApiModal({
      Pagination? pagination, 
      List<Data>? data,}){
    _pagination = pagination;
    _data = data;
}

  ApiModal.fromJson(dynamic json) {
    _pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  Pagination? _pagination;
  List<Data>? _data;
ApiModal copyWith({  Pagination? pagination,
  List<Data>? data,
}) => ApiModal(  pagination: pagination ?? _pagination,
  data: data ?? _data,
);
  Pagination? get pagination => _pagination;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_pagination != null) {
      map['pagination'] = _pagination?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// mal_id : 1
/// url : "https://myanimelist.net/anime/1/Cowboy_Bebop"
/// images : {"jpg":{"image_url":"https://cdn.myanimelist.net/images/anime/4/19644.jpg","small_image_url":"https://cdn.myanimelist.net/images/anime/4/19644t.jpg","large_image_url":"https://cdn.myanimelist.net/images/anime/4/19644l.jpg"},"webp":{"image_url":"https://cdn.myanimelist.net/images/anime/4/19644.webp","small_image_url":"https://cdn.myanimelist.net/images/anime/4/19644t.webp","large_image_url":"https://cdn.myanimelist.net/images/anime/4/19644l.webp"}}
/// trailer : {"youtube_id":"qig4KOK2R2g","url":"https://www.youtube.com/watch?v=qig4KOK2R2g","embed_url":"https://www.youtube.com/embed/qig4KOK2R2g?enablejsapi=1&wmode=opaque&autoplay=1","images":{"image_url":"https://img.youtube.com/vi/qig4KOK2R2g/default.jpg","small_image_url":"https://img.youtube.com/vi/qig4KOK2R2g/sddefault.jpg","medium_image_url":"https://img.youtube.com/vi/qig4KOK2R2g/mqdefault.jpg","large_image_url":"https://img.youtube.com/vi/qig4KOK2R2g/hqdefault.jpg","maximum_image_url":"https://img.youtube.com/vi/qig4KOK2R2g/maxresdefault.jpg"}}
/// approved : true
/// titles : [{"type":"Default","title":"Cowboy Bebop"},{"type":"Japanese","title":"カウボーイビバップ"},{"type":"English","title":"Cowboy Bebop"}]
/// title : "Cowboy Bebop"
/// title_english : "Cowboy Bebop"
/// title_japanese : "カウボーイビバップ"
/// title_synonyms : []
/// type : "TV"
/// source : "Original"
/// episodes : 26
/// status : "Finished Airing"
/// airing : false
/// aired : {"from":"1998-04-03T00:00:00+00:00","to":"1999-04-24T00:00:00+00:00","prop":{"from":{"day":3,"month":4,"year":1998},"to":{"day":24,"month":4,"year":1999}},"string":"Apr 3, 1998 to Apr 24, 1999"}
/// duration : "24 min per ep"
/// rating : "R - 17+ (violence & profanity)"
/// score : 8.75
/// scored_by : 892212
/// rank : 39
/// popularity : 43
/// members : 1731649
/// favorites : 76769
/// synopsis : "Crime is timeless. By the year 2071, humanity has expanded across the galaxy, filling the surface of other planets with settlements like those on Earth. These new societies are plagued by murder, drug use, and theft, and intergalactic outlaws are hunted by a growing number of tough bounty hunters.\n\nSpike Spiegel and Jet Black pursue criminals throughout space to make a humble living. Beneath his goofy and aloof demeanor, Spike is haunted by the weight of his violent past. Meanwhile, Jet manages his own troubled memories while taking care of Spike and the Bebop, their ship. The duo is joined by the beautiful con artist Faye Valentine, odd child Edward Wong Hau Pepelu Tivrusky IV, and Ein, a bioengineered Welsh Corgi.\n\nWhile developing bonds and working to catch a colorful cast of criminals, the Bebop crew's lives are disrupted by a menace from Spike's past. As a rival's maniacal plot continues to unravel, Spike must choose between life with his newfound family or revenge for his old wounds.\n\n[Written by MAL Rewrite]"
/// background : "When Cowboy Bebop first aired in spring of 1998 on TV Tokyo, only episodes 2, 3, 7-15, and 18 were broadcast, it was concluded with a recap special known as Yose Atsume Blues. This was due to anime censorship having increased following the big controversies over Evangelion, as a result most of the series was pulled from the air due to violent content. Satellite channel WOWOW picked up the series in the fall of that year and aired it in its entirety uncensored. Cowboy Bebop was not a ratings hit in Japan, but sold over 19,000 DVD units in the initial release run, and 81,000 overall. Protagonist Spike Spiegel won Best Male Character, and Megumi Hayashibara won Best Voice Actor for her role as Faye Valentine in the 1999 and 2000 Anime Grand Prix, respectively. Cowboy Bebop's biggest influence has been in the United States, where it premiered on Adult Swim in 2001 with many reruns since. The show's heavy Western influence struck a chord with American viewers, where it became a \"gateway drug\" to anime aimed at adult audiences."
/// season : "spring"
/// year : 1998
/// broadcast : {"day":"Saturdays","time":"01:00","timezone":"Asia/Tokyo","string":"Saturdays at 01:00 (JST)"}
/// producers : [{"mal_id":23,"type":"anime","name":"Bandai Visual","url":"https://myanimelist.net/anime/producer/23/Bandai_Visual"}]
/// licensors : [{"mal_id":102,"type":"anime","name":"Funimation","url":"https://myanimelist.net/anime/producer/102/Funimation"},{"mal_id":233,"type":"anime","name":"Bandai Entertainment","url":"https://myanimelist.net/anime/producer/233/Bandai_Entertainment"}]
/// studios : [{"mal_id":14,"type":"anime","name":"Sunrise","url":"https://myanimelist.net/anime/producer/14/Sunrise"}]
/// genres : [{"mal_id":1,"type":"anime","name":"Action","url":"https://myanimelist.net/anime/genre/1/Action"},{"mal_id":46,"type":"anime","name":"Award Winning","url":"https://myanimelist.net/anime/genre/46/Award_Winning"},{"mal_id":24,"type":"anime","name":"Sci-Fi","url":"https://myanimelist.net/anime/genre/24/Sci-Fi"}]
/// explicit_genres : []
/// themes : [{"mal_id":50,"type":"anime","name":"Adult Cast","url":"https://myanimelist.net/anime/genre/50/Adult_Cast"},{"mal_id":29,"type":"anime","name":"Space","url":"https://myanimelist.net/anime/genre/29/Space"}]
/// demographics : []

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      num? malId,
      String? url,
      Images? images,
      Trailer? trailer,
      bool? approved,
      List<Titles>? titles,
      String? title,
      String? titleEnglish,
      String? titleJapanese,
      List<dynamic>? titleSynonyms,
      String? type,
      String? source,
      num? episodes,
      String? status,
      bool? airing,
      Aired? aired,
      String? duration,
      String? rating,
      num? score,
      num? scoredBy,
      num? rank,
      num? popularity,
      num? members,
      num? favorites,
      String? synopsis,
      String? background,
      String? season,
      num? year,
      Broadcast? broadcast,
      List<Producers>? producers,
      List<Licensors>? licensors,
      List<Studios>? studios,
      List<Genres>? genres,
      List<dynamic>? explicitGenres,
      List<Themes>? themes,
      List<dynamic>? demographics,}){
    _malId = malId;
    _url = url;
    _images = images;
    _trailer = trailer;
    _approved = approved;
    _titles = titles;
    _title = title;
    _titleEnglish = titleEnglish;
    _titleJapanese = titleJapanese;
    _titleSynonyms = titleSynonyms;
    _type = type;
    _source = source;
    _episodes = episodes;
    _status = status;
    _airing = airing;
    _aired = aired;
    _duration = duration;
    _rating = rating;
    _score = score;
    _scoredBy = scoredBy;
    _rank = rank;
    _popularity = popularity;
    _members = members;
    _favorites = favorites;
    _synopsis = synopsis;
    _background = background;
    _season = season;
    _year = year;
    _broadcast = broadcast;
    _producers = producers;
    _licensors = licensors;
    _studios = studios;
    _genres = genres;
    _explicitGenres = explicitGenres;
    _themes = themes;
    _demographics = demographics;
}

  Data.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _url = json['url'];
    _images = json['images'] != null ? Images.fromJson(json['images']) : null;
    _trailer = json['trailer'] != null ? Trailer.fromJson(json['trailer']) : null;
    _approved = json['approved'];
    if (json['titles'] != null) {
      _titles = [];
      json['titles'].forEach((v) {
        _titles?.add(Titles.fromJson(v));
      });
    }
    _title = json['title'];
    _titleEnglish = json['title_english'];
    _titleJapanese = json['title_japanese'];
    if (json['title_synonyms'] != null) {
      _titleSynonyms = [];
      json['title_synonyms'].forEach((v) {
        _titleSynonyms?.add(titleSynonyms);
      });
    }
    _type = json['type'];
    _source = json['source'];
    _episodes = json['episodes'];
    _status = json['status'];
    _airing = json['airing'];
    _aired = json['aired'] != null ? Aired.fromJson(json['aired']) : null;
    _duration = json['duration'];
    _rating = json['rating'];
    _score = json['score'];
    _scoredBy = json['scored_by'];
    _rank = json['rank'];
    _popularity = json['popularity'];
    _members = json['members'];
    _favorites = json['favorites'];
    _synopsis = json['synopsis'];
    _background = json['background'];
    _season = json['season'];
    _year = json['year'];
    _broadcast = json['broadcast'] != null ? Broadcast.fromJson(json['broadcast']) : null;
    if (json['producers'] != null) {
      _producers = [];
      json['producers'].forEach((v) {
        _producers?.add(Producers.fromJson(v));
      });
    }
    if (json['licensors'] != null) {
      _licensors = [];
      json['licensors'].forEach((v) {
        _licensors?.add(Licensors.fromJson(v));
      });
    }
    if (json['studios'] != null) {
      _studios = [];
      json['studios'].forEach((v) {
        _studios?.add(Studios.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      _genres = [];
      json['genres'].forEach((v) {
        _genres?.add(Genres.fromJson(v));
      });
    }
    if (json['explicit_genres'] != null) {
      _explicitGenres = [];
      json['explicit_genres'].forEach((v) {
        _explicitGenres?.add(explicitGenres);
      });
    }
    if (json['themes'] != null) {
      _themes = [];
      json['themes'].forEach((v) {
        _themes?.add(Themes.fromJson(v));
      });
    }
    if (json['demographics'] != null) {
      _demographics = [];
      json['demographics'].forEach((v) {
        _demographics?.add(demographics);
      });
    }
  }
  num? _malId;
  String? _url;
  Images? _images;
  Trailer? _trailer;
  bool? _approved;
  List<Titles>? _titles;
  String? _title;
  String? _titleEnglish;
  String? _titleJapanese;
  List<dynamic>? _titleSynonyms;
  String? _type;
  String? _source;
  num? _episodes;
  String? _status;
  bool? _airing;
  Aired? _aired;
  String? _duration;
  String? _rating;
  num? _score;
  num? _scoredBy;
  num? _rank;
  num? _popularity;
  num? _members;
  num? _favorites;
  String? _synopsis;
  String? _background;
  String? _season;
  num? _year;
  Broadcast? _broadcast;
  List<Producers>? _producers;
  List<Licensors>? _licensors;
  List<Studios>? _studios;
  List<Genres>? _genres;
  List<dynamic>? _explicitGenres;
  List<Themes>? _themes;
  List<dynamic>? _demographics;
Data copyWith({  num? malId,
  String? url,
  Images? images,
  Trailer? trailer,
  bool? approved,
  List<Titles>? titles,
  String? title,
  String? titleEnglish,
  String? titleJapanese,
  List<dynamic>? titleSynonyms,
  String? type,
  String? source,
  num? episodes,
  String? status,
  bool? airing,
  Aired? aired,
  String? duration,
  String? rating,
  num? score,
  num? scoredBy,
  num? rank,
  num? popularity,
  num? members,
  num? favorites,
  String? synopsis,
  String? background,
  String? season,
  num? year,
  Broadcast? broadcast,
  List<Producers>? producers,
  List<Licensors>? licensors,
  List<Studios>? studios,
  List<Genres>? genres,
  List<dynamic>? explicitGenres,
  List<Themes>? themes,
  List<dynamic>? demographics,
}) => Data(  malId: malId ?? _malId,
  url: url ?? _url,
  images: images ?? _images,
  trailer: trailer ?? _trailer,
  approved: approved ?? _approved,
  titles: titles ?? _titles,
  title: title ?? _title,
  titleEnglish: titleEnglish ?? _titleEnglish,
  titleJapanese: titleJapanese ?? _titleJapanese,
  titleSynonyms: titleSynonyms ?? _titleSynonyms,
  type: type ?? _type,
  source: source ?? _source,
  episodes: episodes ?? _episodes,
  status: status ?? _status,
  airing: airing ?? _airing,
  aired: aired ?? _aired,
  duration: duration ?? _duration,
  rating: rating ?? _rating,
  score: score ?? _score,
  scoredBy: scoredBy ?? _scoredBy,
  rank: rank ?? _rank,
  popularity: popularity ?? _popularity,
  members: members ?? _members,
  favorites: favorites ?? _favorites,
  synopsis: synopsis ?? _synopsis,
  background: background ?? _background,
  season: season ?? _season,
  year: year ?? _year,
  broadcast: broadcast ?? _broadcast,
  producers: producers ?? _producers,
  licensors: licensors ?? _licensors,
  studios: studios ?? _studios,
  genres: genres ?? _genres,
  explicitGenres: explicitGenres ?? _explicitGenres,
  themes: themes ?? _themes,
  demographics: demographics ?? _demographics,
);
  num? get malId => _malId;
  String? get url => _url;
  Images? get images => _images;
  Trailer? get trailer => _trailer;
  bool? get approved => _approved;
  List<Titles>? get titles => _titles;
  String? get title => _title;
  String? get titleEnglish => _titleEnglish;
  String? get titleJapanese => _titleJapanese;
  List<dynamic>? get titleSynonyms => _titleSynonyms;
  String? get type => _type;
  String? get source => _source;
  num? get episodes => _episodes;
  String? get status => _status;
  bool? get airing => _airing;
  Aired? get aired => _aired;
  String? get duration => _duration;
  String? get rating => _rating;
  num? get score => _score;
  num? get scoredBy => _scoredBy;
  num? get rank => _rank;
  num? get popularity => _popularity;
  num? get members => _members;
  num? get favorites => _favorites;
  String? get synopsis => _synopsis;
  String? get background => _background;
  String? get season => _season;
  num? get year => _year;
  Broadcast? get broadcast => _broadcast;
  List<Producers>? get producers => _producers;
  List<Licensors>? get licensors => _licensors;
  List<Studios>? get studios => _studios;
  List<Genres>? get genres => _genres;
  List<dynamic>? get explicitGenres => _explicitGenres;
  List<Themes>? get themes => _themes;
  List<dynamic>? get demographics => _demographics;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['url'] = _url;
    if (_images != null) {
      map['images'] = _images?.toJson();
    }
    if (_trailer != null) {
      map['trailer'] = _trailer?.toJson();
    }
    map['approved'] = _approved;
    if (_titles != null) {
      map['titles'] = _titles?.map((v) => v.toJson()).toList();
    }
    map['title'] = _title;
    map['title_english'] = _titleEnglish;
    map['title_japanese'] = _titleJapanese;
    if (_titleSynonyms != null) {
      map['title_synonyms'] = _titleSynonyms?.map((v) => v.toJson()).toList();
    }
    map['type'] = _type;
    map['source'] = _source;
    map['episodes'] = _episodes;
    map['status'] = _status;
    map['airing'] = _airing;
    if (_aired != null) {
      map['aired'] = _aired?.toJson();
    }
    map['duration'] = _duration;
    map['rating'] = _rating;
    map['score'] = _score;
    map['scored_by'] = _scoredBy;
    map['rank'] = _rank;
    map['popularity'] = _popularity;
    map['members'] = _members;
    map['favorites'] = _favorites;
    map['synopsis'] = _synopsis;
    map['background'] = _background;
    map['season'] = _season;
    map['year'] = _year;
    if (_broadcast != null) {
      map['broadcast'] = _broadcast?.toJson();
    }
    if (_producers != null) {
      map['producers'] = _producers?.map((v) => v.toJson()).toList();
    }
    if (_licensors != null) {
      map['licensors'] = _licensors?.map((v) => v.toJson()).toList();
    }
    if (_studios != null) {
      map['studios'] = _studios?.map((v) => v.toJson()).toList();
    }
    if (_genres != null) {
      map['genres'] = _genres?.map((v) => v.toJson()).toList();
    }
    if (_explicitGenres != null) {
      map['explicit_genres'] = _explicitGenres?.map((v) => v.toJson()).toList();
    }
    if (_themes != null) {
      map['themes'] = _themes?.map((v) => v.toJson()).toList();
    }
    if (_demographics != null) {
      map['demographics'] = _demographics?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// mal_id : 50
/// type : "anime"
/// name : "Adult Cast"
/// url : "https://myanimelist.net/anime/genre/50/Adult_Cast"

Themes themesFromJson(String str) => Themes.fromJson(json.decode(str));
String themesToJson(Themes data) => json.encode(data.toJson());
class Themes {
  Themes({
      num? malId,
      String? type,
      String? name,
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Themes.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;
Themes copyWith({  num? malId,
  String? type,
  String? name,
  String? url,
}) => Themes(  malId: malId ?? _malId,
  type: type ?? _type,
  name: name ?? _name,
  url: url ?? _url,
);
  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

/// mal_id : 1
/// type : "anime"
/// name : "Action"
/// url : "https://myanimelist.net/anime/genre/1/Action"

Genres genresFromJson(String str) => Genres.fromJson(json.decode(str));
String genresToJson(Genres data) => json.encode(data.toJson());
class Genres {
  Genres({
      num? malId,
      String? type,
      String? name,
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Genres.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;
Genres copyWith({  num? malId,
  String? type,
  String? name,
  String? url,
}) => Genres(  malId: malId ?? _malId,
  type: type ?? _type,
  name: name ?? _name,
  url: url ?? _url,
);
  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

/// mal_id : 14
/// type : "anime"
/// name : "Sunrise"
/// url : "https://myanimelist.net/anime/producer/14/Sunrise"

Studios studiosFromJson(String str) => Studios.fromJson(json.decode(str));
String studiosToJson(Studios data) => json.encode(data.toJson());
class Studios {
  Studios({
      num? malId,
      String? type,
      String? name,
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Studios.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;
Studios copyWith({  num? malId,
  String? type,
  String? name,
  String? url,
}) => Studios(  malId: malId ?? _malId,
  type: type ?? _type,
  name: name ?? _name,
  url: url ?? _url,
);
  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

/// mal_id : 102
/// type : "anime"
/// name : "Funimation"
/// url : "https://myanimelist.net/anime/producer/102/Funimation"

Licensors licensorsFromJson(String str) => Licensors.fromJson(json.decode(str));
String licensorsToJson(Licensors data) => json.encode(data.toJson());
class Licensors {
  Licensors({
      num? malId,
      String? type,
      String? name,
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Licensors.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;
Licensors copyWith({  num? malId,
  String? type,
  String? name,
  String? url,
}) => Licensors(  malId: malId ?? _malId,
  type: type ?? _type,
  name: name ?? _name,
  url: url ?? _url,
);
  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

/// mal_id : 23
/// type : "anime"
/// name : "Bandai Visual"
/// url : "https://myanimelist.net/anime/producer/23/Bandai_Visual"

Producers producersFromJson(String str) => Producers.fromJson(json.decode(str));
String producersToJson(Producers data) => json.encode(data.toJson());
class Producers {
  Producers({
      num? malId,
      String? type,
      String? name,
      String? url,}){
    _malId = malId;
    _type = type;
    _name = name;
    _url = url;
}

  Producers.fromJson(dynamic json) {
    _malId = json['mal_id'];
    _type = json['type'];
    _name = json['name'];
    _url = json['url'];
  }
  num? _malId;
  String? _type;
  String? _name;
  String? _url;
Producers copyWith({  num? malId,
  String? type,
  String? name,
  String? url,
}) => Producers(  malId: malId ?? _malId,
  type: type ?? _type,
  name: name ?? _name,
  url: url ?? _url,
);
  num? get malId => _malId;
  String? get type => _type;
  String? get name => _name;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mal_id'] = _malId;
    map['type'] = _type;
    map['name'] = _name;
    map['url'] = _url;
    return map;
  }

}

/// day : "Saturdays"
/// time : "01:00"
/// timezone : "Asia/Tokyo"
/// string : "Saturdays at 01:00 (JST)"

Broadcast broadcastFromJson(String str) => Broadcast.fromJson(json.decode(str));
String broadcastToJson(Broadcast data) => json.encode(data.toJson());
class Broadcast {
  Broadcast({
      String? day,
      String? time,
      String? timezone,
      String? string,}){
    _day = day;
    _time = time;
    _timezone = timezone;
    _string = string;
}

  Broadcast.fromJson(dynamic json) {
    _day = json['day'];
    _time = json['time'];
    _timezone = json['timezone'];
    _string = json['string'];
  }
  String? _day;
  String? _time;
  String? _timezone;
  String? _string;
Broadcast copyWith({  String? day,
  String? time,
  String? timezone,
  String? string,
}) => Broadcast(  day: day ?? _day,
  time: time ?? _time,
  timezone: timezone ?? _timezone,
  string: string ?? _string,
);
  String? get day => _day;
  String? get time => _time;
  String? get timezone => _timezone;
  String? get string => _string;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['time'] = _time;
    map['timezone'] = _timezone;
    map['string'] = _string;
    return map;
  }

}

/// from : "1998-04-03T00:00:00+00:00"
/// to : "1999-04-24T00:00:00+00:00"
/// prop : {"from":{"day":3,"month":4,"year":1998},"to":{"day":24,"month":4,"year":1999}}
/// string : "Apr 3, 1998 to Apr 24, 1999"

Aired airedFromJson(String str) => Aired.fromJson(json.decode(str));
String airedToJson(Aired data) => json.encode(data.toJson());
class Aired {
  Aired({
      String? from,
      String? to,
      Prop? prop,
      String? string,}){
    _from = from;
    _to = to;
    _prop = prop;
    _string = string;
}

  Aired.fromJson(dynamic json) {
    _from = json['from'];
    _to = json['to'];
    _prop = json['prop'] != null ? Prop.fromJson(json['prop']) : null;
    _string = json['string'];
  }
  String? _from;
  String? _to;
  Prop? _prop;
  String? _string;
Aired copyWith({  String? from,
  String? to,
  Prop? prop,
  String? string,
}) => Aired(  from: from ?? _from,
  to: to ?? _to,
  prop: prop ?? _prop,
  string: string ?? _string,
);
  String? get from => _from;
  String? get to => _to;
  Prop? get prop => _prop;
  String? get string => _string;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['from'] = _from;
    map['to'] = _to;
    if (_prop != null) {
      map['prop'] = _prop?.toJson();
    }
    map['string'] = _string;
    return map;
  }

}

/// from : {"day":3,"month":4,"year":1998}
/// to : {"day":24,"month":4,"year":1999}

Prop propFromJson(String str) => Prop.fromJson(json.decode(str));
String propToJson(Prop data) => json.encode(data.toJson());
class Prop {
  Prop({
      From? from,
      To? to,}){
    _from = from;
    _to = to;
}

  Prop.fromJson(dynamic json) {
    _from = json['from'] != null ? From.fromJson(json['from']) : null;
    _to = json['to'] != null ? To.fromJson(json['to']) : null;
  }
  From? _from;
  To? _to;
Prop copyWith({  From? from,
  To? to,
}) => Prop(  from: from ?? _from,
  to: to ?? _to,
);
  From? get from => _from;
  To? get to => _to;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_from != null) {
      map['from'] = _from?.toJson();
    }
    if (_to != null) {
      map['to'] = _to?.toJson();
    }
    return map;
  }

}

/// day : 24
/// month : 4
/// year : 1999

To toFromJson(String str) => To.fromJson(json.decode(str));
String toToJson(To data) => json.encode(data.toJson());
class To {
  To({
      num? day,
      num? month,
      num? year,}){
    _day = day;
    _month = month;
    _year = year;
}

  To.fromJson(dynamic json) {
    _day = json['day'];
    _month = json['month'];
    _year = json['year'];
  }
  num? _day;
  num? _month;
  num? _year;
To copyWith({  num? day,
  num? month,
  num? year,
}) => To(  day: day ?? _day,
  month: month ?? _month,
  year: year ?? _year,
);
  num? get day => _day;
  num? get month => _month;
  num? get year => _year;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['month'] = _month;
    map['year'] = _year;
    return map;
  }

}

/// day : 3
/// month : 4
/// year : 1998

From fromFromJson(String str) => From.fromJson(json.decode(str));
String fromToJson(From data) => json.encode(data.toJson());
class From {
  From({
      num? day,
      num? month,
      num? year,}){
    _day = day;
    _month = month;
    _year = year;
}

  From.fromJson(dynamic json) {
    _day = json['day'];
    _month = json['month'];
    _year = json['year'];
  }
  num? _day;
  num? _month;
  num? _year;
From copyWith({  num? day,
  num? month,
  num? year,
}) => From(  day: day ?? _day,
  month: month ?? _month,
  year: year ?? _year,
);
  num? get day => _day;
  num? get month => _month;
  num? get year => _year;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['month'] = _month;
    map['year'] = _year;
    return map;
  }

}

/// type : "Default"
/// title : "Cowboy Bebop"

Titles titlesFromJson(String str) => Titles.fromJson(json.decode(str));
String titlesToJson(Titles data) => json.encode(data.toJson());
class Titles {
  Titles({
      String? type,
      String? title,}){
    _type = type;
    _title = title;
}

  Titles.fromJson(dynamic json) {
    _type = json['type'];
    _title = json['title'];
  }
  String? _type;
  String? _title;
Titles copyWith({  String? type,
  String? title,
}) => Titles(  type: type ?? _type,
  title: title ?? _title,
);
  String? get type => _type;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['title'] = _title;
    return map;
  }

}

/// youtube_id : "qig4KOK2R2g"
/// url : "https://www.youtube.com/watch?v=qig4KOK2R2g"
/// embed_url : "https://www.youtube.com/embed/qig4KOK2R2g?enablejsapi=1&wmode=opaque&autoplay=1"
/// images : {"image_url":"https://img.youtube.com/vi/qig4KOK2R2g/default.jpg","small_image_url":"https://img.youtube.com/vi/qig4KOK2R2g/sddefault.jpg","medium_image_url":"https://img.youtube.com/vi/qig4KOK2R2g/mqdefault.jpg","large_image_url":"https://img.youtube.com/vi/qig4KOK2R2g/hqdefault.jpg","maximum_image_url":"https://img.youtube.com/vi/qig4KOK2R2g/maxresdefault.jpg"}

Trailer trailerFromJson(String str) => Trailer.fromJson(json.decode(str));
String trailerToJson(Trailer data) => json.encode(data.toJson());
class Trailer {
  Trailer({
      String? youtubeId,
      String? url,
      String? embedUrl,
      Images? images,}){
    _youtubeId = youtubeId;
    _url = url;
    _embedUrl = embedUrl;
    _images = images;
}

  Trailer.fromJson(dynamic json) {
    _youtubeId = json['youtube_id'];
    _url = json['url'];
    _embedUrl = json['embed_url'];
    _images = json['images'] != null ? Images.fromJson(json['images']) : null;
  }
  String? _youtubeId;
  String? _url;
  String? _embedUrl;
  Images? _images;
Trailer copyWith({  String? youtubeId,
  String? url,
  String? embedUrl,
  Images? images,
}) => Trailer(  youtubeId: youtubeId ?? _youtubeId,
  url: url ?? _url,
  embedUrl: embedUrl ?? _embedUrl,
  images: images ?? _images,
);
  String? get youtubeId => _youtubeId;
  String? get url => _url;
  String? get embedUrl => _embedUrl;
  Images? get images => _images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['youtube_id'] = _youtubeId;
    map['url'] = _url;
    map['embed_url'] = _embedUrl;
    if (_images != null) {
      map['images'] = _images?.toJson();
    }
    return map;
  }

}

/// image_url : "https://img.youtube.com/vi/qig4KOK2R2g/default.jpg"
/// small_image_url : "https://img.youtube.com/vi/qig4KOK2R2g/sddefault.jpg"
/// medium_image_url : "https://img.youtube.com/vi/qig4KOK2R2g/mqdefault.jpg"
/// large_image_url : "https://img.youtube.com/vi/qig4KOK2R2g/hqdefault.jpg"
/// maximum_image_url : "https://img.youtube.com/vi/qig4KOK2R2g/maxresdefault.jpg"

Images imagesFromJson(String str) => Images.fromJson(json.decode(str));
String imagesToJson(Images data) => json.encode(data.toJson());
class Images {
  Images({
      String? imageUrl,
      String? smallImageUrl,
      String? mediumImageUrl,
      String? largeImageUrl,
      String? maximumImageUrl, Jpg? jpg, Webp? webp,}){
    _imageUrl = imageUrl;
    _smallImageUrl = smallImageUrl;
    _mediumImageUrl = mediumImageUrl;
    _largeImageUrl = largeImageUrl;
    _maximumImageUrl = maximumImageUrl;
}

  Images.fromJson(dynamic json) {
    _imageUrl = json['image_url'];
    _smallImageUrl = json['small_image_url'];
    _mediumImageUrl = json['medium_image_url'];
    _largeImageUrl = json['large_image_url'];
    _maximumImageUrl = json['maximum_image_url'];
  }
  String? _imageUrl;
  String? _smallImageUrl;
  String? _mediumImageUrl;
  String? _largeImageUrl;
  String? _maximumImageUrl;
Images copyWith({  String? imageUrl,
  String? smallImageUrl,
  String? mediumImageUrl,
  String? largeImageUrl,
  String? maximumImageUrl,
}) => Images(  imageUrl: imageUrl ?? _imageUrl,
  smallImageUrl: smallImageUrl ?? _smallImageUrl,
  mediumImageUrl: mediumImageUrl ?? _mediumImageUrl,
  largeImageUrl: largeImageUrl ?? _largeImageUrl,
  maximumImageUrl: maximumImageUrl ?? _maximumImageUrl,
);
  String? get imageUrl => _imageUrl;
  String? get smallImageUrl => _smallImageUrl;
  String? get mediumImageUrl => _mediumImageUrl;
  String? get largeImageUrl => _largeImageUrl;
  String? get maximumImageUrl => _maximumImageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image_url'] = _imageUrl;
    map['small_image_url'] = _smallImageUrl;
    map['medium_image_url'] = _mediumImageUrl;
    map['large_image_url'] = _largeImageUrl;
    map['maximum_image_url'] = _maximumImageUrl;
    return map;
  }

}

/// jpg : {"image_url":"https://cdn.myanimelist.net/images/anime/4/19644.jpg","small_image_url":"https://cdn.myanimelist.net/images/anime/4/19644t.jpg","large_image_url":"https://cdn.myanimelist.net/images/anime/4/19644l.jpg"}
/// webp : {"image_url":"https://cdn.myanimelist.net/images/anime/4/19644.webp","small_image_url":"https://cdn.myanimelist.net/images/anime/4/19644t.webp","large_image_url":"https://cdn.myanimelist.net/images/anime/4/19644l.webp"}

Images imagesFromJsonn(String str) => Images.fromJson(json.decode(str));
String imagesToJsonn(Images data) => json.encode(data.toJson());
class Imagess {
  Images({
      Jpg? jpg,
      Webp? webp,}){
    _jpg = jpg;
    _webp = webp;
}

  Imagess.fromJson(dynamic json) {
    _jpg = json['jpg'] != null ? Jpg.fromJson(json['jpg']) : null;
    _webp = json['webp'] != null ? Webp.fromJson(json['webp']) : null;
  }
  Jpg? _jpg;
  Webp? _webp;
Imagess copyWith({  Jpg? jpg,
  Webp? webp,
}) => Images(  jpg: jpg ?? _jpg,
  webp: webp ?? _webp,
);
  Jpg? get jpg => _jpg;
  Webp? get webp => _webp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_jpg != null) {
      map['jpg'] = _jpg?.toJson();
    }
    if (_webp != null) {
      map['webp'] = _webp?.toJson();
    }
    return map;
  }

}

/// image_url : "https://cdn.myanimelist.net/images/anime/4/19644.webp"
/// small_image_url : "https://cdn.myanimelist.net/images/anime/4/19644t.webp"
/// large_image_url : "https://cdn.myanimelist.net/images/anime/4/19644l.webp"

Webp webpFromJson(String str) => Webp.fromJson(json.decode(str));
String webpToJson(Webp data) => json.encode(data.toJson());
class Webp {
  Webp({
      String? imageUrl,
      String? smallImageUrl,
      String? largeImageUrl,}){
    _imageUrl = imageUrl;
    _smallImageUrl = smallImageUrl;
    _largeImageUrl = largeImageUrl;
}

  Webp.fromJson(dynamic json) {
    _imageUrl = json['image_url'];
    _smallImageUrl = json['small_image_url'];
    _largeImageUrl = json['large_image_url'];
  }
  String? _imageUrl;
  String? _smallImageUrl;
  String? _largeImageUrl;
Webp copyWith({  String? imageUrl,
  String? smallImageUrl,
  String? largeImageUrl,
}) => Webp(  imageUrl: imageUrl ?? _imageUrl,
  smallImageUrl: smallImageUrl ?? _smallImageUrl,
  largeImageUrl: largeImageUrl ?? _largeImageUrl,
);
  String? get imageUrl => _imageUrl;
  String? get smallImageUrl => _smallImageUrl;
  String? get largeImageUrl => _largeImageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image_url'] = _imageUrl;
    map['small_image_url'] = _smallImageUrl;
    map['large_image_url'] = _largeImageUrl;
    return map;
  }

}

/// image_url : "https://cdn.myanimelist.net/images/anime/4/19644.jpg"
/// small_image_url : "https://cdn.myanimelist.net/images/anime/4/19644t.jpg"
/// large_image_url : "https://cdn.myanimelist.net/images/anime/4/19644l.jpg"

Jpg jpgFromJson(String str) => Jpg.fromJson(json.decode(str));
String jpgToJson(Jpg data) => json.encode(data.toJson());
class Jpg {
  Jpg({
      String? imageUrl, 
      String? smallImageUrl, 
      String? largeImageUrl,}){
    _imageUrl = imageUrl;
    _smallImageUrl = smallImageUrl;
    _largeImageUrl = largeImageUrl;
}

  Jpg.fromJson(dynamic json) {
    _imageUrl = json['image_url'];
    _smallImageUrl = json['small_image_url'];
    _largeImageUrl = json['large_image_url'];
  }
  String? _imageUrl;
  String? _smallImageUrl;
  String? _largeImageUrl;
Jpg copyWith({  String? imageUrl,
  String? smallImageUrl,
  String? largeImageUrl,
}) => Jpg(  imageUrl: imageUrl ?? _imageUrl,
  smallImageUrl: smallImageUrl ?? _smallImageUrl,
  largeImageUrl: largeImageUrl ?? _largeImageUrl,
);
  String? get imageUrl => _imageUrl;
  String? get smallImageUrl => _smallImageUrl;
  String? get largeImageUrl => _largeImageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image_url'] = _imageUrl;
    map['small_image_url'] = _smallImageUrl;
    map['large_image_url'] = _largeImageUrl;
    return map;
  }

}

/// last_visible_page : 992
/// has_next_page : true
/// current_page : 1
/// items : {"count":25,"total":24797,"per_page":25}

Pagination paginationFromJson(String str) => Pagination.fromJson(json.decode(str));
String paginationToJson(Pagination data) => json.encode(data.toJson());
class Pagination {
  Pagination({
      num? lastVisiblePage, 
      bool? hasNextPage, 
      num? currentPage, 
      Items? items,}){
    _lastVisiblePage = lastVisiblePage;
    _hasNextPage = hasNextPage;
    _currentPage = currentPage;
    _items = items;
}

  Pagination.fromJson(dynamic json) {
    _lastVisiblePage = json['last_visible_page'];
    _hasNextPage = json['has_next_page'];
    _currentPage = json['current_page'];
    _items = json['items'] != null ? Items.fromJson(json['items']) : null;
  }
  num? _lastVisiblePage;
  bool? _hasNextPage;
  num? _currentPage;
  Items? _items;
Pagination copyWith({  num? lastVisiblePage,
  bool? hasNextPage,
  num? currentPage,
  Items? items,
}) => Pagination(  lastVisiblePage: lastVisiblePage ?? _lastVisiblePage,
  hasNextPage: hasNextPage ?? _hasNextPage,
  currentPage: currentPage ?? _currentPage,
  items: items ?? _items,
);
  num? get lastVisiblePage => _lastVisiblePage;
  bool? get hasNextPage => _hasNextPage;
  num? get currentPage => _currentPage;
  Items? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_visible_page'] = _lastVisiblePage;
    map['has_next_page'] = _hasNextPage;
    map['current_page'] = _currentPage;
    if (_items != null) {
      map['items'] = _items?.toJson();
    }
    return map;
  }

}

/// count : 25
/// total : 24797
/// per_page : 25

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));
String itemsToJson(Items data) => json.encode(data.toJson());
class Items {
  Items({
      num? count, 
      num? total, 
      num? perPage,}){
    _count = count;
    _total = total;
    _perPage = perPage;
}

  Items.fromJson(dynamic json) {
    _count = json['count'];
    _total = json['total'];
    _perPage = json['per_page'];
  }
  num? _count;
  num? _total;
  num? _perPage;
Items copyWith({  num? count,
  num? total,
  num? perPage,
}) => Items(  count: count ?? _count,
  total: total ?? _total,
  perPage: perPage ?? _perPage,
);
  num? get count => _count;
  num? get total => _total;
  num? get perPage => _perPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    map['total'] = _total;
    map['per_page'] = _perPage;
    return map;
  }

}