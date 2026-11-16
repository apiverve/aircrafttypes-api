Aircraft Types API
============

Aircraft Types returns the physical and operational characteristics of an aircraft type from its ICAO designator, such as B738 or A320, or by searching manufacturer and model. Each type comes with wingspan, length, tail height, maximum takeoff and landing weight, approach speed and category, airplane design group, ICAO wake turbulence category and FAA weight class, with metric conversions. Paid plans add airport planning geometry, RECAT wake categories and US registration and traffic counts.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-aircrafttypes.svg)](https://pypi.org/project/apiverve-aircrafttypes/)

This is a Python wrapper for the [Aircraft Types API](https://apiverve.com/marketplace/aircrafttypes?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-aircrafttypes
```

Using `pip3`:

```bash
pip3 install apiverve-aircrafttypes
```

---

## Configuration

Before using the Aircraft Types API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_aircrafttypes.apiClient import AircrafttypesAPIClient

# Initialize the client with your APIVerve API key
api = AircrafttypesAPIClient("[YOUR_API_KEY]")

query = {
    "icao": "B738",
    "manufacturer": "Airbus",
    "model": "737",
    "engineType": "jet",
    "wakeCategory": "heavy",
    "engines": 2,
    "limit": 10
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Aircraft Types API documentation is found here: [https://docs.apiverve.com/ref/aircrafttypes](https://docs.apiverve.com/ref/aircrafttypes?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_aircrafttypes.apiClient import AircrafttypesAPIClient

# Initialize the client with your APIVerve API key
api = AircrafttypesAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "icao": "B738",
    "manufacturer": "Airbus",
    "model": "737",
    "engineType": "jet",
    "wakeCategory": "heavy",
    "engines": 2,
    "limit": 10
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `AircrafttypesAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_aircrafttypes.apiClient import AircrafttypesAPIClient, AircrafttypesAPIClientError

api = AircrafttypesAPIClient("[YOUR_API_KEY]")

query = {
    "icao": "B738",
    "manufacturer": "Airbus",
    "model": "737",
    "engineType": "jet",
    "wakeCategory": "heavy",
    "engines": 2,
    "limit": 10
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except AircrafttypesAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_aircrafttypes.apiClient import AircrafttypesAPIClient, AircrafttypesAPIClientError

api = AircrafttypesAPIClient("[YOUR_API_KEY]")

query = {
    "icao": "B738",
    "manufacturer": "Airbus",
    "model": "737",
    "engineType": "jet",
    "wakeCategory": "heavy",
    "engines": 2,
    "limit": 10
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except AircrafttypesAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_aircrafttypes.apiClient import AircrafttypesAPIClient, AircrafttypesAPIClientError

query = {
    "icao": "B738",
    "manufacturer": "Airbus",
    "model": "737",
    "engineType": "jet",
    "wakeCategory": "heavy",
    "engines": 2,
    "limit": 10
}

# Using context manager ensures proper cleanup
with AircrafttypesAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except AircrafttypesAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_aircrafttypes.apiClient import AircrafttypesAPIClient

# Enable debug mode
api = AircrafttypesAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "icao": "B738",
    "manufacturer": "Airbus",
    "model": "737",
    "engineType": "jet",
    "wakeCategory": "heavy",
    "engines": 2,
    "limit": 10
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_aircrafttypes.apiClient import AircrafttypesAPIClient

api = AircrafttypesAPIClient("[YOUR_API_KEY]")

query = {
    "icao": "B738",
    "manufacturer": "Airbus",
    "model": "737",
    "engineType": "jet",
    "wakeCategory": "heavy",
    "engines": 2,
    "limit": 10
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
