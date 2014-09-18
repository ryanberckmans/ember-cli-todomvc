`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map -> 
    this.resource 'todos', { path: '/' }, ->
      this.route('active')
      this.route('completed')
    
`export default Router`
