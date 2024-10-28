import 'dart:developer';

class Launch {
  final int? flightNumber;
  final String? missionName;
  final List<dynamic>? missionId;
  final bool? upcoming;
  final String? launchYear;
  final int? launchDateUnix;
  final String? launchDateUtc;
  final String? launchDateLocal;
  final bool? isTentative;
  final String? tentativeMaxPrecision;
  final bool? tbd;
  final int? launchWindow;
  final Map<String, dynamic>? rocket;
  final List<dynamic>? ships;
  final Map<String, dynamic>? telemetry;
  final Map<String, dynamic>? launchSite;
  final bool? launchSuccess;
  final Map<String, dynamic>? launchFailureDetails;
  final Map<String, dynamic>? links;
  final String? details;
  final String? staticFireDateUtc;
  final int? staticFireDateUnix;
  final Map<String, dynamic>? timeline;

  Launch({
    required this.flightNumber,
    required this.missionName,
    required this.missionId,
    required this.upcoming,
    required this.launchYear,
    required this.launchDateUnix,
    required this.launchDateUtc,
    required this.launchDateLocal,
    required this.isTentative,
    required this.tentativeMaxPrecision,
    required this.tbd,
    required this.launchWindow,
    required this.rocket,
    required this.ships,
    required this.telemetry,
    required this.launchSite,
    required this.launchSuccess,
    required this.launchFailureDetails,
    required this.links,
    required this.details,
    required this.staticFireDateUtc,
    required this.staticFireDateUnix,
    required this.timeline,
  });

  factory Launch.fromJson(Map<String, dynamic> json) {
    return Launch(
      flightNumber: json['flight_number'],
      missionName: json['mission_name'],
      missionId: json['mission_id'],
      upcoming: json['upcoming'],
      launchYear: json['launch_year'],
      launchDateUnix: json['launch_date_unix'],
      launchDateUtc: json['launch_date_utc'],
      launchDateLocal: json['launch_date_local'],
      isTentative: json['is_tentative'],
      tentativeMaxPrecision: json['tentative_max_precision'],
      tbd: json['tbd'],
      launchWindow: json['launch_window'],
      rocket: json['rocket'],
      ships: json['ships'],
      telemetry: json['telemetry'],
      launchSite: json['launch_site'],
      launchSuccess: json['launch_success'],
      launchFailureDetails: json['launch_failure_details'],
      links: _parseLinks(json['links']),
      details: json['details'],
      staticFireDateUtc: json['static_fire_date_utc'],
      staticFireDateUnix: json['static_fire_date_unix'],
      timeline: json['timeline']
    );
  }

  // 私有方法來解析 links
  static Map<String, dynamic>? _parseLinks(Map<String, dynamic>? jsonLinks) {
    if (jsonLinks == null) return null;// 如果為 null，返回 null
    return {
      'mission_patch': jsonLinks['mission_patch'],
      'mission_patch_small': jsonLinks['mission_patch_small'],
      'article_link': jsonLinks['article_link'],
      'wikipedia': jsonLinks['wikipedia'],
      'video_link': jsonLinks['video_link'],
    };
  }

}

//v rocket內結構 v
class Rocket {
  final String rocketId;
  final String rocketName;
  final String rocketType;
  final FirstStage firstStage;
  final SecondStage secondStage;
  final Fairings? fairings;

  Rocket({
    required this.rocketId,
    required this.rocketName,
    required this.rocketType,
    required this.firstStage,
    required this.secondStage,
    this.fairings,
  });
}

class FirstStage {
  final List<Core> cores;

  FirstStage({required this.cores});
}

class Core {
  final String coreSerial;
  final int flight;
  final int? block;
  final bool gridfins;
  final bool legs;
  final bool reused;
  final bool landingIntent;
  final String? landingType;
  final String? landingVehicle;

  Core({
    required this.coreSerial,
    required this.flight,
    this.block,
    required this.gridfins,
    required this.legs,
    required this.reused,
    required this.landingIntent,
    this.landingType,
    this.landingVehicle,
  });
}

class SecondStage {
  final int block;
  final List<Payload> payloads;

  SecondStage({required this.block, required this.payloads});
}

class Payload {
  final String payloadId;
  final List<int> noradId;
  final bool reused;
  final List<String> customers;
  final String nationality;
  final String manufacturer;
  final String payloadType;
  final double payloadMassKg;
  final double payloadMassLbs;
  final String orbit;
  final OrbitParams orbitParams;

  Payload({
    required this.payloadId,
    required this.noradId,
    required this.reused,
    required this.customers,
    required this.nationality,
    required this.manufacturer,
    required this.payloadType,
    required this.payloadMassKg,
    required this.payloadMassLbs,
    required this.orbit,
    required this.orbitParams,
  });
}

class OrbitParams {
  final String referenceSystem;
  final String regime;
  final double? longitude;
  final double? semiMajorAxisKm;
  final double? eccentricity;
  final double periapsisKm;
  final double apoapsisKm;
  final double inclinationDeg;
  final double? periodMin;
  final int? lifespanYears;

  OrbitParams({
    required this.referenceSystem,
    required this.regime,
    this.longitude,
    this.semiMajorAxisKm,
    this.eccentricity,
    required this.periapsisKm,
    required this.apoapsisKm,
    required this.inclinationDeg,
    this.periodMin,
    this.lifespanYears,
  });
}

class Fairings {
  final bool reused;
  final bool recoveryAttempt;
  final bool recovered;
  final String? ship;

  Fairings({
    required this.reused,
    required this.recoveryAttempt,
    required this.recovered,
    this.ship,
  });
}
//^ rocket內結構 ^

class Telemetry{
  final String flightClub;

  Telemetry({
    required this.flightClub,
  });
}

class LaunchSite {
  final String siteId;
  final String siteName;
  final String siteNameLong;

  LaunchSite({
    required this.siteId,
    required this.siteName,
    required this.siteNameLong,
  });
}

class LaunchFailureDetails {
  final int time;
  final double? altitude;
  final String reason;

  LaunchFailureDetails({
    required this.time,
    this.altitude,
    required this.reason,
  });
}

class Links {
  final String? missionPatch;
  final String? missionPatchSmall;
  final String? articleLink;
  final String? wikipedia;
  final String? videoLink;

  Links({
    required this.missionPatch,
    required this.missionPatchSmall,
    this.articleLink,
    this.wikipedia,
    this.videoLink,
  });

  Map<String, dynamic> toJson() {
    return {
      'mission_patch': missionPatch!,
      'mission_patch_small': missionPatchSmall!,
      'article_link': articleLink!,
      'wikipedia': wikipedia!,
      'video_link': videoLink!,
    };
  }
}