import DS from 'ember-data';

// Uncomment next line to enable fixtures
//export default DS.FixtureAdapter.extend();

// Uncomment next lines to enable localstorage
export default DS.LSAdapter.extend({
  namespace: 'todos-emberjs'
});
