# SQE Code Challenge with Karate

## Pre-requisite:
 - Create an account (https://www.weatherbit.io/account/create)
 - Grab the API KEY
 - Create and paste it into the file (```src > test > java > vault.txt```)

## Commands:
### Execute all tests:
```mvn test "-Dkarate.options=--tags @codeChallenge"```

### Execute test by tags:
```
mvn test "-Dkarate.options=--tags @AC1
mvn test "-Dkarate.options=--tags @AC2
mvn test "-Dkarate.options=--tags @AC3
mvn test "-Dkarate.options=--tags @AC4
```