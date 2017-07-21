or GET (all and by id), POST, PUT and DELETE.
  A RANDOM endpoint that randomly returns a park/business/animal.
  A second custom endpoint that accepts parameters (example: a SEARCH route that allows users to search by specific park names).
  Model scopes should be used to process parameters from API calls.
  At least one of the objectives from Monday's Further Exploration lesson (such as versioning, token authentication, or serialization).
  Thorough exception handling.
  Complete testing with request specs.
  Randomized data with Faker or your own custom seed code.
  A README that thoroughly documents all endpoints, including parameters that can be passed in.


creature
  name
  age
  gender
  colorings
  kind

comments
  author
  comment
  creature_id



creatures   GET     /creatures
            POST    /creatures
creature    GET     /creatures/:id
            PATCH   /creatures/:id
            PUT     /creatures/:id
            DELETE  /creatures/:id
comments    GET     /comments
            POST    /comments
comment     GET     /comments/:id
            PATCH   /comments/:id
            PUT     /comments/:id
            DELETE  /comments/:id
