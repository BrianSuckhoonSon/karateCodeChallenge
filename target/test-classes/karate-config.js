function fn() {
  var env = karate.env || 'test';
  var config = {
    env: env.toLowerCase(),
    baseUrl: 'https://api.weatherbit.io/v2.0',
    apiKey: read('classpath:vault.txt')
  };
  karate.configure('logPrettyRequest', true);
  karate.configure('logPrettyResponse', true);
  return config;
}