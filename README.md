# README

This API is made for those that want an answer to where they should eat - it can either return a list of 10 restaurants to choose from or it can return just one if you don't want to decide. 


### Ruby version
 * ruby >= 2.5

### Dependencies
  * rails >= 5.2
  * postgres

### Configuration
 * Local Development requires a `ENV['YELP_API_KEY']`
   * This key is provided by Yelp

### Database creation & migration
  * `bundle exec rake db:create && bundle exec rake db:migrate`

### How to run the test suite
  * Prepare your test database: `bundle exec rake db:test:prepare`
  * Then run: `bundle exec rspec`


### Live on Heroku:
  * https://tell-me-where-to-eat.herokuapp.com/api/v1/where_to_eat/just_tell_me
  
### End Points

**Optional Parameters used by either endpoint**:
  - `location`: (String)
    - 'City, State' -OR- 'Zipcode'
  - `term`: (String)
     - Describe what you're looking for - could be:
       - Meal types: 'breakfast', 'lunch', 'dinner'
       - Specific 'food': 'burrito', 'sushi',
       - Types of cuisines: 'asian', 'mediterranean'
  - `open_now`: (Boolean)
     - Defaulted to false
  - `radius`: (Integer)
     - Miles as a string i.e. '5'
     - Max of 24-ish miles (according to the Yelp API); Note: if it maxes out what it can find in the given location it will move onto adjacent zipcodes/areas, so this is Yelp's best guess.
  - `price`: (String)
      - One or multiple can be passed in, comma delimited. 'cheap_eats, moderate_spender'
      - Valid Price-points:
        - 'cheap_eats'
        - 'moderate_spender'
        - 'treat_yoself'
        - 'whole_paycheck'
  - `sort_by`: (String)
      - 'rating' High to Low
      - 'review_count' Most to Least
      - 'price' Low to High
  - `filter_by`: (String)
      - Only supports filtering by rating at this time:
      - How ratings will be filtered (1 low and 5 high):
        - 'high_rating' will filter out all results that are less than a 4
        - 'medium_rating' will filter out all results that are less than a 3
        - 'low_rating' will filter out all results that are greater than a 3
    
#### Options Endpoint:

  Returns json with up to 10 different restaurants based on the criteria passed in through the params.

* **URL**

  `/api/v1/where_to_eat/options`

* **Method:**

  `GET`
  
*  **URL Params**

   **Defaults:**
 
   - None are _required_, but defaults are as follows:
     - `location=(String)` defaults to `'Denver, CO'`
     - `term=(String)` defaults to `'restaurants'`
     - `price=(String)` defaults to `'cheap_eats, moderate_spender, treat_yoself, whole_paycheck'`
     - `open_now=(String)` defaults to `false`

* **Success Response:**

  * **Code:** 200 OK
  *  **Content:** 
    ```
          [
               {
                   "id": "svJWwW0ilssyqk_UML0mUg",
                   "alias": "work-and-class-denver",
                   "name": "Work & Class",
                   "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/wknJ1nD0jTQssiXfW-tjFQ/o.jpg",
                   "is_closed": false,
                   "url": "https://www.yelp.com/biz/work-and-class-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
                   "review_count": 1232,
                   "categories": [
                       { "alias": "newamerican", "title": "American (New)"}
                   ],
                   "rating": 4.5,
                   "coordinates": {
                       "latitude": 39.75761,
                       "longitude": -104.98604
                   },
                   "transactions": [],
                   "price": "$$",
                   "location": {
                       "address1": "2500 Larimer St",
                       "address2": "Ste 101",
                       "address3": "",
                       "city": "Denver",
                       "zip_code": "80205",
                       "country": "US",
                       "state": "CO",
                       "display_address": [
                           "2500 Larimer St",
                           "Ste 101",
                           "Denver, CO 80205"
                       ]
                   },
                   "phone": "+13032920700",
                   "display_phone": "(303) 292-0700",
                   "distance": 2810.0960698608437
               },
               ...
           ]
    ```
 
* **Error Response:**

  * **Code:** 422 Unprocessable Entity
  * **Content:** 
    ```
        { 
            "error"=>"CustomException::Apis::UnableToGetResults", 
            "external_api"=>{ "status_code"=>400, "status_reason"=>"Bad Request", "information"=>"Info" }
        }
    ```

* **Sample Call:**

  ```
    api/v1/where_to_eat/options?price=cheap_eats&open_now=true&term=breakfast&location=80211&radius=5
  ```

#### Just Tell Me Endpoint:

  Returns json with only 1 restaurant based on the criteria passed in through the params.

* **URL**

  `/api/v1/where_to_eat/just_tell_me`

* **Method:**

  `GET`
  
*  **URL Params**

   **Defaults:**
 
   - None are _required_, but defaults are as follows:
     - `location=(String)` defaults to `'Denver, CO'`
     - `term=(String)` defaults to `'restaurants'`
     - `price=(String)` defaults to `'cheap_eats, moderate_spender, treat_yoself, whole_paycheck'`
     - `open_now=(String)` defaults to `false`

* **Success Response:**

  * **Code:** 200 OK
  *  **Content:** 
    ```
    {
      "id": "MdxdhC2EjpDDSbfMb04qGQ",
      "alias": "hotbox-roasters-denver-2",
      "name": "Hotbox Roasters",
      "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/b-uDJPcsv7K5BQU9qhGHJg/o.jpg",
      "is_closed": false,
      "url": "https://www.yelp.com/biz/hotbox-roasters-denver-2?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
      "review_count": 53,
      "categories": [
        {"alias": "coffeeroasteries", "title": "Coffee Roasteries"},
      "rating": 4.0,
      "coordinates": {
        "latitude": 39.7666626,
        "longitude": -104.9748422
      },
      "transactions": [
        "delivery",
        "pickup"
      ],
      "price": "$",
      "location": {
        "address1": "3450 Larimer St",
        "address2": "",
        "address3": "",
        "city": "Denver",
        "zip_code": "80205",
        "country": "US",
        "state": "CO",
        "display_address": [
          "3450 Larimer St",
          "Denver, CO 80205"
        ]
      },
      "phone": "+17205354477",
      "display_phone": "(720) 535-4477",
      "distance": 3484.6571974429226
    }
    ```
 
* **Error Response:**

  * **Code:** 422 Unprocessable Entity
  * **Content:** 
    ```
        { 
            "error"=>"CustomException::Apis::UnableToGetResults", 
            "external_api"=>{ "status_code"=>400, "status_reason"=>"Bad Request", "information"=>"Info" }
        }
    ```
* **Sample Call:**

  ```
    /api/v1/where_to_eat/just_tell_me?price=cheap_eats&open_now=true&term=breakfast&location=80211&radius=5
  ```


