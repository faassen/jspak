define(['jquery'], function($) {
    var core = {};
    core.foo = function() {
        return $.type("Foo!");
    };
    return core;
});
