`import Ember from 'ember'`

controller = Ember.ObjectController.extend  
  actions:
    editTodo: -> this.set 'isEditing', true

    acceptChanges: ->
      this.set 'isEditing', false
      if Ember.isEmpty this.get 'model.title'
        this.send 'removeTodo'
      else
        this.get('model').save      

    removeTodo: ->
      todo = this.get 'model'
      todo.deleteRecord()
      todo.save()

  isEditing: false
    
  isCompleted: ((key,value) ->
    model = this.get 'model'
    
    if value == undefined
      # property being used as a getter
      return model.get 'isCompleted'
    else
      # property being used as a setter
      model.set 'isCompleted', value
      model.save()
      return value
  ).property 'model.isCompleted'

`export default controller`
