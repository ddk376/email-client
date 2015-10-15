Email.Collections.SearchResults = Backbone.Collection.extend({
  model: Email.Models.ElectronicMail,
  url: 'api/search',
  comparator: function(email){
    return -email.get('id');
  },
  parse: function(response){
    this.page = response.page;
    this.total_pages = response.total_pages

    return response.models;
  }
})
