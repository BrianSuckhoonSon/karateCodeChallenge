@ignore
Feature: GET weather data by latitude and longitude

  Scenario:
    Given url baseUrl + '/current'
    And params { key: '#(apiKey)', lat: '#(latitude)', lon: '#(longitude)' }
    When method GET
    Then status 200
    * print 'City name: ', response.data[0].city_name
    * print 'Temperature:', response.data[0].temp