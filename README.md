== SQL Injection Examples

First, make sure to `bundle exec rake db:setup && bundle exec rake db:migrate &&bundle exec rake db:seed`. You'll find a little sqlite database in the _db_ directory.

Now, go ahead and pull up a console (`bundle exec rails c`). In that console, you can try out

```ruby
require "sql_injection_examples.rb"
include SqlInjectionExamples
SqlInjectionExamples.where_all # this will pull up all of the students (oh no!)
SqlInjectionExamples.all_jev # this will rename all of the students (oh no!)
```

To verify changes, you can use `sqlite3 db/development.sqlite3` and run

```SQL
select * from students;
```
