// Karma configuration
// Generated on Sat Jul 13 2013 23:02:44 GMT-0400 (EDT)


// base path, that will be used to resolve files and exclude
basePath = '';


// list of files / patterns to load in the browser
files = [
  JASMINE,
  JASMINE_ADAPTER,
  'src/js/vendor.js',
  'vendor/jasmine-jquery/jasmine-jquery.js',
  'vendor/angular-mocks/angular-mocks.js',
  'vendor/sinon/lib/sinon.js',
  'vendor/sinon/lib/sinon/spy.js',
  'vendor/sinon/lib/sinon/util/fake_server.js',
  'vendor/sinon/lib/sinon/util/fake_xml_http_request.js',
  'vendor/jasmine-sinon/lib/jasmine-sinon.js',
  { pattern: 'src/**/*.html', watched: true, included: false, served: true },
  'src/**/*.coffee',
  'test/**/*.coffee'
];

preprocessors = {
  '**/*.coffee': 'coffee'
};


// list of files to exclude
exclude = [
  
];


// test results reporter to use
// possible values: 'dots', 'progress', 'junit'
reporters = ['progress'];


// web server port
port = 9876;


// cli runner port
runnerPort = 9100;


// enable / disable colors in the output (reporters and logs)
colors = true;


// level of logging
// possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
logLevel = LOG_INFO;


// enable / disable watching file and executing tests whenever any file changes
autoWatch = false;


// Start these browsers, currently available:
// - Chrome
// - ChromeCanary
// - Firefox
// - Opera
// - Safari (only Mac)
// - PhantomJS
// - IE (only Windows)
browsers = ['Chrome'];


// If browser does not capture in given timeout [ms], kill it
captureTimeout = 60000;


// Continuous Integration mode
// if true, it capture browsers, run tests and exit
singleRun = false;
