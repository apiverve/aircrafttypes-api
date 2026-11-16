# Aircraft Types API

Aircraft Types returns the physical and operational characteristics of an aircraft type from its ICAO designator, such as B738 or A320, or by searching manufacturer and model. Each type comes with wingspan, length, tail height, maximum takeoff and landing weight, approach speed and category, airplane design group, ICAO wake turbulence category and FAA weight class, with metric conversions. Paid plans add airport planning geometry, RECAT wake categories and US registration and traffic counts.

[![npm version](https://img.shields.io/npm/v/@apiverve/aircrafttypes.svg)](https://www.npmjs.com/package/@apiverve/aircrafttypes)

This is a JavaScript wrapper for the [Aircraft Types API](https://apiverve.com/marketplace/aircrafttypes?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/aircrafttypes
```

Using yarn:
```shell
yarn add @apiverve/aircrafttypes
```

---

## Configuration

Before using the Aircraft Types API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Aircraft Types API documentation is found here: [https://docs.apiverve.com/ref/aircrafttypes](https://docs.apiverve.com/ref/aircrafttypes?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const aircrafttypesAPI = require('@apiverve/aircrafttypes');
const api = new aircrafttypesAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  icao: "B738",
  manufacturer: "Airbus",
  model: "737",
  engineType: "jet",
  wakeCategory: "heavy",
  engines: 2,
  limit: 10
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  icao: "B738",
  manufacturer: "Airbus",
  model: "737",
  engineType: "jet",
  wakeCategory: "heavy",
  engines: 2,
  limit: 10
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  icao: "B738",
  manufacturer: "Airbus",
  model: "737",
  engineType: "jet",
  wakeCategory: "heavy",
  engines: 2,
  limit: 10
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
