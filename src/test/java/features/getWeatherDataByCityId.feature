@ignore
Feature: GET weather data by the given city id

  Scenario:
    Given url baseUrl + '/current'
    And params { key: '#(apiKey)', city_id: '#(cityId)' }
    When method GET
    Then status 200
    * print 'City name: ', response.data[0].city_name
    * print 'Temperature:', response.data[0].temp