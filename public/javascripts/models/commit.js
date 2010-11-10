var Commit = function(attributes) {
  this.id = attributes.id;
  this.accepted = this.attr('accepted') == 'true';
  this.message = attributes.message;
};

Commit.prototype = {

  accept: function() {
    this.attr('accepted', true);
  },

  subject: function() {
    return this.message.split('\n')[0].substr(0, 50);
  },

  attr: function(key, value) {
    var key = ['commit', this.id, key].join('.');

    if (value) {
      localStorage[key] = value;
    }

    return localStorage[key];
  }

};
