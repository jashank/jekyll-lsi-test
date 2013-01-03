jekyll-lsi-test
===============

This is a test repository for testing Jekyll's LSI system.

Using the included corpus text generator (I wrote it myself, so it's
probably rubbish), I generated 964 posts (it should have been 1000) to
benchmark the latent semantic indexing (LSI) function in Jekyll
against. 

## Benchmarks

Without `faster_lsi`:

    > time ruby -I../mojombo-jekyll/lib ../mojombo-jekyll/bin/jekyll
    /Users/jashank/.rvm/gems/ruby-1.9.3-p327-falcon/gems/blankslate-3.1.2/lib/blankslate.rb:51: warning: undefining `object_id' may cause serious problems
    Configuration from /Users/jashank/inara/jekyll-lsi-test-slow/_config.yml
    Building site: /Users/jashank/inara/jekyll-lsi-test-slow -> /Users/jashank/inara/jekyll-lsi-test-slow/_site
    Running the classifier... this could take a while.
    ....................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................
    Successfully generated site: /Users/jashank/inara/jekyll-lsi-test-slow -> /Users/jashank/inara/jekyll-lsi-test-slow/_site
    ruby -I../mojombo-jekyll/lib ../mojombo-jekyll/bin/jekyll  63143.76s user 124.26s system 99% cpu 17:34:55.04 total

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

Difference?

    > diff -ru jekyll-lsi-test-slow/_site jekyll-lsi-test/_site ; echo $? 
    0
