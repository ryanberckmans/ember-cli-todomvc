import Ember from 'ember';

export default Ember.ObjectController.extend({
  // This code is never executed.
  // Tutorial calls for adding {{#each itemController="todo"}} to tobos.hbs, which should invoke this controller for the nested {{input}} helper.
  // When I set itemController="todo", it breaks.
  // UPDATE: mystery solved. Previously had Ember.Controller.extend, needed Ember.ObjectController.extend.

  actions: {
    editTodo: function() {
      this.set('isEditing', true);
    },

    acceptChanges: function() {
      this.set('isEditing', false);

      if (Ember.isEmpty(this.get('model.title'))) {
        this.send('removeTodo');
      } else {
        this.get('model').save();
      }
    },

    removeTodo: function () {
      var todo = this.get('model');
      todo.deleteRecord();
      todo.save();
    }
  },

  isEditing: false,
  
  // The app works correctly when i removed isCompleted computed property. Perhaps because isCompleted is a primitive type, it works out of box.
  isCompleted: function(key, value){
    var model = this.get('model');

    if (value === undefined) {
      // property being used as a getter
      return model.get('isCompleted');
    } else {
      // property being used as a setter
      model.set('isCompleted', value);
      model.save();
      return value;
    }
  }.property('model.isCompleted')
});
