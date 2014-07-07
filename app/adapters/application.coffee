`import DS from 'ember-data'`

# Uncomment next line to enable fixtures
# adapter = DS.FixtureAdapter.extend()

# Uncomment next lines to enable localstorage
#adapter = DS.LSAdapter.extend
#  namespace: 'todos-emberjs'

# Uncomment next lines to enable Firebase
adapter = DS.FirebaseAdapter.extend
  firebase: new window.Firebase 'https://' + window.TodosENV.APP.firebase_instance + '.firebaseio.com'

`export default adapter`
