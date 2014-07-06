import Ember from 'ember';

// This file is routes/todos/index.js, by naming convention compiled to (or corresponding to) TodosIndexRoute.
// by the same naming convention, modelFor('todos') means "get the model for the TodosRoute",
// ie, modelFor('todos') -> TodosRoute.model() -> route/todos.js.model()
// ie "TodosIndexRoute uses the same model as TodosRoute"

export default Ember.Route.extend({
  model: function() {
    return this.modelFor('todos');
  }
});
