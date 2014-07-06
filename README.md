
# TodoMVC + ember-cli

This project implements Ember's [http://emberjs.com/guides/getting-started/](Getting Started) guide with [http://iamstef.net/ember-cli/](ember-cli).

## Stuff that helped

* step-by-step http://www.blakeerickson.com/posts/2014/06/17/ember_cli_todomvc_tutorial
* complete repo https://github.com/javierjulio/ember-cli-todomvc

## Using browser local storage, DS.LSAdapter, ember-localstorage-adapter

1. ember-cli doesn't ship with local storage adapter (as of version 0.0.39)
2. [http://stackoverflow.com/questions/24327090/how-to-import-module-ember-localstorage-adapter-with-ember-cli](add ember-localstorage-adapter to your project), ie DS.LSAdapter
3. restart `ember server` or it won't pick up the new dependency in Brocfile.js
