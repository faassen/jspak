var config = module.exports;

var collect = require('grunt-collection-helper');

config["core"] = {
    autoRun: false,
    rootPath: ".",
    environment: "browser",
    libs: [
        'components/requirejs/require.js',
        'rjs.js'
    ],
    sources: [
        "components/jquery/*.js",
        "src/**/*.js"
    ],
    tests: [
        "test/test-core.js"
    ],
    extensions: [require('buster-amd')]
};
