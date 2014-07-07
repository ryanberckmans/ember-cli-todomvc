`import Ember from 'ember'`

Router = Ember.Router.extend
  location: TodosENV.locationType

Router.map -> 
    this.resource 'todos', { path: '/' }, ->
      this.route('active')
      this.route('completed')
    
`export default Router`
