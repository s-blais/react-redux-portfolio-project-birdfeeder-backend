# README

This is the backend for my React/Redux project to fulfill requirements for my Flatiron School Full-Stack Software Engineering Program. The frontend repo is [here](https://github.com/s-blais/react-redux-portfolio-project-birdfeeder-frontend).

This small app was inspired by my friends' fascination with the birdfeeder in their yard. This app functions as a bird-sighting journal, tracking which birds are seen visiting the birdfeeder, by date.

Developed on Ruby 2.6.1 and Rails 6.0.3.5, with PostgreSQL 12 database; frontend React 17.0.1 and Redux 4.0.5

The backend schema consists of a *Bird* model, a *Day* model, and a join model of those two, *Sighting* (since multiple birds can be sighted on a day, and a bird can be sighted on multiple days, a reciprocal has-many-through relationship is indicated). 

In the frontend, the Birds Library displays all the bird species that have been seen at the birdfeeder. Birds can be added to the library as needed. Days are recorded with a date and all birds that were seen on that date.

To prevent the API unnecessarily transmitting redundant data, and bloating the Redux state, I modified the Day model's JSON serializer to represent each Day's bird relationships with a simple array of Bird ids (rather than including *all* the data about each bird sighted on each day). All data about each bird is already in Redux state, and can be accessed via the id. This also makes the Day JSON output a **lot** easier to read!

Credit to Audubon.org for having such an excellent bird information resource, and David Sibley's beautiful illustrations.

As with other projects, for the sake of project MVP, I utilized [water.css](https://watercss.kognise.dev/) for quick, clean, frill-free styling, and added some style declarations as my own as needed.

Oh yes, I can think of a hundred ways to enhance and embellish and extend this app beyond the requirements for the project – I can't guarantee that this repository won't quietly evolve as my urges to tinker get the best of me!

Cringeworthy walkthrough video available [here](https://youtu.be/2O_LzC-Nugk)

Some screenshots:

![React-Redux Project screenshot](http://s-blais.com/assets/RR-project-home-v1.png)


![React-Redux Project screenshot](http://s-blais.com/assets/RR-project-birds-library-v2.png)


![React-Redux Project screenshot](http://s-blais.com/assets/RR-project-bird-new-form-v1.png)


![React-Redux Project screenshot](http://s-blais.com/assets/RR-project-day-sightings-v2.png)


![React-Redux Project screenshot](http://s-blais.com/assets/RR-project-day-new-form-v1.png)
