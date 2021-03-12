# README

This is the backend for my React/Redux project to fulfill requirements for my Flatiron Full-Stack Software Engineering Program. The frontend is [here](https://github.com/s-blais/react-redux-portfolio-project-birdfeeder-frontend).

This small app was inspired by my friends' fascination with the birdfeeder in their yard. This app functions as a bird-sighting journal, tracking which birds are seen visiting the birdfeeder, by date.

Developed on Ruby 2.6.1 and Rails 6.0.3.5, with PostgreSQL 12 database; frontend React 17.0.1 and Redux 4.0.5

The backend schema consists of a Bird model, a Day model, and a join model of those two, Sighting (since multiple birds can be sighted on a day, and a bird can be sighted on multiple days, a reciprocal has-many-through relationship is indicated). 

To prevent the API unnecessarily transmitting redundant data, and bloating the Redux state, I modified the Day model's JSON serializer to represent a each Day's bird relationships with a simple array of Bird ids. All data about each bird is already in Redux state, and can be accessed via the id. This also makes the Day JSON a **lot** easier to read!

------------ old stuff below

I implemented a full CRUD on the main model, Donation. I did not want to create a separate form for :update, so I figured out how to repurpose the :create form to refill the form fields from the existing JS objects and utilize a hidden form field (id), the truthiness of which determines whether a :create fetch() or an :update fetch() will be called when submitted. When the form is in :update mode, the submit button flips from "Save Donation" to "Update Donation" for visual confirmation of what you're doing.

For the sake of project MVP, I utilized [water.css](https://watercss.kognise.dev/) and added a few rules of my own for some animations and further styling.

The page relies on the html `details` element, in the effort to keep things tidy and simple (sorry, IE folks). The lack of animation on the opening and closing is a little jarring, but for the sake of simplicity this time around, it's fine (yes I know there are ways to do this without jQuery, but that's for another time)

I could tinker, extend, and enhance this application endlessly, but that effort is best saved for the version I will create for my client. On to React!

![React-Redux Project screenshot](http://s-blais.com/assets/JS-project-screenshot.png)