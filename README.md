**MsFixMeApp** is a basic Rails 3 app that we'd like you to make some changes to.

The application 'approximates' an eCommerce site. It shows categories and products on the 'front end' and allows
the site owner to update the descriptions etc in the 'back end'

You can't add anything to your basket / cart - there isn't an order or basket model. Basically all that you can do at the
moment is browse around the site.

We just want you to add something (or fix something) to the application and show us what you did and then explain why / how.

Requirements
===
- Ruby 1.9.3
- Gems are listed in the Gemfile

Getting the application running
===

Create a database called 'ms.fix.me.app_development'

Then either create a user with write permission to the above database called:

msdev
password

Or, update the database.yml with user credentials that can connect

CD to your local copy

```bash
bundle install
bundle exec rake db:setup
rails s
```

Go to localhost:3000 and you should then see the public web site / front end
Go to localhost:3000/administration for the administration console

Things To Do
===

Once you've made the requested changes, just push them back to your Git Hub branch so that we can have a look
and we'll chat about them when we meet with you. What we're after is seeing if you can look at an app, figure out how it works and
then make some changes to it. As long as your change adds (or fixes) something and you can justify and discuss what you did,
then that will be great. No need to go overboard :)

Here are the initial tasks that we'd like you to do:
- Editing a product, variant or category in the administration doesn't work, why? Can you fix it? (There is more than one bug) DONE
- Change the category administration forms so they use simple_form DONE
- Add a way to create a new product
- Add a way to add a product to a category - AJAX would be nice, but not necessary

Once these are done, then feel free to pick from the list below or come up with your own:

- Add the price for each variant on the public product page - DONE
- Add a price range for all variants for each product in the 'product_tile' (ignore currency symbols)

- http://localhost:3000/administration/products shows a list of all the'published' products, add a way of showing a list of products
with other published statuses (draft, submitted, archived, deleted)
- Add a way that we can 'bulk archive' selected products on this page: http://localhost:3000/administration/products
- Add a way of inserting a chunk of text on the home page that an administrator can edit
- Add a way of creating a free text page, eg a contact us page that can be edited in administration
- Add a way of uploading an image to a product or category
- Are there any performance issues that need to be addressed, especially if the site had 10,000's of products - how can this be resolved?
- Make the administration pages look better
- Add a login page for administration pages
- Show which categories a product belongs to (think about published statuses)
- Show which products belong to a category (think about published statuses)
- Add a way to create a new variant for a product
- Add a way to edit a variant on a product page
- Change to use Zurb foundation for the layout / responsive template
- Find a way to fix these broken links, ie don't show an error page: http://localhost:3000/categories/asdf or http://localhost:3000/products/asdf or http://localhost:3000/asdf
- Add a robots.txt (bonus if you can add the ability to exclude certain products from being crawled)
