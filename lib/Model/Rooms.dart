class Rooms {
  String? sId;
  List<Teams>? teams;
  String? owner;
  String? title;
  String? description;
  int? type;
  int? iV;

  Rooms(
      {this.sId,
        this.teams,
        this.owner,
        this.title,
        this.description,
        this.type,
        this.iV});

  Rooms.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams!.add(new Teams.fromJson(v));
      });
    }
    owner = json['owner'];
    title = json['title'];
    description = json['description'];
    type = json['type'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.teams != null) {
      data['teams'] = this.teams!.map((v) => v.toJson()).toList();
    }
    data['owner'] = this.owner;
    data['title'] = this.title;
    data['description'] = this.description;
    data['type'] = this.type;
    data['__v'] = this.iV;
    return data;
  }
}

class Teams {
  String? label;
  List<Players>? players;
  bool? isWinner;
  int? result;
  int? enemyResult;
  String? sId;
  int? iV;

  Teams(
      {this.label,
        this.players,
        this.isWinner,
        this.result,
        this.enemyResult,
        this.sId,
        this.iV});

  Teams.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    if (json['players'] != null) {
      players = <Players>[];
      json['players'].forEach((v) {
        players!.add(new Players.fromJson(v));
      });
    }
    isWinner = json['isWinner'];
    result = json['result'];
    enemyResult = json['enemyResult'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    if (this.players != null) {
      data['players'] = this.players!.map((v) => v.toJson()).toList();
    }
    data['isWinner'] = this.isWinner;
    data['result'] = this.result;
    data['enemyResult'] = this.enemyResult;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}

class Players {
  String? sId;
  String? firstName;
  String? lastName;
  String? cin;
  String? phone;
  int? iV;

  Players(
      {this.sId, this.firstName, this.lastName, this.cin, this.phone, this.iV});

  Players.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    cin = json['cin'];
    phone = json['phone'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['cin'] = this.cin;
    data['phone'] = this.phone;
    data['__v'] = this.iV;
    return data;
  }
}