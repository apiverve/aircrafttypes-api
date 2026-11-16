# Aircraft Types API - Ruby Gem

Aircraft Types returns the physical and operational characteristics of an aircraft type from its ICAO designator, such as B738 or A320, or by searching manufacturer and model. Each type comes with wingspan, length, tail height, maximum takeoff and landing weight, approach speed and category, airplane design group, ICAO wake turbulence category and FAA weight class, with metric conversions. Paid plans add airport planning geometry, RECAT wake categories and US registration and traffic counts.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_aircrafttypes'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_aircrafttypes
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_aircrafttypes'

# Initialize the client
client = APIVerve::Aircrafttypes::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  icao: "B738",
  manufacturer: "Airbus",
  model: "737",
  engineType: "jet",
  wakeCategory: "heavy",
  engines: 2,
  limit: 10
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ icao: "B738", manufacturer: "Airbus", model: "737", engineType: "jet", wakeCategory: "heavy", engines: 2, limit: 10 })
  puts response["data"]
rescue APIVerve::Aircrafttypes::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Aircrafttypes::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Aircrafttypes::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/aircrafttypes?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/aircrafttypes?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/aircrafttypes?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
