
## TodoMVC + ember-cli

This project implements Ember's [Getting Started](http://emberjs.com/guides/getting-started/) guide with [ember-cli](http://iamstef.net/ember-cli/).


### Quick Start

0. install [ember-cli](http://iamstef.net/ember-cli/)
1. `git clone git@github.com:ryanberckmans/ember-cli-todomvc.git`
2. `cd ember-cli-todomvc && npm install && bower install`
3. edit `config/environment.coffee` line 14, and set `firebase_instance` to your Firebase instance. Alternatively:
4. Alternative. To use browser localstorage instead of Firebase, edit `app/adapters/application.coffee`, uncomment the localstorage adapter (lines 7 and 8) and comment the firebase adapter (lines 11 and 12)
5. `ember serve`
6. navigate to http://localhost:4200

### Stuff that helped

* [step-by-step todomvc + ember-cli](http://www.blakeerickson.com/posts/2014/06/17/ember_cli_todomvc_tutorial)
* [full code todomvc+ember-cli](https://github.com/javierjulio/ember-cli-todomvc), different author, not as helpful as step-by-step

### Browser local storage, DS.LSAdapter, ember-localstorage-adapter

1. ember-cli doesn't ship with local storage adapter (as of version 0.0.39)
2. [add ember-localstorage-adapter to your project](http://stackoverflow.com/questions/24327090/how-to-import-module-ember-localstorage-adapter-with-ember-cli), ie DS.LSAdapter
3. restart `ember server` or it won't pick up the new dependency in Brocfile.js

### CoffeeScript 

Added coffeescript (which doesn't ship with ember-cli) and converted most app/*.js files to .coffee.

1. `npm install --save-dev broccoli-coffee`
2. convert .js file to .coffee
3. in a .coffee file, wrap ES6 module notation in backticks. Example from ember-cli webpage:

```coffee
# app/models/post.coffee
`import User from 'appkit/models/user'`

Post = Em.Object.extend
  init: (userId) ->
    @set 'user', User.findById(userId)
 
`export default Post`
```
