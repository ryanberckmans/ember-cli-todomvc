`import Ember from 'ember'`
`import config from './config/environment'`
`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`

Ember.MODEL_FACTORY_INJECTIONS = true

App = Ember.Application.extend
  modulePrefix: 'todos'
  Resolver: Resolver

loadInitializers App, 'todos'

`export default App`
