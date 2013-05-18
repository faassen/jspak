# jspak

A sample project where we hook up Bower to RequireJS and Bower to
Buster.JS, using Grunt.

For more about the background, see this blog post:

http://blog.startifact.com/posts/overwhelmed-by-javascript-dependencies.html

## On your machine

You need to have nodejs, npm, bower, grunt, buster and PhantomJS
installed.

Installation:

    $ npm install

Install client-side dependencies:

    $ bower install

Run the tests with buster (and PhantomJS):

    $ grunt test

## Using a Vagrant virtual machine

Install VirtualBox, Vagrant, and https://github.com/saltstack/salty-vagrant

    $ vagrant up

Once it finishes installing everything:

    $ vagrant ssh
    $ cd /vagrant
    $ grunt test

## Okay, now what?

If you haven't used Buster.js before here is how you can run the tests:

1. Make sure that `grunt test` is running
2. Open http://localhost:1111 to run the tests.
3. Click "Capture browser" and leave this running
4. Open another vagrant shell with `vagrant ssh`
5. `cd /vagrant` and `buster test`

You'll see something like:

    Chrome 26.0.1410.65, Mac OS X 10.8.3: .                                                                                
    1 test case, 1 test, 1 assertion, 0 failures, 0 errors, 0 timeouts
    Finished in 0.011s
