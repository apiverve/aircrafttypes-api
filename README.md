# [Aircraft Types API](https://apiverve.com/marketplace/aircrafttypes?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Aircraft Types returns the physical and operational characteristics of an aircraft type from its ICAO designator, such as B738 or A320, or by searching manufacturer and model. Each type comes with wingspan, length, tail height, maximum takeoff and landing weight, approach speed and category, airplane design group, ICAO wake turbulence category and FAA weight class, with metric conversions. Paid plans add airport planning geometry, RECAT wake categories and US registration and traffic counts.

The Aircraft Types API provides a simple, reliable way to integrate aircraft types functionality into your applications. Built for developers who need production-ready aircraft types capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/aircrafttypes?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/aircrafttypes?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/aircrafttypes)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.AircraftTypes)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-aircrafttypes/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_aircrafttypes)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/aircrafttypes)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_aircrafttypes)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callAircraftTypesAPI() {
    try {
        const params = new URLSearchParams({
            icao: 'B738',
            manufacturer: 'Airbus',
            model: '737',
            engineType: 'jet',
            wakeCategory: 'heavy',
            engines: 2,
            limit: 10
        });

        const response = await fetch(`https://api.apiverve.com/v1/aircrafttypes?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callAircraftTypesAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/aircrafttypes?icao=B738&manufacturer=Airbus&model=737&engineType=jet&wakeCategory=heavy&engines=2&limit=10" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/aircrafttypes
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/aircrafttypes) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.AircraftTypes
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.AircraftTypes) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-aircrafttypes
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-aircrafttypes/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_aircrafttypes
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_aircrafttypes) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/aircrafttypes
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/aircrafttypes) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_aircrafttypes
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_aircrafttypes) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:aircrafttypes-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/aircrafttypes-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Aircraft Types API](https://apiverve.com/marketplace/aircrafttypes?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/aircrafttypes](https://docs.apiverve.com/ref/aircrafttypes)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Aircraft Types API is commonly used for:

- **Web Applications** - Add aircraft types features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with aircraft types capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Aircraft Types API:

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

---

## Support & Community

- 🏠 **API Home**: [Aircraft Types API](https://apiverve.com/marketplace/aircrafttypes?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
