Open Comments
==============

This extension adds comment and message functionality to [Open][1]. It allows administrators and customers to communicate about order processing and fulfillment if needed.

Open Comments also supports optional comment Types which can be defined per commentable object (i.e. Order, Shipment, etc) via the admin Configuration tab.

This is based on a fork / rename of jderrett/spree-order-comments, and subsequently spree/spree-comments. We added sending message functionality and order comments for checkout to allow end user addressing concerns.

Notes:

* Comments are create-only. You cannot edit or remove them from the Admin UI.

Installation
------------

Add the following to your Gemfile (or check Versionfile for Spree versions requirements):

    gem 'open_comments', github: '99cm/open_comments', branch: 'master'

Run:

```shell
bundle install
bundle exec rails g open_comments:install
```

Run the migrations if you did not during the installation generator:

    bundle exec rake db:migrate

Start your server: 

    rails s

---

Copyright (c) 2019 [Leo Wang][3] and other [contributors][2]. released under the [New BSD License][3]

[1]: https://github.com/99cm/open
[2]: https://github.com/99cm/open_comments/graphs/contributors
[3]: https://github.com/99cm/open_comments/blob/master/LICENSE.md