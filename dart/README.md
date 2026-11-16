# Aircraft Types API - Dart/Flutter Client

Aircraft Types returns the physical and operational characteristics of an aircraft type from its ICAO designator, such as B738 or A320, or by searching manufacturer and model. Each type comes with wingspan, length, tail height, maximum takeoff and landing weight, approach speed and category, airplane design group, ICAO wake turbulence category and FAA weight class, with metric conversions. Paid plans add airport planning geometry, RECAT wake categories and US registration and traffic counts.

[![pub package](https://img.shields.io/pub/v/apiverve_aircrafttypes.svg)](https://pub.dev/packages/apiverve_aircrafttypes)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Aircraft Types API](https://apiverve.com/marketplace/aircrafttypes?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_aircrafttypes: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_aircrafttypes/apiverve_aircrafttypes.dart';

void main() async {
  final client = AircrafttypesClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'icao': 'B738',
      'manufacturer': 'Airbus',
      'model': '737',
      'engineType': 'jet',
      'wakeCategory': 'heavy',
      'engines': 2,
      'limit': 10
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 1,
    "returned": 1,
    "types": [
      {
        "icaoCode": "B738",
        "faaDesignator": "B738",
        "manufacturer": "BOEING",
        "model": "Boeing 737-800",
        "variant": "Boeing B737-800",
        "aircraftClass": "Fixed-wing",
        "engineType": "Jet",
        "engineCount": 2,
        "wingspanFt": 117.4,
        "wingspanWithoutWingletsFt": 112.6,
        "hasWinglets": true,
        "lengthFt": 129.5,
        "tailHeightFt": 41.4,
        "maxTakeoffWeightLb": 174200,
        "maxLandingWeightLb": 146275,
        "approachSpeedKnots": 144,
        "approachSpeedRangeKnots": {
          "min": 140,
          "max": 144
        },
        "approachCategory": "D",
        "designGroup": "III",
        "icaoWakeCategory": "Medium",
        "faaWeightClass": "Large",
        "metric": {
          "wingspanM": 35.78,
          "lengthM": 39.47,
          "tailHeightM": 12.62,
          "maxTakeoffWeightKg": 79016,
          "maxLandingWeightKg": 66349
        },
        "airport": {
          "taxiwayDesignGroup": "3",
          "wheelbaseFt": 51.2,
          "cockpitToMainGearFt": 56.4,
          "mainGearWidthFt": 23,
          "mainGearConfig": "D",
          "parkingAreaFt2": 16487,
          "parkingAreaM2": 1532,
          "rotorDiameterFt": null
        },
        "wake": {
          "consolidatedCategory": "F",
          "recat15Category": "D",
          "recat2CategoryA": "D",
          "recat2CategoryB": "C",
          "sameRunwaySeparation": "III",
          "lahsoGroup": "8"
        },
        "usage": {
          "usRegistered": true,
          "usRegistrations": 971,
          "annualFlightPlanOperations": 2484764,
          "operationsYear": 2024
        },
        "remarks": "Depending on flaps configuration and MALW, AAC could be C. AAC validated by Flight Standardization Board (FSB) report.",
        "lastUpdated": null
      }
    ]
  }
}
```

## API Reference

- **API Home:** [Aircraft Types API](https://apiverve.com/marketplace/aircrafttypes?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/aircrafttypes](https://docs.apiverve.com/ref/aircrafttypes?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
