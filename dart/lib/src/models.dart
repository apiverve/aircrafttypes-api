/// Response models for the Aircraft Types API.

/// API Response wrapper.
class AircrafttypesResponse {
  final String status;
  final dynamic error;
  final AircrafttypesData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AircrafttypesResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AircrafttypesResponse.fromJson(Map<String, dynamic> json) => AircrafttypesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AircrafttypesData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Aircraft Types API.

class AircrafttypesData {
  num? count;
  num? returned;
  List<AircrafttypesDataTypesItem>? types;

  AircrafttypesData({
    this.count,
    this.returned,
    this.types,
  });

  factory AircrafttypesData.fromJson(Map<String, dynamic> json) => AircrafttypesData(
      count: json['count'],
      returned: json['returned'],
      types: (json['types'] as List?)?.map((e) => AircrafttypesDataTypesItem.fromJson(e)).toList(),
    );
}

class AircrafttypesDataTypesItem {
  String? icaoCode;
  String? faaDesignator;
  String? manufacturer;
  String? model;
  String? variant;
  String? aircraftClass;
  String? engineType;
  num? engineCount;
  num? wingspanFt;
  num? wingspanWithoutWingletsFt;
  bool? hasWinglets;
  num? lengthFt;
  num? tailHeightFt;
  num? maxTakeoffWeightLb;
  num? maxLandingWeightLb;
  num? approachSpeedKnots;
  AircrafttypesDataTypesItemApproachspeedrangeknots? approachSpeedRangeKnots;
  String? approachCategory;
  String? designGroup;
  String? icaoWakeCategory;
  String? faaWeightClass;
  AircrafttypesDataTypesItemMetric? metric;
  AircrafttypesDataTypesItemAirport? airport;
  AircrafttypesDataTypesItemWake? wake;
  AircrafttypesDataTypesItemUsage? usage;
  String? remarks;
  dynamic lastUpdated;

  AircrafttypesDataTypesItem({
    this.icaoCode,
    this.faaDesignator,
    this.manufacturer,
    this.model,
    this.variant,
    this.aircraftClass,
    this.engineType,
    this.engineCount,
    this.wingspanFt,
    this.wingspanWithoutWingletsFt,
    this.hasWinglets,
    this.lengthFt,
    this.tailHeightFt,
    this.maxTakeoffWeightLb,
    this.maxLandingWeightLb,
    this.approachSpeedKnots,
    this.approachSpeedRangeKnots,
    this.approachCategory,
    this.designGroup,
    this.icaoWakeCategory,
    this.faaWeightClass,
    this.metric,
    this.airport,
    this.wake,
    this.usage,
    this.remarks,
    this.lastUpdated,
  });

  factory AircrafttypesDataTypesItem.fromJson(Map<String, dynamic> json) => AircrafttypesDataTypesItem(
      icaoCode: json['icaoCode'],
      faaDesignator: json['faaDesignator'],
      manufacturer: json['manufacturer'],
      model: json['model'],
      variant: json['variant'],
      aircraftClass: json['aircraftClass'],
      engineType: json['engineType'],
      engineCount: json['engineCount'],
      wingspanFt: json['wingspanFt'],
      wingspanWithoutWingletsFt: json['wingspanWithoutWingletsFt'],
      hasWinglets: json['hasWinglets'],
      lengthFt: json['lengthFt'],
      tailHeightFt: json['tailHeightFt'],
      maxTakeoffWeightLb: json['maxTakeoffWeightLb'],
      maxLandingWeightLb: json['maxLandingWeightLb'],
      approachSpeedKnots: json['approachSpeedKnots'],
      approachSpeedRangeKnots: json['approachSpeedRangeKnots'] != null ? AircrafttypesDataTypesItemApproachspeedrangeknots.fromJson(json['approachSpeedRangeKnots']) : null,
      approachCategory: json['approachCategory'],
      designGroup: json['designGroup'],
      icaoWakeCategory: json['icaoWakeCategory'],
      faaWeightClass: json['faaWeightClass'],
      metric: json['metric'] != null ? AircrafttypesDataTypesItemMetric.fromJson(json['metric']) : null,
      airport: json['airport'] != null ? AircrafttypesDataTypesItemAirport.fromJson(json['airport']) : null,
      wake: json['wake'] != null ? AircrafttypesDataTypesItemWake.fromJson(json['wake']) : null,
      usage: json['usage'] != null ? AircrafttypesDataTypesItemUsage.fromJson(json['usage']) : null,
      remarks: json['remarks'],
      lastUpdated: json['lastUpdated'],
    );
}

class AircrafttypesDataTypesItemApproachspeedrangeknots {
  num? min;
  num? max;

  AircrafttypesDataTypesItemApproachspeedrangeknots({
    this.min,
    this.max,
  });

