const NaturalLanguageUnderstandingV1 = require('ibm-watson/natural-language-understanding/v1.js');

var mysql = require('mysql');

var data = undefined

var connection = mysql.createConnection({
  host: 'us-cdbr-iron-east-02.cleardb.net',
  database: 'heroku_24e8568d1818909',
  user: 'bef9e37248cd32',
  password: 'd2c0d068',
  // database: 'navya'
});

connection.connect();

connection.query('SELECT nikhil FROM navya ORDER BY ID DESC LIMIT 1', function (error, results, fields) {
  if (error) {
    throw error;
  }
  data = results[0].nikhil
  console.log(data)
  //console.log('The solution is: ', results[0].solution);
  const naturalLanguageUnderstanding = new NaturalLanguageUnderstandingV1({
    version: '2019-07-12',
    iam_apikey: 'QqHyj7M2s5MuLZ8ruzdDV5lDEx6Tf9JGoja2O0R7UMmh',
    url: 'https://gateway-lon.watsonplatform.net/natural-language-understanding/api'
  });
  console.log(data)
  const analyzeParams = {
    'text': data,
    'features': {
      'keywords': {
        'limit': 3
      }
    }
  };
  
  var keyword = []
  
  function callpy(description) {
    console.log('hello')
    var spawn = require('child_process').spawn;
    var process = spawn('python', ['./test.py', description])
    process.stdout.on('data', function (data) {
      console.log(data.toString());
    })
  }
  
  console.log(data)
  naturalLanguageUnderstanding.analyze(analyzeParams)
    .then(analysisResults => {
      console.log(JSON.stringify(analysisResults, null, 2));
      var disp = JSON.stringify(analysisResults, null, 2)
      var obj = JSON.parse(disp)
      keyword = obj.keywords
      console.log(keyword)
      for (i = 0; i < keyword.length; i++) {
        var hash = keyword[i].text
        data = data + ' #' + hash
        console.log("/// "+ data )
  
      }
      data=data+" For more details download the crowdnidhi app and search through description to start funding!"
      callpy(data)
  
    })
    .catch(err => {
      console.log('error:', err);
    });
  
});

// connection.end();

