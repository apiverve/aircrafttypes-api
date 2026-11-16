/**
 * Aircraft Types API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the Aircraft Types API.
 * API Documentation: https://docs.apiverve.com/ref/aircrafttypes
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/aircrafttypes';

/**
 * Make a GET request to the Aircraft Types API
 */
async function callAircraftTypesAPI() {
  try {
    // Query parameters
    const params &#x3D; new URLSearchParams({
            icao: &#x27;B738&#x27;,
            manufacturer: &#x27;Airbus&#x27;,
            model: &#x27;737&#x27;,
            engineType: &#x27;jet&#x27;,
            wakeCategory: &#x27;heavy&#x27;,
            engines: 2,
            limit: 10
        });

    const response = await fetch(`${API_URL}?${params}`, {
      method: 'GET',
      headers: {
        'x-api-key': API_KEY
      }
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callAircraftTypesAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
