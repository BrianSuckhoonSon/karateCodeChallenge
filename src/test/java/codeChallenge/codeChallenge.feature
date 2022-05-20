@codeChallenge
Feature: Code challenge

  Background:
    * def getWeatherDataByCityId = read('classpath:features/getWeatherDataByCityId.feature')
    * def getWeatherDataByLatAndLon = read('classpath:features/getWeatherDataByLatAndLon.feature')
    * def getWeatherDataByCityAndCountry = read('classpath:features/getWeatherDataByCityAndCountry.feature')
    * def helper = Java.type('Helper')

  @AC1
  Scenario: AC1: As a frequent flyer, I want to get current weather data for the given city ID
    * table data
      | cityId  |
      | 4487042 |
      | 4494942 |
    * def result = call getWeatherDataByCityId data

  @AC2
  Scenario: AC2: As a frequent flyer, I want to get current weather data for the city at given Latitude/Longitude
    * table data
      | latitude   | longitude  |
      | -33.865143 | 151.209900 |
      | 35.7721    | -78.63861  |
    * def result = call getWeatherDataByLatAndLon data

  @AC3
  Scenario: AC3: As a frequent flyer, I want to find the temperature of capital cities in Australia
    * table data
      | city        | country |
      | 'Sydney'    | 'AU'    |
      | 'Canberra'  | 'AU'    |
      | 'Melbourne' | 'AU'    |
      | 'Brisbane'  | 'AU'    |
      | 'Darwin'    | 'AU'    |
      | 'Hobart'    | 'AU'    |
      | 'Perth'     | 'AU'    |
    * def result = call getWeatherDataByCityAndCountry data
    * print helper.getWarmestCity(result)

  @AC4
  Scenario: AC4: As a frequent flyer, I want to find the current coldest US state using metadata file
    * def data = read('classpath:testData/usStates.csv')
    * def result = call getWeatherDataByCityAndCountry data
    * print helper.getColdestCity(result)