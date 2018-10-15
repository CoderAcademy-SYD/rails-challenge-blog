## Description of Challenge

Here is an application with existing `User`, `Post` and `Comment` models. The next step needed is to implement an index action for posts so that posts can be rendered appropriately into the `posts/index.html.erb` view. This view requires comments to be implemented as well, so comments have been partially implemented. The steps to accomplish this challenge are as follows:

### 1) Implement Associations for Comments

Some of the associations necessary for these objects to interact with each other are already made. However, the associations for comments need to be created (all necessary foreign keys already exist).

### 2) Implement Route for PostsController's Index Action

Implement a route in `routes.rb` in order to make a request to `/posts` route to `posts#index` appropriately.

### 3) Implement Index Action for PostsController

This action will need to support the handling of a `query` param, which is a string that can be provided in order to filter posts by title, where the title matches the query string.

Additionally, we want to be able to profile a sort params to order the posts by. Initially, we only need to support the handling of 'oldest' as the sort param, which should order posts by oldest first.

Because we want to provide the names of commentors on the post from the index template, we want to eager load comments as well to avoid N + 1 queries when rendering the view.
