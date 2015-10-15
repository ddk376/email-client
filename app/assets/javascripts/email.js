window.Email = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    this.router = new Email.Routers.Router({$rootEl: $('.window'), $subroot: $('section.main')});
    Backbone.history.start();
  }
};

$(document).ready(function(){
  Email.initialize();
});
