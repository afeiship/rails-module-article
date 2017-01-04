#rails-module-article
Rails module for article.


## initial:
```bash
cd ~/github/rails-module-article
rails new .
# modify Gemfile source to `source "https://ruby.taobao.org"`:
bundle install
```


## database exist:
```bash
rake db:drop
rails db:migrate RAILS_ENV=development
```



## routes:
```bash
$ bin/rake routes
      Prefix Verb   URI Pattern                  Controller#Action
    articles GET    /articles(.:format)          articles#index
             POST   /articles(.:format)          articles#create
 new_article GET    /articles/new(.:format)      articles#new
edit_article GET    /articles/:id/edit(.:format) articles#edit
     article GET    /articles/:id(.:format)      articles#show
             PATCH  /articles/:id(.:format)      articles#update
             PUT    /articles/:id(.:format)      articles#update
             DELETE /articles/:id(.:format)      articles#destroy
        root GET    /                            welcome#index
```