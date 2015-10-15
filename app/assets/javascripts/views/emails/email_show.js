Email.Views.EmailShow = Backbone.View.extend({
  template: JST['emails/show'],
  initialize: function(){
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function(){
    var content = this.template({email: this.model});
    this.$el.html(content);

    return this;
  }

})
