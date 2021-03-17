# README

This is the backend for my React/Redux project to fulfill requirements for my Flatiron Full-Stack Software Engineering Program. The frontend is [here](https://github.com/s-blais/react-redux-portfolio-project-birdfeeder-frontend).

This small app was inspired by my friends' fascination with the birdfeeder in their yard. This app functions as a bird-sighting journal, tracking which birds are seen visiting the birdfeeder, by date.

Developed on Ruby 2.6.1 and Rails 6.0.3.5, with PostgreSQL 12 database; frontend React 17.0.1 and Redux 4.0.5

The backend schema consists of a Bird model, a Day model, and a join model of those two, Sighting (since multiple birds can be sighted on a day, and a bird can be sighted on multiple days, a reciprocal has-many-through relationship is indicated). 

To prevent the API unnecessarily transmitting redundant data, and bloating the Redux state, I modified the Day model's JSON serializer to represent each Day's bird relationships with a simple array of Bird ids. All data about each bird is already in Redux state, and can be accessed via the id. This also makes the Day JSON a **lot** easier to read!

Credit to Audubon.org for having such an excellent bird information resource, and David Sibley's beautiful illustrations.

As with other projects, for the sake of project MVP, I utilized [water.css](https://watercss.kognise.dev/) for quick, clean, frill-free styling.

![React-Redux Project screenshot](http://s-blais.com/assets/RR-project-birds-library-v1.png)

![React-Redux Project screenshot](http://s-blais.com/assets/RR-project-sightings-v1.png)