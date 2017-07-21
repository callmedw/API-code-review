
  A RANDOM endpoint that randomly returns a park/business/animal.

  At least one of the objectives from Monday's Further Exploration lesson (such as versioning, token authentication, or serialization).

  Thorough exception handling.

  Complete testing with request specs.

  A README that thoroughly documents all endpoints, including parameters that can be passed in.


creature
  name
  age
  gender
  coloring
  kind

comments
  author
  comment
  creature_id

API Endpoints
creature_comments GET    /creatures/:creature_id/comments
                  POST   /creatures/:creature_id/comments
 creature_comment GET    /creatures/:creature_id/comments/:id
                  PATCH  /creatures/:creature_id/comments/:id
                  PUT    /creatures/:creature_id/comments/:id
                  DELETE /creatures/:creature_id/comments/:id
        creatures GET    /creatures
                  POST   /creatures
         creature GET    /creatures/:id
                  PATCH  /creatures/:id
                  PUT    /creatures/:id
                  DELETE /creatures/:id
