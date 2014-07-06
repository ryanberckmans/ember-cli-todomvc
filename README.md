
## TodoMVC + ember-cli

This project implements Ember's [Getting Started](http://emberjs.com/guides/getting-started/) guide with [ember-cli](http://iamstef.net/ember-cli/).

### Stuff that helped

* [step-by-step todomvc + ember-cli](http://www.blakeerickson.com/posts/2014/06/17/ember_cli_todomvc_tutorial)
* [full code todomvc+ember-cli](https://github.com/javierjulio/ember-cli-todomvc), different author, not as helpful as step-by-step

### Browser local storage, DS.LSAdapter, ember-localstorage-adapter

1. ember-cli doesn't ship with local storage adapter (as of version 0.0.39)
2. [add ember-localstorage-adapter to your project](http://stackoverflow.com/questions/24327090/how-to-import-module-ember-localstorage-adapter-with-ember-cli), ie DS.LSAdapter
3. restart `ember server` or it won't pick up the new dependency in Brocfile.js
