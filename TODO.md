Planning a Wine Review App

GET /register - should present a sign up form - users have an email

# potential for omniauth

POST /users - creater the user in database - validation

GET /login - present a login form

POST /login - create their sessin and redirect

        1. tell them who they are logged in as
        2. build a logout
        3. create a protected page

    GET /wines/new
        - show a form to rate/review a wine
        - enter the review text
        - rate system (10/10 grapes)
        - upload photo

    POST /wines
        - take the wine review/rating data and save it to the DB

    GET /wines
        - show a list of all wines and rating
        # be able to sort by avg rating

    GET /wines/:id
        - show details of a wine review


        ## wines
       * name, year, grape_variety, country_of_origin, img

    -- Notes --

            Wine Database
        - wine name
        - year
        - grape variety (red, white, sparkling)
        - country of origin
        - # of reviews given to specific bottle by customers
        - avg price per bottle
        - rating score

    Possibly scrape Vivino for data?

     Users are able to upload a photo of their wine bottle label.

    * scope method: filter wines by grape variety and country of origin
    *
