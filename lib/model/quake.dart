import 'package:quakes_app_google_map/util/types_helper.dart';

/** todo 1 buat model **/

class Quake {
  String? type;
  Metadata? metadata;
  List<Features>? features;
  List<double>? bbox;

  Quake({
    required this.type,
    required this.metadata,
    required this.features,
    required this.bbox,
  });

  Quake.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    metadata =
        json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    if (json['features'] != null) {
      features = <Features>[];
      json['features'].forEach((v) {
        features?.add(Features.fromJson(v));
      });
    }
    bbox = json['bbox'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['type'] = this.type;
    if (this.metadata != null) {
      data['metadata'] = this.metadata?.toJson();
    }
    if (this.features != null) {
      data['features'] = this.features?.map((v) => v?.toJson()).toList();
    }
    data['bbox'] = this.bbox;
    return data;
  }
}

class Metadata {
  int? generated;
  String? url;
  String? title;
  int? status;
  String? api;
  int? count;

  Metadata({
    required this.generated,
    required this.url,
    required this.title,
    required this.status,
    required this.api,
    required this.count,
  });

  Metadata.fromJson(Map<String, dynamic> json) {
    generated = json['generated'];
    url = json['url'];
    title = json['title'];
    status = json['status'];
    api = json['api'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['generated'] = this.generated;
    data['url'] = this.url;
    data['title'] = this.title;
    data['status'] = this.status;
    data['api'] = this.api;
    data['count'] = this.count;
    return data;
  }
}

class Features {
  String? type;
  Properties? properties;
  Geometry? geometry;
  String? id;

  Features({
    required this.type,
    required this.properties,
    required this.geometry,
    required this.id,
  });

  Features.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    properties = json['properties'] != null
        ? new Properties.fromJson(json['properties'])
        : null;
    geometry = json['geometry'] != null
        ? new Geometry.fromJson(json['geometry'])
        : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.properties != null) {
      data['properties'] = this.properties?.toJson();
    }
    if (this.geometry != null) {
      data['geometry'] = this.geometry?.toJson();
    }
    data['id'] = this.id;
    return data;
  }
}

class Properties {
  double? mag;
  String? place;
  int? time;
  int? updated;
  int? tz;
  String? url;
  String? detail;
  int? felt;
  double? cdi;
  double? mmi;
  String? alert;
  String? status;
  int? tsunami;
  int? sig;
  String? net;
  String? code;
  String? ids;
  String? sources;
  String? types;
  int? nst;
  double? dmin;
  double? rms;
  int? gap;
  String? magType;
  String? type;
  String? title;

  Properties({
    required this.mag,
    required this.place,
    required this.time,
    required this.updated,
    required this.tz,
    required this.url,
    required this.detail,
    required this.felt,
    required this.cdi,
    required this.mmi,
    required this.alert,
    required this.status,
    required this.tsunami,
    required this.sig,
    required this.net,
    required this.code,
    required this.ids,
    required this.sources,
    required this.types,
    required this.nst,
    required this.dmin,
    required this.rms,
    required this.gap,
    required this.magType,
    required this.type,
    required this.title,
  });

  Properties.fromJson(Map<String, dynamic> json) {
    mag = TypesHelper.toDouble(json['mag']); /** todo 2 contoh convert value to double (next types_helper) **/
    place = json['place'];
    time = TypesHelper.toInt(json['time']);
    updated = TypesHelper.toInt(json['updated']);
    tz = TypesHelper.toInt(json['tz']);
    url = json['url'];
    detail = json['detail'];
    felt = TypesHelper.toInt(json['felt']);
    cdi = TypesHelper.toDouble(json['cdi']);
    mmi = TypesHelper.toDouble(json['mmi']);
    alert = json['alert'];
    status = json['status'];
    tsunami = TypesHelper.toInt(json['tsunami']);
    sig = TypesHelper.toInt(json['sig']);
    net = json['net'];
    code = json['code'];
    ids = json['ids'];
    sources = json['sources'];
    types = json['types'];
    nst = TypesHelper.toInt(json['nst']);
    dmin = TypesHelper.toDouble(json['dmin']);
    rms = TypesHelper.toDouble(json['rms']);
    gap = TypesHelper.toInt(json['gap']);
    magType = json['magType'];
    type = json['type'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mag'] = this.mag;
    data['place'] = this.place;
    data['time'] = this.time;
    data['updated'] = this.updated;
    data['tz'] = this.tz;
    data['url'] = this.url;
    data['detail'] = this.detail;
    data['felt'] = this.felt;
    data['cdi'] = this.cdi;
    data['mmi'] = this.mmi;
    data['alert'] = this.alert;
    data['status'] = this.status;
    data['tsunami'] = this.tsunami;
    data['sig'] = this.sig;
    data['net'] = this.net;
    data['code'] = this.code;
    data['ids'] = this.ids;
    data['sources'] = this.sources;
    data['types'] = this.types;
    data['nst'] = this.nst;
    data['dmin'] = this.dmin;
    data['rms'] = this.rms;
    data['gap'] = this.gap;
    data['magType'] = this.magType;
    data['type'] = this.type;
    data['title'] = this.title;
    return data;
  }
}

class Geometry {
  String? type;
  List<double>? coordinates;

  Geometry({required this.type, required this.coordinates});

  Geometry.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['coordinates'] = this.coordinates;
    return data;
  }
}
