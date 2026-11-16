declare module '@apiverve/aircrafttypes' {
  export interface aircrafttypesOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface aircrafttypesResponse {
    status: string;
    error: string | null;
    data: AircraftTypesData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AircraftTypesData {
      count:    number | null;
      returned: number | null;
      types:    Type[];
  }
  
  interface Type {
      icaoCode:                  null | string;
      faaDesignator:             null | string;
      manufacturer:              null | string;
      model:                     null | string;
      variant:                   null | string;
      aircraftClass:             null | string;
      engineType:                null | string;
      engineCount:               number | null;
      wingspanFt:                number | null;
      wingspanWithoutWingletsFt: number | null;
      hasWinglets:               boolean | null;
      lengthFt:                  number | null;
      tailHeightFt:              number | null;
      maxTakeoffWeightLB:        number | null;
      maxLandingWeightLB:        number | null;
      approachSpeedKnots:        number | null;
      approachSpeedRangeKnots:   ApproachSpeedRangeKnots;
      approachCategory:          null | string;
      designGroup:               null | string;
      icaoWakeCategory:          null | string;
      faaWeightClass:            null | string;
      metric:                    Metric;
      airport:                   Airport;
      wake:                      Wake;
      usage:                     Usage;
      remarks:                   null | string;
      lastUpdated:               null;
  }
  
  interface Airport {
      taxiwayDesignGroup:  null | string;
      wheelbaseFt:         number | null;
      cockpitToMainGearFt: number | null;
      mainGearWidthFt:     number | null;
      mainGearConfig:      null | string;
      parkingAreaFt2:      number | null;
      parkingAreaM2:       number | null;
      rotorDiameterFt:     null;
  }
  
  interface ApproachSpeedRangeKnots {
      min: number | null;
      max: number | null;
  }
  
  interface Metric {
      wingspanM:          number | null;
      lengthM:            number | null;
      tailHeightM:        number | null;
      maxTakeoffWeightKg: number | null;
      maxLandingWeightKg: number | null;
  }
  
  interface Usage {
      usRegistered:               boolean | null;
      usRegistrations:            number | null;
      annualFlightPlanOperations: number | null;
      operationsYear:             number | null;
  }
  
  interface Wake {
      consolidatedCategory: null | string;
      recat15Category:      null | string;
      recat2CategoryA:      null | string;
      recat2CategoryB:      null | string;
      sameRunwaySeparation: null | string;
      lahsoGroup:           null | string;
  }

  export default class aircrafttypesWrapper {
    constructor(options: aircrafttypesOptions);

    execute(callback: (error: any, data: aircrafttypesResponse | null) => void): Promise<aircrafttypesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: aircrafttypesResponse | null) => void): Promise<aircrafttypesResponse>;
    execute(query?: Record<string, any>): Promise<aircrafttypesResponse>;
  }
}
