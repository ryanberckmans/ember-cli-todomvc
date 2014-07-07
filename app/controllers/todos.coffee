`import Ember from 'ember'`

controller = Ember.ArrayController.extend
  actions:
    createTodo: ->
      # Get the todo title set by the "New Todo" text field
      title = this.get 'newTitle'
      return if !title.trim()

      # Create the new Todo Model
      todo = this.store.createRecord 'todo', {title: title, isCompleted: false}

      # Clear the "New Todo" text field
      this.set 'newTitle', ''

      # Save the new model
      todo.save()

    clearCompleted: ->
      completed = this.filterBy 'isCompleted', true
      completed.invoke 'deleteRecord'
      completed.invoke 'save'

  remaining: (-> 
    return this.filterBy('isCompleted', false).get 'length'
  ).property '@each.isCompleted'

  inflection: (->
    remaining = this.get 'remaining'
    return if remaining == 1 then 'todo' else 'todos'
  ).property 'remaining'

  hasCompleted: (->
    return this.get('completed') > 0
  ).property 'completed'

  completed: (->
    return this.filterBy('isCompleted', true).get 'length'
  ).property '@each.isCompleted'

  allAreDone: ((key,value)->
    #  If no value argument is passed, this property is being used to populate the current value of the checkbox. 
    #  If a value is passed, it indicates the checkbox was used by a user and we should set the isCompleted property of each todo to this new value.
    if value == undefined
      return !!this.get('length') && this.everyProperty 'isCompleted', true
    else
      this.setEach 'isCompleted', value
      this.invoke 'save'
      return value;
  ).property '@each.isCompleted'

`export default controller`
