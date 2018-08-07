# Cohire frontend challenge

## Intro

I have used a Rails (5.2) app for this challenge so to launch the app you need to run:

```
rails db:create
```

then


```
rails s
```

and go to:

```
http://localhost:3000/
```

And for the API to work you will need to add a `.env` file to the root directory and add your key like this:

```
themoviedb_api="7f*****************bb"

```

The logic for the search is in the `controllers/pages_controller.rb`

The HTML is in the `views/pages/home.html.erb`

And the CSS is in the `stylesheets/pages/home.scss`

## Personal notes

I would have implemented components in the css but unfortunately I didnt have the time to. Please let me know if you would still like me to do this.
