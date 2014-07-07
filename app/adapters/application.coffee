`import DS from 'ember-data'`

# Uncomment next line to enable fixtures
# adapter = DS.FixtureAdapter.extend()

# Uncomment next lines to enable localstorage
adapter = DS.LSAdapter.extend
  namespace: 'todos-emberjs'

`export default adapter`
