Email.Collections.TrashEmails = Backbone.Collection.extend({
  model: Email.Models.ElectronicMail,
  url: 'api/trash_emails',
  comparator: function(email){
    return -email.get('id');
  },
  getOrFetch: function(id){
    var email = this.get(id);
    if(email){
      email.fetch();
    }else{
      email = new Email.Models.ElectronicMail({id: id});
      this.add(email);
      var that = this;
      email.fetch({
        errors: function(){
          that.remove(email);
        }
      });
    }
    return email;
  },
  parse: function(response){
    this.page = response.page;
    this.total_pages = response.total_pages

    return response.models;
  }
})
