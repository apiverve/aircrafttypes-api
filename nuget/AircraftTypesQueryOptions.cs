using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.AircraftTypes
{
    /// <summary>
    /// Query options for the Aircraft Types API
    /// </summary>
    public class AircraftTypesQueryOptions
    {
        /// <summary>
        /// ICAO aircraft type designator, for example B738, A20N or C172. When given, the other search parameters are ignored
        /// </summary>
        [JsonProperty("icao")]
        public string Icao { get; set; }

        /// <summary>
        /// Manufacturer name or part of it, for example Boeing, Airbus or Cessna
        /// </summary>
        [JsonProperty("manufacturer")]
        public string Manufacturer { get; set; }

        /// <summary>
        /// Model name or part of it, for example 737, A320 or Citation
        /// </summary>
        [JsonProperty("model")]
        public string Model { get; set; }

        /// <summary>
        /// Only types with this engine class
        /// </summary>
        [JsonProperty("engineType")]
        public string EngineType { get; set; }

        /// <summary>
        /// Only types in this ICAO wake turbulence category
        /// </summary>
        [JsonProperty("wakeCategory")]
        public string WakeCategory { get; set; }

        /// <summary>
        /// Only types with this number of engines
        /// </summary>
        [JsonProperty("engines")]
        public int? Engines { get; set; }

        /// <summary>
        /// Maximum number of types to return, 1-50
        /// </summary>
        [JsonProperty("limit")]
        public int? Limit { get; set; }
    }
}
