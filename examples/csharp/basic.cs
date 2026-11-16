/*
 * Aircraft Types API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the Aircraft Types API.
 * API Documentation: https://docs.apiverve.com/ref/aircrafttypes
 */

using System;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using System.Linq;

namespace APIVerve.Examples
{
    class AircraftTypesExample
    {
        private static readonly string API_KEY = Environment.GetEnvironmentVariable("APIVERVE_API_KEY") ?? "YOUR_API_KEY_HERE";
        private static readonly string API_URL = "https://api.apiverve.com/v1/aircrafttypes";

        /// <summary>
        /// Make a GET request to the Aircraft Types API
        /// </summary>
        static async Task<JsonDocument> CallAircraftTypesAPI()
        {
            try
            {
                using var client = new HttpClient();
                client.DefaultRequestHeaders.Add("x-api-key", API_KEY);

                // Query parameters
                var queryParams &#x3D; new Dictionary&lt;string, string&gt; { [&quot;icao&quot;] &#x3D; &quot;B738&quot;, [&quot;manufacturer&quot;] &#x3D; &quot;Airbus&quot;, [&quot;model&quot;] &#x3D; &quot;737&quot;, [&quot;engineType&quot;] &#x3D; &quot;jet&quot;, [&quot;wakeCategory&quot;] &#x3D; &quot;heavy&quot;, [&quot;engines&quot;] &#x3D; 2, [&quot;limit&quot;] &#x3D; 10 };

                var queryString = string.Join("&",
                    queryParams.Select(kvp => $"{kvp.Key}={Uri.EscapeDataString(kvp.Value)}"));
                var url = $"{API_URL}?{queryString}";

                var response = await client.GetAsync(url);

                // Check if response is successful
                response.EnsureSuccessStatusCode();

                var responseBody = await response.Content.ReadAsStringAsync();
                var data = JsonDocument.Parse(responseBody);

                // Check API response status
                if (data.RootElement.GetProperty("status").GetString() == "ok")
                {
                    Console.WriteLine("✓ Success!");
                    Console.WriteLine("Response data: " + data.RootElement.GetProperty("data"));
                    return data;
                }
                else
                {
                    var error = data.RootElement.TryGetProperty("error", out var errorProp)
                        ? errorProp.GetString()
                        : "Unknown error";
                    Console.WriteLine($"✗ API Error: {error}");
                    return null;
                }
            }
            catch (HttpRequestException e)
            {
                Console.WriteLine($"✗ Request failed: {e.Message}");
                return null;
            }
        }

        static async Task Main(string[] args)
        {
            Console.WriteLine("📤 Calling Aircraft Types API...\n");

            var result = await CallAircraftTypesAPI();

            if (result != null)
            {
                Console.WriteLine("\n📊 Final Result:");
                Console.WriteLine(result.RootElement.GetProperty("data"));
            }
            else
            {
                Console.WriteLine("\n✗ API call failed");
            }
        }
    }
}
