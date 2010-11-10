var Commit = function(attributes) {
  this.id = attributes.id;
  this.accepted = localStorage['commit.' + this.id + '.accepted'] == 'true';
  this.subject = attributes.message.split('\n')[0].substr(0, 50)
};
