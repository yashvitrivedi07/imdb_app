class ImdbModal {
  DataModal? dataModal;
  ImdbModal({this.dataModal});

  factory ImdbModal.mapToModal(Map m) {
    return ImdbModal(dataModal: DataModal.mapToModal(m['data']));
  }
}

class DataModal {
  MainSearchModal? mainSearchModal;
  DataModal({this.mainSearchModal});
  factory DataModal.mapToModal(Map m) {
    return DataModal(
        mainSearchModal: MainSearchModal.mapToModal(m['mainSearch']));
  }
}

class MainSearchModal {
  List<EdgesModal>? edgelist = [];

  MainSearchModal({this.edgelist});

  factory MainSearchModal.mapToModal(Map m) {
    List l = m['edges'];
    return MainSearchModal(
        edgelist: l.map((e) => EdgesModal.mapToModal(e)).toList());
  }
}

class EdgesModal {
  NodeModal? nodeModal;
  EdgesModal({this.nodeModal});

  factory EdgesModal.mapToModal(Map m) {
    return EdgesModal(nodeModal: NodeModal.mapToModal(m['node']));
  }
}

class NodeModal {
  EntityModal? entityModal;
  NodeModal({this.entityModal});

  factory NodeModal.mapToModal(Map m) {
    return NodeModal(entityModal: EntityModal.mapToModal(m['entity']));
  }
}

class EntityModal {
  String? typename;
  OriginalModal? originalModal;
  ReleaseDateModal? releasedateModal;
  PrimaryImageModal? primaryimageModal;

  EntityModal(
      {this.originalModal,
      this.primaryimageModal,
      this.releasedateModal,
      this.typename});

  factory EntityModal.mapToModal(Map m) {
    return EntityModal(
        typename: m['__typename'],
        originalModal: OriginalModal.mapToModal(m['originalTitleText']),
        primaryimageModal: PrimaryImageModal.mapToModal(m['primaryImage']),
        releasedateModal: ReleaseDateModal.mapToModal(m['releaseDate']));
  }
}

class OriginalModal {
  String? text;
  OriginalModal({this.text});

  factory OriginalModal.mapToModal(Map m) {
    return OriginalModal(text: m['text']);
  }
}

class ReleaseDateModal {
  int? month, day, year;
  CountryModal? cm = CountryModal();

  ReleaseDateModal({this.month, this.day, this.year, this.cm});

  factory ReleaseDateModal.mapToModal(Map m) {
    return ReleaseDateModal(
        day: m['day'],
        month: m['month'],
        year: m['year'],
        cm: CountryModal.mapToModal(m['country']));
  }
}

class CountryModal {
  String? id;
  CountryModal({this.id});

  factory CountryModal.mapToModal(Map m) {
    return CountryModal(id: m['id']);
  }
}

class PrimaryImageModal {
  String? url;

  PrimaryImageModal({this.url});

  factory PrimaryImageModal.mapToModal(Map m) {
    return PrimaryImageModal(url: m['url']);
  }
}

