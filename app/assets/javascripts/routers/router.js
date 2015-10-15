Email.Routers.Router = Backbone.Router.extend({
  initialize: function(options){
    this.$rootEl = options.$rootEl;
    this.$subroot = options.$subroot;
  },
  routes:{
    '': 'index',
    'emails/new': 'new',
    'emails/:id': 'show',
    'emails/:id/edit':'edit',
    'sent_emails': 'sentIndex',
    'draft_emails': 'draftIndex',
    'important_emails': 'importantIndex',
    'starred_emails': 'starredIndex',
    'all_emails': 'allIndex',
    'spam_emails': 'spamIndex',
    'trash_emails': 'trashIndex',
    'searches':'searchIndex'
  },

  index: function(){
    this.collection = new Email.Collections.ElectronicMails();
    // this.collection.fetch();

    var view = new Email.Views.EmailsIndex({collection: this.collection, edit: false, delete: false});

    this._swapView(view);
  },

  new: function(){
    this.collection = new Email.Collections.ElectronicMails();
    var newEmail = new Email.Models.ElectronicMail();
    var view = new Email.Views.EmailForm({model: newEmail, collection: this.collection });

    this._swapView(view);
  },

  show: function(id){
    this.collection = new Email.Collections.ElectronicMails();
    var showEmail = this.collection.getOrFetch(id);
    var view = new Email.Views.EmailShow({model: showEmail});

    this._swapView(view);

  },
  edit: function(id){
    debugger
    this.collection = new Email.Collections.ElectronicMails();
    var email = this.collection.getOrFetch(id);
    var view = new Email.Views.EmailForm({model: email, collection: this.collection });

    this._swapView(view);
  },

  sentIndex: function(){
    this.collection = new Email.Collections.SentEmails();
    var view = new Email.Views.EmailsIndex({collection: this.collection, edit: false, delete: false});

    this._swapView(view);
  },

  draftIndex: function(){
    this.collection = new Email.Collections.DraftEmails();
    var view = new Email.Views.EmailsIndex({collection: this.collection, edit: true, delete: false});

    this._swapView(view);
  },
  importantIndex: function(){
    this.collection = new Email.Collections.ImportantEmails();
    var view = new Email.Views.EmailsIndex({collection: this.collection, edit: false, delete: false});

    this._swapView(view);
  },
  starredIndex: function(){
    this.collection = new Email.Collections.StarredEmails();
    var view = new Email.Views.EmailsIndex({collection: this.collection, edit: false, delete: false});

    this._swapView(view);
  },
  allIndex: function(){
    this.collection = new Email.Collections.AllEmails();
    var view = new Email.Views.EmailsIndex({collection: this.collection, edit: false, delete: false});

    this._swapView(view);
  },
  spamIndex: function(){
    this.collection = new Email.Collections.SpamEmails();
    var view = new Email.Views.EmailsIndex({collection: this.collection, edit: false, delete: false});

    this._swapView(view);
  },
  trashIndex: function(){
    this.collection = new Email.Collections.TrashEmails();
    var view = new Email.Views.EmailsIndex({collection: this.collection, edit: false, delete: true});

    this._swapView(view);
  },
  searchIndex: function(){
    this.collection = new Email.Collections.SearchResults();
    var view = new Email.Views.EmailsIndex({collection: this.collection, edit: false, delete: false});
    this._swapView(view);
  },
  _swapView: function(view){
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$subroot.html(view.$el);
    view.render();
  }
})
