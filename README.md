
  At least one of the objectives from Monday's Further Exploration lesson (such as versioning, token authentication, or serialization).

  Thorough exception handling.

  Complete testing with request specs.


API Endpoints
search by kind Localhost:3000/creatures/search?kind=conspirators
random creature Localhost:3000/creatures/random
most comments Localhost:3000/creatures/most_comments


                   root GET    /                                             
most_comments_creatures GET    /creatures/most_comments          
       search_creatures GET    /creatures/search                  
       random_creatures GET    /creatures/random                    
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