  factory AircrafttypesDataTypesItemApproachspeedrangeknots.fromJson(Map<String, dynamic> json) => AircrafttypesDataTypesItemApproachspeedrangeknots(
      min: json['min'],
      max: json['max'],
    );
}

class AircrafttypesDataTypesItemMetric {
  num? wingspanM;
  num? lengthM;
  num? tailHeightM;
  num? maxTakeoffWeightKg;
  num? maxLandingWeightKg;

  AircrafttypesDataTypesItemMetric({
    this.wingspanM,
    this.lengthM,
    this.tailHeightM,
    this.maxTakeoffWeightKg,
    this.maxLandingWeightKg,
  });

  factory AircrafttypesDataTypesItemMetric.fromJson(Map<String, dynamic> json) => AircrafttypesDataTypesItemMetric(
      wingspanM: json['wingspanM'],
      lengthM: json['lengthM'],
      tailHeightM: json['tailHeightM'],
      maxTakeoffWeightKg: json['maxTakeoffWeightKg'],
      maxLandingWeightKg: json['maxLandingWeightKg'],
    );
}

class AircrafttypesDataTypesItemAirport {
  String? taxiwayDesignGroup;
  num? wheelbaseFt;
  num? cockpitToMainGearFt;
  num? mainGearWidthFt;
  String? mainGearConfig;
  num? parkingAreaFt2;
  num? parkingAreaM2;
  dynamic rotorDiameterFt;

  AircrafttypesDataTypesItemAirport({
    this.taxiwayDesignGroup,
    this.wheelbaseFt,
    this.cockpitToMainGearFt,
    this.mainGearWidthFt,
    this.mainGearConfig,
    this.parkingAreaFt2,
    this.parkingAreaM2,
    this.rotorDiameterFt,
  });

  factory AircrafttypesDataTypesItemAirport.fromJson(Map<String, dynamic> json) => AircrafttypesDataTypesItemAirport(
      taxiwayDesignGroup: json['taxiwayDesignGroup'],
      wheelbaseFt: json['wheelbaseFt'],
      cockpitToMainGearFt: json['cockpitToMainGearFt'],
      mainGearWidthFt: json['mainGearWidthFt'],
      mainGearConfig: json['mainGearConfig'],
      parkingAreaFt2: json['parkingAreaFt2'],
      parkingAreaM2: json['parkingAreaM2'],
      rotorDiameterFt: json['rotorDiameterFt'],
    );
}

class AircrafttypesDataTypesItemWake {
  String? consolidatedCategory;
  String? recat15Category;
  String? recat2CategoryA;
  String? recat2CategoryB;
  String? sameRunwaySeparation;
  String? lahsoGroup;

  AircrafttypesDataTypesItemWake({
    this.consolidatedCategory,
    this.recat15Category,
    this.recat2CategoryA,
    this.recat2CategoryB,
    this.sameRunwaySeparation,
    this.lahsoGroup,
  });

  factory AircrafttypesDataTypesItemWake.fromJson(Map<String, dynamic> json) => AircrafttypesDataTypesItemWake(
      consolidatedCategory: json['consolidatedCategory'],
      recat15Category: json['recat15Category'],
      recat2CategoryA: json['recat2CategoryA'],
      recat2CategoryB: json['recat2CategoryB'],
      sameRunwaySeparation: json['sameRunwaySeparation'],
      lahsoGroup: json['lahsoGroup'],
    );
}

class AircrafttypesDataTypesItemUsage {
  bool? usRegistered;
  num? usRegistrations;
  num? annualFlightPlanOperations;
  num? operationsYear;

  AircrafttypesDataTypesItemUsage({
    this.usRegistered,
    this.usRegistrations,
    this.annualFlightPlanOperations,
    this.operationsYear,
  });

  factory AircrafttypesDataTypesItemUsage.fromJson(Map<String, dynamic> json) => AircrafttypesDataTypesItemUsage(
      usRegistered: json['usRegistered'],
      usRegistrations: json['usRegistrations'],
      annualFlightPlanOperations: json['annualFlightPlanOperations'],
      operationsYear: json['operationsYear'],
    );
}

class AircrafttypesRequest {
  String? icao;
  String? manufacturer;
  String? model;
  String? engineType;
  String? wakeCategory;
  int? engines;
  int? limit;

  AircrafttypesRequest({
    this.icao,
    this.manufacturer,
    this.model,
    this.engineType,
    this.wakeCategory,
    this.engines,
    this.limit,
  });

  Map<String, dynamic> toJson() => {
      if (icao != null) 'icao': icao,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (model != null) 'model': model,
      if (engineType != null) 'engineType': engineType,
      if (wakeCategory != null) 'wakeCategory': wakeCategory,
      if (engines != null) 'engines': engines,
      if (limit != null) 'limit': limit,
    };
}