// {
//     "data": {
//         "mainSearch": {
//             "edges": [
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt0120338",
//                             "titleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 1997,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 12,
//                                 "day": 19,
//                                 "year": 1997,
//                                 "country": {
//                                     "id": "US"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm2647458304",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BYzYyN2FiZmUtYWYzMy00MzViLWJkZTMtOGY1ZjgzNWMwN2YxXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 3000,
//                                 "width": 2015
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0000138",
//                                                 "nameText": {
//                                                     "text": "Leonardo DiCaprio"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm487490304",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_.jpg",
//                                                     "height": 400,
//                                                     "width": 297
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0000701",
//                                                 "nameText": {
//                                                     "text": "Kate Winslet"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm537960448",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BODgzMzM2NTE0Ml5BMl5BanBnXkFtZTcwMTcyMTkyOQ@@._V1_.jpg",
//                                                     "height": 2048,
//                                                     "width": 1334
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0000708",
//                                                 "nameText": {
//                                                     "text": "Billy Zane"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm3013840640",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMTI5NzA2NTE0NF5BMl5BanBnXkFtZTcwNzAxMTUxMw@@._V1_.jpg",
//                                                     "height": 400,
//                                                     "width": 309
//                                                 }
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt0046435",
//                             "titleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 1953,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 7,
//                                 "day": 13,
//                                 "year": 1953,
//                                 "country": {
//                                     "id": "GB"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm1659620864",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BMTU3NTUyMTc3Nl5BMl5BanBnXkFtZTgwOTA2MDE3MTE@._V1_.jpg",
//                                 "height": 500,
//                                 "width": 335
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0916067",
//                                                 "nameText": {
//                                                     "text": "Clifton Webb"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm2017322496",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BZDkwZTExY2UtOGVjOS00MjlmLTg3OWUtZDMyYWZlYWNhMDU5XkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 2141,
//                                                     "width": 1819
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0001766",
//                                                 "nameText": {
//                                                     "text": "Barbara Stanwyck"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm1862221313",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMmQwNmYwMDQtNzkzYy00MDVmLWExNGEtNGU1MTkxMjgyZDk3XkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 3713,
//                                                     "width": 3040
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0001822",
//                                                 "nameText": {
//                                                     "text": "Robert Wagner"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm819900929",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BOThjNTk4NzYtNWRhMy00ZGZmLWFjYTktMzA5OTgzNDM2M2I0XkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 3478,
//                                                     "width": 2319
//                                                 }
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt0036443",
//                             "titleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 1943,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 2,
//                                 "day": 7,
//                                 "year": 1950,
//                                 "country": {
//                                     "id": "XWG"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm4149301760",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BZDY5NDljMmItMDgwNy00YmMzLThjMzYtNTIwZDVhZTk2NDcwXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 551,
//                                 "width": 434
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0773525",
//                                                 "nameText": {
//                                                     "text": "Sybille Schmitz"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm125999361",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BZjI2ODNmMGEtNTY5YS00OTY3LWI2NDktMzgyYjFmZDg1YTkxXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 1150,
//                                                     "width": 861
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0630821",
//                                                 "nameText": {
//                                                     "text": "Hans Nielsen"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0373853",
//                                                 "nameText": {
//                                                     "text": "Kirsten Heiberg"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm600115456",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BYjMwYjZjZGYtYTczYi00NmM0LWFmMWMtNjgxZmIwMTZkOGIxXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 1150,
//                                                     "width": 803
//                                                 }
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt18394428",
//                             "titleText": {
//                                 "text": "Titanic 666",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic 666",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2022,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 4,
//                                 "day": 15,
//                                 "year": 2022,
//                                 "country": {
//                                     "id": "US"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [
//                                     {
//                                         "id": "internet",
//                                         "text": "internet"
//                                     }
//                                 ],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm1877635329",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BNzcxY2RjOWUtZmE2Yy00YTBlLWE4N2UtOTg5NjdiNTFjNzk1XkEyXkFqcGc@._V1_.jpg",
//                                 "height": 2560,
//                                 "width": 1920
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm1077920",
//                                                 "nameText": {
//                                                     "text": "Keesha Sharp"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm1022119936",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BYTJmYjU2N2ItMTUzZC00YmY3LWIxZjktODM5NWI3YjQ4OGIwXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 1024,
//                                                     "width": 680
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0051397",
//                                                 "nameText": {
//                                                     "text": "Jamie Bamber"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm2912375296",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BZGQxZDQ5Y2QtNTUwOS00NmIwLWI0NDItZTBkMmU1MDI1MzZkXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 1300,
//                                                     "width": 975
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm1935905",
//                                                 "nameText": {
//                                                     "text": "Lydia Hearst"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm3231302145",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BYTc3YTU2YTQtZGIwMS00OWVmLTg1ZjgtMWMxOWUyYTYzZmJjXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 1679,
//                                                     "width": 1125
//                                                 }
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt0081400",
//                             "titleText": {
//                                 "text": "Raise the Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Raise the Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 1980,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 8,
//                                 "day": 1,
//                                 "year": 1980,
//                                 "country": {
//                                     "id": "US"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm2820070913",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BNGQ1YTExNDEtNmJhMS00M2Y4LWExNGEtNzFlZTQzYTExZTRmXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 2681,
//                                 "width": 1688
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0001673",
//                                                 "nameText": {
//                                                     "text": "Jason Robards"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm2439092224",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMTk5NDI3NDM4Nl5BMl5BanBnXkFtZTYwMjEwNjM2._V1_.jpg",
//                                                     "height": 450,
//                                                     "width": 365
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0430151",
//                                                 "nameText": {
//                                                     "text": "Richard Jordan"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm1598536192",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMTA4NTM3NTgzNTBeQTJeQWpwZ15BbWU3MDY1NzgxNTQ@._V1_.jpg",
//                                                     "height": 688,
//                                                     "width": 1023
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0782978",
//                                                 "nameText": {
//                                                     "text": "David Selby"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm2760874496",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMTMwMzA4MDM1OF5BMl5BanBnXkFtZTYwODU2NTAz._V1_.jpg",
//                                                     "height": 491,
//                                                     "width": 326
//                                                 }
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt28656527",
//                             "titleText": {
//                                 "text": "Titanic: The Musical",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic: The Musical",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2023,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 11,
//                                 "day": 4,
//                                 "year": 2023,
//                                 "country": {
//                                     "id": "US"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm2326353665",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BNWU2NWIxOTktNTQ0Ny00ODhiLWJlM2QtMTdjMmJiNzZiODliXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 1500,
//                                 "width": 1000
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm3716189",
//                                                 "nameText": {
//                                                     "text": "Martin Allanson"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm636634369",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BOWU5N2U1NzYtZWM2MC00MmE2LTk1YjYtNzA3YmY2YzliYWJjXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 6000,
//                                                     "width": 4000
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0043137",
//                                                 "nameText": {
//                                                     "text": "Valda Aviks"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0081061",
//                                                 "nameText": {
//                                                     "text": "Graham Bickley"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt27713920",
//                             "titleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2023,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 2,
//                                 "day": 7,
//                                 "year": 2023,
//                                 "country": {
//                                     "id": "US"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [
//                                     {
//                                         "id": "internet",
//                                         "text": "internet"
//                                     }
//                                 ],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm388246785",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BZTAyMTNhZGItMzQ5Ny00OGQxLThhNDMtYzUxOGZhYTVkYTIwXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 1600,
//                                 "width": 1200
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm14840553",
//                                                 "nameText": {
//                                                     "text": "James B."
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt21274562",
//                             "titleText": {
//                                 "text": "Titanic XXX parody",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic XXX parody",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2022,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 8,
//                                 "day": 1,
//                                 "year": 2022,
//                                 "country": {
//                                     "id": "IT"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [
//                                     {
//                                         "id": "internet",
//                                         "text": "internet"
//                                     }
//                                 ],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm2317289985",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BN2Q2NjZlZjctYWE4Ni00OGJjLWE0MDMtZTI5N2Q1NWM0ZWVlXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 3600,
//                                 "width": 2400
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm8756880",
//                                                 "nameText": {
//                                                     "text": "Max Biondi"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm13741826",
//                                                 "nameText": {
//                                                     "text": "Antonio Di Lallo"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm12084110",
//                                                 "nameText": {
//                                                     "text": "Francesco Guzman"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt4247440",
//                             "titleText": {
//                                 "text": "Predator World",
//                                 "isOriginalTitle": false
//                             },
//                             "originalTitleText": {
//                                 "text": "Aliens vs. Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2017,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 9,
//                                 "day": 11,
//                                 "year": 2018,
//                                 "country": {
//                                     "id": "US"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm2103003904",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BNTMzZjg5ZWMtZDg5My00OWMzLTk3OTMtOGRmOGI2ZmQ5YTQwXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 2231,
//                                 "width": 1566
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm2383520",
//                                                 "nameText": {
//                                                     "text": "Tasha Tacosa"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm2700557313",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BZDI4MmQ4NjQtZTk3Ni00MDcxLTg4MDYtYzk0NTM1N2NiMjA4XkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 1867,
//                                                     "width": 1125
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0722290",
//                                                 "nameText": {
//                                                     "text": "Robert Rhine"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm3751235073",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMmI1MmM3MGEtN2VkZC00ODRjLWE0MjctY2I1Y2UxNDAxNjA5XkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 800,
//                                                     "width": 813
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm4996898",
//                                                 "nameText": {
//                                                     "text": "Brenton Jones"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt27758742",
//                             "titleText": {
//                                 "text": "Titanic 2000",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic 2000",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 1999,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 1,
//                                 "day": 1,
//                                 "year": 1999,
//                                 "country": {
//                                     "id": "US"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [
//                                     {
//                                         "id": "unknown",
//                                         "text": "unknown"
//                                     }
//                                 ],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm4076217089",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BZTRhOGYzN2MtMTlmYi00ODIyLWI4YTEtNzljNzdjMGM4YjE5XkEyXkFqcGc@._V1_.jpg",
//                                 "height": 2100,
//                                 "width": 1400
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0470268",
//                                                 "nameText": {
//                                                     "text": "Tina Krause"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm3569390336",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMTM4NTIzOTU0OF5BMl5BanBnXkFtZTcwMDg1MTU0MQ@@._V1_.jpg",
//                                                     "height": 300,
//                                                     "width": 450
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0663017",
//                                                 "nameText": {
//                                                     "text": "Tammy Parks"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt0129923",
//                             "titleText": {
//                                 "text": "The Chambermaid on the Titanic",
//                                 "isOriginalTitle": false
//                             },
//                             "originalTitleText": {
//                                 "text": "La femme de chambre du Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 1997,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 8,
//                                 "day": 14,
//                                 "year": 1998,
//                                 "country": {
//                                     "id": "US"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm1777854208",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BZjEyNTk3MWItNTY4Yi00N2ZlLWJhZmMtOGNjZmNhYmYyNzc5XkEyXkFqcGc@._V1_.jpg",
//                                 "height": 850,
//                                 "width": 600
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0553648",
//                                                 "nameText": {
//                                                     "text": "Olivier Martinez"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm2765194240",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMTU5MzAwODgxNV5BMl5BanBnXkFtZTcwNjQ3NDUxNA@@._V1_.jpg",
//                                                     "height": 400,
//                                                     "width": 288
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0001960",
//                                                 "nameText": {
//                                                     "text": "Romane Bohringer"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm152672768",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMjE0MjA4NzQwM15BMl5BanBnXkFtZTYwMTg0ODgz._V1_.jpg",
//                                                     "height": 400,
//                                                     "width": 267
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0845209",
//                                                 "nameText": {
//                                                     "text": "Aitana Sánchez-Gijón"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm241875456",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMTMyOTg2MDIwNl5BMl5BanBnXkFtZTcwNjU2Nzg0NA@@._V1_.jpg",
//                                                     "height": 2048,
//                                                     "width": 1315
//                                                 }
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt8852130",
//                             "titleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2018,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 12,
//                                 "day": 21,
//                                 "year": 2018,
//                                 "country": {
//                                     "id": "IN"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm1000278529",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BNmRhNjdiYWQtNjAyNC00OTg4LWE1ZTAtN2QzZGQ3NzAyNzQ2XkEyXkFqcGc@._V1_.jpg",
//                                 "height": 1401,
//                                 "width": 1118
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm5568493",
//                                                 "nameText": {
//                                                     "text": "Raj Singh Jhinjar"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm1053167873",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BNjAxNGI1MjMtNWZmYi00OTk1LWE3OWUtZDM2YTMzNmM5MmU4XkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 4264,
//                                                     "width": 2965
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm10047651",
//                                                 "nameText": {
//                                                     "text": "Kamal Khangura"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm5679766",
//                                                 "nameText": {
//                                                     "text": "Gurpreet Bhangu"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm3381180417",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BNjJkZGFjZWMtMTRiZi00NTk5LWIxNTYtYjhhNzY4ODA1OGVmXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 960,
//                                                     "width": 720
//                                                 }
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt1623780",
//                             "titleText": {
//                                 "text": "The Legend of the Titanic",
//                                 "isOriginalTitle": false
//                             },
//                             "originalTitleText": {
//                                 "text": "La leggenda del Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 1999,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 4,
//                                 "day": 17,
//                                 "year": 1999,
//                                 "country": {
//                                     "id": "IT"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm140825856",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BMjMxNDU5MTk1MV5BMl5BanBnXkFtZTgwMDk5NDUyMTE@._V1_.jpg",
//                                 "height": 500,
//                                 "width": 333
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0810987",
//                                                 "nameText": {
//                                                     "text": "Gregory Snegoff"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm3650181120",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BZTc2MWUwMjMtZjM5Ni00NTE2LWExM2MtZGZmNDg4Y2IyM2Y0XkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 720,
//                                                     "width": 584
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0661050",
//                                                 "nameText": {
//                                                     "text": "Francis Pardeilhan"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm432445952",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMTQ5NDQ4ODMxOV5BMl5BanBnXkFtZTYwNjg3NDcy._V1_.jpg",
//                                                     "height": 605,
//                                                     "width": 450
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0018485",
//                                                 "nameText": {
//                                                     "text": "Jane Alexander"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt13328824",
//                             "titleText": {
//                                 "text": "The Blind Man Who Did Not Want to See Titanic",
//                                 "isOriginalTitle": false
//                             },
//                             "originalTitleText": {
//                                 "text": "Sokea mies joka ei halunnut nähdä Titanicia",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2021,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 9,
//                                 "day": 10,
//                                 "year": 2021,
//                                 "country": {
//                                     "id": "FI"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm2788422401",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BZmVkYWZlMGQtYTMxYy00ZTJjLTg0ZTgtMzYzYjZlYjMwODg5XkEyXkFqcGc@._V1_.jpg",
//                                 "height": 1714,
//                                 "width": 1200
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0688414",
//                                                 "nameText": {
//                                                     "text": "Petri Poikolainen"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0537523",
//                                                 "nameText": {
//                                                     "text": "Marjaana Maijala"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm2981025793",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BNTk2YzY2ZjYtYzVlZS00NDY2LWFiOWYtYmNhNDM0MzMzMzBiXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 1069,
//                                                     "width": 1900
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm2799791",
//                                                 "nameText": {
//                                                     "text": "Samuli Jaskio"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt0141904",
//                             "titleText": {
//                                 "text": "Titanic Waltz",
//                                 "isOriginalTitle": false
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic vals",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 1965,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 1,
//                                 "day": 25,
//                                 "year": 1965,
//                                 "country": {
//                                     "id": "RO"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [
//                                     {
//                                         "id": "TV premiere",
//                                         "text": "TV premiere"
//                                     }
//                                 ],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm3143165184",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BYWY3NjgwY2EtZTY1MS00MDc4LTg5M2YtOTc5ZTViMmNkZTQxXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 960,
//                                 "width": 700
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0890539",
//                                                 "nameText": {
//                                                     "text": "Grigore Vasiliu-Birlic"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0298081",
//                                                 "nameText": {
//                                                     "text": "Silvia Fulda"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0315645",
//                                                 "nameText": {
//                                                     "text": "Kity Gheorghiu-Musatescu"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt0330994",
//                             "titleText": {
//                                 "text": "Titanic: The Legend Goes On...",
//                                 "isOriginalTitle": false
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic - La leggenda continua",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2000,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 9,
//                                 "day": 15,
//                                 "year": 2000,
//                                 "country": {
//                                     "id": "IT"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm871535872",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BMTg5MjcxODAwMV5BMl5BanBnXkFtZTcwMTk4OTMwMg@@._V1_.jpg",
//                                 "height": 1097,
//                                 "width": 780
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm1023104",
//                                                 "nameText": {
//                                                     "text": "Lisa Russo"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm1002055",
//                                                 "nameText": {
//                                                     "text": "Mark Thompson-Ashworth"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0558637",
//                                                 "nameText": {
//                                                     "text": "Gisella Mathews"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt26544514",
//                             "titleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2016,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 7,
//                                 "day": 1,
//                                 "year": 2016,
//                                 "country": {
//                                     "id": "IN"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm3684520961",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BNmRkYTI2ZjItMWFjNi00ODg3LWJkMDAtMTM0YWMxYmYyMDNkXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 1600,
//                                 "width": 1035
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm1298052",
//                                                 "nameText": {
//                                                     "text": "Raghu Babu"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm6914194",
//                                                 "nameText": {
//                                                     "text": "Yamini Bhaskar"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm2465565697",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMGE4YTZmYTctZjRiMS00MjYyLTkyNmYtMjg2ZmRkYzI2Y2RhXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 1259,
//                                                     "width": 1681
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm3760044",
//                                                 "nameText": {
//                                                     "text": "Prudhviraj"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm2332857345",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BODUyNzhmOTQtMWFkMS00ZWYwLTkzM2YtODY3OTZkN2MyZDhjXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 639,
//                                                     "width": 660
//                                                 }
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt1719665",
//                             "titleText": {
//                                 "text": "In Search of the Titanic",
//                                 "isOriginalTitle": false
//                             },
//                             "originalTitleText": {
//                                 "text": "Tentacolino",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2004,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": null,
//                                 "day": null,
//                                 "year": 2004,
//                                 "country": {
//                                     "id": "IT"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm3303929601",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BM2NhZTE1ZmItZjQwYi00ZDZmLTg5ZWMtODcxOWZiYjQ0ZjJlXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 561,
//                                 "width": 400
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0018485",
//                                                 "nameText": {
//                                                     "text": "Jane Alexander"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0019681",
//                                                 "nameText": {
//                                                     "text": "Manfredi Aliquo"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm3292692481",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BMDcwOGZlODAtOGM2MC00NmZhLTk5MTQtZWNkNWIyYTE3ZjcwXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 1024,
//                                                     "width": 768
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0080656",
//                                                 "nameText": {
//                                                     "text": "Rodolfo Bianchi"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt2495766",
//                             "titleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "Titanic",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 2012,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 10,
//                                 "day": 2,
//                                 "year": 2012,
//                                 "country": {
//                                     "id": "GB"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [
//                                     {
//                                         "id": "internet",
//                                         "text": "internet"
//                                     }
//                                 ],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm2954896641",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BMjVlNTYxYTktMWQ3OS00YTdkLWIwZTYtMTE5NGFlMDFmYmUxXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 1080,
//                                 "width": 1346
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm4430776",
//                                                 "nameText": {
//                                                     "text": "Pete Meads"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm2686450433",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BODIyZTg3ZGUtZTlhNi00YTAxLWE2MGItZTVlNWEzMmU2NjIxXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 1068,
//                                                     "width": 823
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm5410036",
//                                                 "nameText": {
//                                                     "text": "Kevin Lincoln"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm4566494",
//                                                 "nameText": {
//                                                     "text": "John Duggan"
//                                                 },
//                                                 "primaryImage": null
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 },
//                 {
//                     "node": {
//                         "entity": {
//                             "__typename": "Title",
//                             "id": "tt0051994",
//                             "titleText": {
//                                 "text": "A Night to Remember",
//                                 "isOriginalTitle": true
//                             },
//                             "originalTitleText": {
//                                 "text": "A Night to Remember",
//                                 "isOriginalTitle": true
//                             },
//                             "releaseYear": {
//                                 "__typename": "YearRange",
//                                 "year": 1958,
//                                 "endYear": null
//                             },
//                             "releaseDate": {
//                                 "__typename": "ReleaseDate",
//                                 "month": 12,
//                                 "day": 16,
//                                 "year": 1958,
//                                 "country": {
//                                     "id": "US"
//                                 },
//                                 "restriction": null,
//                                 "attributes": [],
//                                 "displayableProperty": {
//                                     "qualifiersInMarkdownList": null
//                                 }
//                             },
//                             "titleType": {
//                                 "__typename": "TitleType",
//                                 "id": "movie",
//                                 "text": "Movie",
//                                 "categories": [
//                                     {
//                                         "id": "movie",
//                                         "text": "Movie",
//                                         "value": "movie"
//                                     }
//                                 ],
//                                 "canHaveEpisodes": false,
//                                 "isEpisode": false,
//                                 "isSeries": false,
//                                 "displayableProperty": {
//                                     "value": {
//                                         "plainText": ""
//                                     }
//                                 }
//                             },
//                             "primaryImage": {
//                                 "__typename": "Image",
//                                 "id": "rm2004123137",
//                                 "url": "https://m.media-amazon.com/images/M/MV5BOTgyYTE4NTEtY2I2OC00OWU2LWEwMGUtYzBjMGI5ODc5NTlhXkEyXkFqcGc@._V1_.jpg",
//                                 "height": 1481,
//                                 "width": 1000
//                             },
//                             "episodes": null,
//                             "series": null,
//                             "principalCredits": [
//                                 {
//                                     "credits": [
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0603336",
//                                                 "nameText": {
//                                                     "text": "Kenneth More"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm1420152577",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BNzgyOGRhNDktODRhZS00MDM0LWIyNmUtMzNlNzc2ZTIxMmRiXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 720,
//                                                     "width": 992
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0021004",
//                                                 "nameText": {
//                                                     "text": "Ronald Allen"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm3481093376",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BZjQ0ZjEyNDUtYzE5Yi00NjM0LTg2ZTQtNzE5ZjYwMmMxYjA1XkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 461,
//                                                     "width": 350
//                                                 }
//                                             }
//                                         },
//                                         {
//                                             "name": {
//                                                 "__typename": "Name",
//                                                 "id": "nm0044010",
//                                                 "nameText": {
//                                                     "text": "Robert Ayres"
//                                                 },
//                                                 "primaryImage": {
//                                                     "__typename": "Image",
//                                                     "id": "rm3150784768",
//                                                     "url": "https://m.media-amazon.com/images/M/MV5BZmM3YzBlZDEtMGE5YS00ZTI2LWFmYTYtNzcwNTc4ZTYyYWRjXkEyXkFqcGc@._V1_.jpg",
//                                                     "height": 576,
//                                                     "width": 701
//                                                 }
//                                             }
//                                         }
//                                     ]
//                                 }
//                             ]
//                         }
//                     }
//                 }
//             ]
//         }
//     },
//     "status": true,
//     "message": "Successful"
// }