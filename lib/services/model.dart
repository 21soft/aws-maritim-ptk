import 'dart:convert';

Model modelFromJson(String str) => Model.fromJson(json.decode(str));

String modelToJson(Model data) => json.encode(data.toJson());

class Model {
  Model({
    required this.idaws,
    required this.waktu,
    required this.windspeed,
    required this.winddir,
    required this.temp,
    required this.rh,
    required this.pressure,
    required this.rain,
    required this.solrad,
    required this.netrad,
    required this.watertemp,
    required this.waterlevel,
    required this.taMin,
    required this.taMax,
    required this.pancilevel,
    required this.pancitemp,
  });

  String idaws;
  DateTime waktu;
  String windspeed;
  String winddir;
  String temp;
  String rh;
  String pressure;
  String rain;
  String solrad;
  String netrad;
  String watertemp;
  String waterlevel;
  String taMin;
  String taMax;
  String pancilevel;
  String pancitemp;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    idaws: json["idaws"],
    waktu: DateTime.parse(json["waktu"]),
    windspeed: json["windspeed"],
    winddir: json["winddir"],
    temp: json["temp"],
    rh: json["rh"],
    pressure: json["pressure"],
    rain: json["rain"],
    solrad: json["solrad"],
    netrad: json["netrad"],
    watertemp: json["watertemp"],
    waterlevel: json["waterlevel"],
    taMin: json["ta_min"],
    taMax: json["ta_max"],
    pancilevel: json["pancilevel"],
    pancitemp: json["pancitemp"],
  );

  Map<String, dynamic> toJson() => {
    "idaws": idaws,
    "waktu": waktu.toIso8601String(),
    "windspeed": windspeed,
    "winddir": winddir,
    "temp": temp,
    "rh": rh,
    "pressure": pressure,
    "rain": rain,
    "solrad": solrad,
    "netrad": netrad,
    "watertemp": watertemp,
    "waterlevel": waterlevel,
    "ta_min": taMin,
    "ta_max": taMax,
    "pancilevel": pancilevel,
    "pancitemp": pancitemp,
  };
}
