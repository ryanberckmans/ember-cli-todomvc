import Ember from 'ember';

var Router = Ember.Router.extend({
  location: TodosENV.locationType
});

Router.map(function() {
  // this.resource('todo', { path: '/' });
});

export default Router;
