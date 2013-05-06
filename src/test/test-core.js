define(['core'], function(core) {
    buster.testCase("A test case", {
        "core foo": function() {
            assert.equals(core.foo(), 'string');
        }
    });
});
