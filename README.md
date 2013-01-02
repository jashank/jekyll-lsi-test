jekyll-lsi-test
===============

This is a test repository for testing Jekyll's LSI system.

## Benchmarks

With `faster_lsi`:

    > time ruby -I../mojombo-jekyll/lib ../mojombo-jekyll/bin/jekyll 
    /Users/jashank/.rvm/gems/ruby-1.9.3-p327-falcon/gems/blankslate-3.1.2/lib/blankslate.rb:51: warning: undefining `object_id' may cause serious problems
    Configuration from /Users/jashank/inara/jekyll-lsi-test/_config.yml
    Building site: /Users/jashank/inara/jekyll-lsi-test -> /Users/jashank/inara/jekyll-lsi-test/_site
    Starting the classifier...
      Populating LSI... ....................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................
      Rebuilding LSI index... 
    Successfully generated site: /Users/jashank/inara/jekyll-lsi-test -> /Users/jashank/inara/jekyll-lsi-test/_site
    ruby -I../mojombo-jekyll/lib ../mojombo-jekyll/bin/jekyll  259.29s user 6.77s system 99% cpu 4:26.14 total
