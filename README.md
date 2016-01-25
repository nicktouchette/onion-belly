# OnionBelly
A rails based app for food aggregation.

[Live Link](https://gentle-springs-72342.herokuapp.com)<br/>
[Trello Board](https://trello.com/b/S038PWJD/onion-belly)

![Erd Diagram](http://i.imgur.com/07WZwWx.png)
## Description
Uses a has-many through relationship to serve data from a postgresql database to a front-end user.  Also includes an ingredient search using an autocomplete library for javascript, that pulls a remote table to the client and uses the table to autocomplete.

## Technologies
- Ruby on rails
- Devise
- typeahead.js
- postgresql
- AJAX

## How to install
Clone the repository
<pre>
`git clone`

</pre>
Install all gem dependency packages, create and populate database, start server.
<pre><code>
bundle install
rake db:create
rake db:seed
rails s
</code></pre>

Connect to localhost:3000
