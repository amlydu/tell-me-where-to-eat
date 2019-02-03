module YelpStubs
  def self.request_error
    {
        "error": {
            "code": "VALIDATION_ERROR",
            "description": "'price' is not one of ['best_match', 'rating', 'review_count', 'distance']",
            "field": "sort_by",
            "instance": "price"
        }
    }

  end

  # Args
  #   stub_type (Symbol)
  #     :request_with_defaults
  #     :request_open_now_for_breakfast_in_specific_zipcode
  #     :request_cheap_eats
  #     :request_cheap_eats_in_radius_within_zipcode
  def self.payload(stub_type)
    {
        "businesses" => send(stub_type)
    }
  end

  def self.request_with_defaults
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
                {
                    "alias": "newamerican",
                    "title": "American (New)"
                },
                {
                    "alias": "latin",
                    "title": "Latin American"
                },
                {
                    "alias": "cocktailbars",
                    "title": "Cocktail Bars"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.75761,
                "longitude": -104.98604
            },
            "transactions": [

            ],
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
        {
            "id": "gagUrh3806qc5hZ14F0Odw",
            "alias": "denver-biscuit-co-denver-17",
            "name": "Denver Biscuit Co.",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/oyGNMkjRI4RAir2PEJDC1g/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/denver-biscuit-co-denver-17?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 2908,
            "categories": [
                {
                    "alias": "sandwiches",
                    "title": "Sandwiches"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.740384,
                "longitude": -104.949098
            },
            "transactions": [
                "pickup"
            ],
            "price": "$$",
            "location": {
                "address1": "3237 E Colfax Ave",
                "address2": "",
                "address3": "Atomic Cowboy",
                "city": "Denver",
                "zip_code": "80206",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "3237 E Colfax Ave",
                    "Atomic Cowboy",
                    "Denver, CO 80206"
                ]
            },
            "phone": "+13033777900",
            "display_phone": "(303) 377-7900",
            "distance": 1887.2489668123706
        },
        {
            "id": "LX8nS1dlW7MEZDDEmVcyGw",
            "alias": "root-down-denver",
            "name": "Root Down",
            "image_url": "https://s3-media3.fl.yelpcdn.com/bphoto/21eJsFMltbsHGicq5__7LQ/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/root-down-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 3044,
            "categories": [
                {
                    "alias": "newamerican",
                    "title": "American (New)"
                },
                {
                    "alias": "vegan",
                    "title": "Vegan"
                },
                {
                    "alias": "vegetarian",
                    "title": "Vegetarian"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.76306,
                "longitude": -105.0056
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "1600 W 33rd Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80211",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1600 W 33rd Ave",
                    "Denver, CO 80211"
                ]
            },
            "phone": "+13039934200",
            "display_phone": "(303) 993-4200",
            "distance": 4299.025222992226
        },
        {
            "id": "guaRJIAwPzbHZ09G3hX31g",
            "alias": "acorn-denver-denver",
            "name": "Acorn - Denver",
            "image_url": "https://s3-media4.fl.yelpcdn.com/bphoto/8CilLqqMUWeyIhmtubzcew/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/acorn-denver-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 960,
            "categories": [
                {
                    "alias": "newamerican",
                    "title": "American (New)"
                },
                {
                    "alias": "venues",
                    "title": "Venues & Event Spaces"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.768648,
                "longitude": -104.979813
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "3350 Brighton Blvd",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80216",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "3350 Brighton Blvd",
                    "Denver, CO 80216"
                ]
            },
            "phone": "+17205423721",
            "display_phone": "(720) 542-3721",
            "distance": 3772.918139213039
        },
        {
            "id": "BtrGu-vCh-KliNJ2OfbDoA",
            "alias": "sassafras-american-eatery-capitol-hill-denver",
            "name": "Sassafras American Eatery, Capitol Hill",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/6ZELZgBs11K5t_Jih8qL0w/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/sassafras-american-eatery-capitol-hill-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 779,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.739815,
                "longitude": -104.982681
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "320 East Colfax Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80203",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "320 East Colfax Ave",
                    "Denver, CO 80203"
                ]
            },
            "phone": "+13038316233",
            "display_phone": "(303) 831-6233",
            "distance": 1177.585087393935
        },
        {
            "id": "QZAZrHljjy8qh1QXacT0tg",
            "alias": "olive-and-finch-denver",
            "name": "Olive & Finch",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/GAy0z44inPMd7FwRIo811Q/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/olive-and-finch-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 669,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "sandwiches",
                    "title": "Sandwiches"
                }
            ],
            "rating": 4.0,
            "coordinates": {
                "latitude": 39.74293,
                "longitude": -104.96882
            },
            "transactions": [
                "pickup",
                "delivery"
            ],
            "price": "$$",
            "location": {
                "address1": "1552 E 17th Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80218",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1552 E 17th Ave",
                    "Denver, CO 80218"
                ]
            },
            "phone": "+13038328663",
            "display_phone": "(303) 832-8663",
            "distance": 841.1162725336286
        },
        {
            "id": "Kjmtip2htzyZNjXbegxfYg",
            "alias": "chop-shop-casual-urban-eatery-colfax-denver-7",
            "name": "Chop Shop Casual Urban Eatery Colfax",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/-zhsCPiPRGBmeu1JkiRvNA/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/chop-shop-casual-urban-eatery-colfax-denver-7?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 942,
            "categories": [
                {
                    "alias": "newamerican",
                    "title": "American (New)"
                },
                {
                    "alias": "burgers",
                    "title": "Burgers"
                },
                {
                    "alias": "salad",
                    "title": "Salad"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.73987,
                "longitude": -104.92935
            },
            "transactions": [
                "pickup",
                "delivery"
            ],
            "price": "$$",
            "location": {
                "address1": "4990 E Colfax Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80220",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "4990 E Colfax Ave",
                    "Denver, CO 80220"
                ]
            },
            "phone": "+17205507665",
            "display_phone": "(720) 550-7665",
            "distance": 3528.450616806395
        },
        {
            "id": "ErdOOovTcfW8sOjtKKSHmw",
            "alias": "the-butcher-block-cafe-denver",
            "name": "The Butcher Block Cafe",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/lUTcDBlVHtR-jCXrQo0iPA/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/the-butcher-block-cafe-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 296,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "diners",
                    "title": "Diners"
                },
                {
                    "alias": "tradamerican",
                    "title": "American (Traditional)"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.77247,
                "longitude": -104.9745499
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "1701 38th St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80216",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1701 38th St",
                    "Denver, CO 80216"
                ]
            },
            "phone": "+13032952915",
            "display_phone": "(303) 295-2915",
            "distance": 4132.309412522196
        },
        {
            "id": "OGwS_BIkHSWdcvQRdW_kfA",
            "alias": "four-friends-kitchen-denver",
            "name": "Four Friends Kitchen",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/IRt6dQ9JX3besGl_DEP6gw/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/four-friends-kitchen-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 788,
            "categories": [
                {
                    "alias": "southern",
                    "title": "Southern"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                }
            ],
            "rating": 4.0,
            "coordinates": {
                "latitude": 39.757276,
                "longitude": -104.900743
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "2893 Roslyn St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80238",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2893 Roslyn St",
                    "Denver, CO 80238"
                ]
            },
            "phone": "+13033888299",
            "display_phone": "(303) 388-8299",
            "distance": 6415.544154227129
        },
        {
            "id": "SjcaXyflSrK0PlcgFqgcnw",
            "alias": "meadowlark-kitchen-denver",
            "name": "Meadowlark Kitchen",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/jBwwwimxrQlTw9pxzACWWg/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/meadowlark-kitchen-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 330,
            "categories": [
                {
                    "alias": "newamerican",
                    "title": "American (New)"
                },
                {
                    "alias": "desserts",
                    "title": "Desserts"
                },
                {
                    "alias": "cocktailbars",
                    "title": "Cocktail Bars"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.7598533630371,
                "longitude": -104.984191894531
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "2705 Larimer St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80205",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2705 Larimer St",
                    "Denver, CO 80205"
                ]
            },
            "phone": "+13039531815",
            "display_phone": "(303) 953-1815",
            "distance": 2956.3833842926088
        }
    ]
  end

  # { location: 80211, open_now: true, descriptor: 'breakfast' }
  def self.request_open_now_for_breakfast_in_specific_zipcode
    [
        {
            "id": "rGBB9pvKmVWKOOjdd39GLg",
            "alias": "sassafras-american-eatery-denver-3",
            "name": "Sassafras American Eatery",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/4MvnUahXk8YbLA8bV4CVbA/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/sassafras-american-eatery-denver-3?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 903,
            "categories": [
                {
                    "alias": "southern",
                    "title": "Southern"
                },
                {
                    "alias": "cajun",
                    "title": "Cajun/Creole"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.755054,
                "longitude": -105.020156
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "2637 W 26th Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80211",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2637 W 26th Ave",
                    "Denver, CO 80211"
                ]
            },
            "phone": "+13034330080",
            "display_phone": "(303) 433-0080",
            "distance": 971.4860527390088
        },
        {
            "id": "j5-Ox741AvKMH0jlEUyNhw",
            "alias": "bacon-social-house-denver",
            "name": "Bacon Social House",
            "image_url": "https://s3-media4.fl.yelpcdn.com/bphoto/RyYYlUFLEkpDLTNfsHGUsw/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/bacon-social-house-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 703,
            "categories": [
                {
                    "alias": "newamerican",
                    "title": "American (New)"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "bars",
                    "title": "Bars"
                }
            ],
            "rating": 4.0,
            "coordinates": {
                "latitude": 39.7762542,
                "longitude": -105.0168637
            },
            "transactions": [
                "pickup",
                "delivery"
            ],
            "price": "$$",
            "location": {
                "address1": "2434 W 44th Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80211",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2434 W 44th Ave",
                    "Denver, CO 80211"
                ]
            },
            "phone": "+17205507065",
            "display_phone": "(720) 550-7065",
            "distance": 1404.2143554406189
        },
        {
            "id": "N_tX1pJz92Ls-4sMQvMLpA",
            "alias": "postino-lohi-denver-7",
            "name": "Postino LoHi",
            "image_url": "https://s3-media4.fl.yelpcdn.com/bphoto/fJ4PfnrBf9ylz43XB9Chrw/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/postino-lohi-denver-7?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 457,
            "categories": [
                {
                    "alias": "italian",
                    "title": "Italian"
                },
                {
                    "alias": "wine_bars",
                    "title": "Wine Bars"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.76151,
                "longitude": -105.01045
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "2715 17th St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80211",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2715 17th St",
                    "Denver, CO 80211"
                ]
            },
            "phone": "+13034336363",
            "display_phone": "(303) 433-6363",
            "distance": 709.3813540723838
        },
        {
            "id": "ZDD3sfQRbVFTb6-h7BsCeg",
            "alias": "syrup-downtown-denver",
            "name": "Syrup Downtown",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/4EFvVIRnEGQGMa-zW6d5YA/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/syrup-downtown-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 1115,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "tradamerican",
                    "title": "American (Traditional)"
                },
                {
                    "alias": "salad",
                    "title": "Salad"
                }
            ],
            "rating": 4.0,
            "coordinates": {
                "latitude": 39.7489837090198,
                "longitude": -104.991904357147
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "999 18th St",
                "address2": "Ste 105",
                "address3": "",
                "city": "Denver",
                "zip_code": "80202",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "999 18th St",
                    "Ste 105",
                    "Denver, CO 80202"
                ]
            },
            "phone": "+17207085957",
            "display_phone": "(720) 708-5957",
            "distance": 2786.383649070097
        },
        {
            "id": "KwmKhdWpcIzypdjAUNrc7w",
            "alias": "mercantile-dining-and-provision-denver",
            "name": "Mercantile Dining & Provision",
            "image_url": "https://s3-media4.fl.yelpcdn.com/bphoto/La36RRv14CheGs4x5WAR2Q/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/mercantile-dining-and-provision-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 950,
            "categories": [
                {
                    "alias": "bars",
                    "title": "Bars"
                },
                {
                    "alias": "newamerican",
                    "title": "American (New)"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.7536149959513,
                "longitude": -104.999776429002
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "1701 Wynkoop St",
                "address2": "Ste 155",
                "address3": "",
                "city": "Denver",
                "zip_code": "80202",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1701 Wynkoop St",
                    "Ste 155",
                    "Denver, CO 80202"
                ]
            },
            "phone": "+17204603733",
            "display_phone": "(720) 460-3733",
            "distance": 1939.406046224
        },
        {
            "id": "fbb7fsCGVMVkavIMm7_8KQ",
            "alias": "taqueria-la-familia-denver",
            "name": "Taqueria La Familia",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/Wdh4p4XyNcgHZdPFBm9HDw/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/taqueria-la-familia-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 234,
            "categories": [
                {
                    "alias": "mexican",
                    "title": "Mexican"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.761887,
                "longitude": -105.020065
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "2642 W 32nd Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80211",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2642 W 32nd Ave",
                    "Denver, CO 80211"
                ]
            },
            "phone": "+13034332332",
            "display_phone": "(303) 433-2332",
            "distance": 249.0175835365851
        },
        {
            "id": "mk8NBJo6Z_VJDNgTCslaDA",
            "alias": "brider-denver",
            "name": "Brider",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/jNcThd_Uf9KtKRl_fGccUg/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/brider-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 340,
            "categories": [
                {
                    "alias": "newamerican",
                    "title": "American (New)"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "sandwiches",
                    "title": "Sandwiches"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.757937099326,
                "longitude": -105.00706276083
            },
            "transactions": [
                "pickup",
                "delivery"
            ],
            "price": "$$",
            "location": {
                "address1": "1644 Platte St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80202",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1644 Platte St",
                    "Denver, CO 80202"
                ]
            },
            "phone": "+13034553084",
            "display_phone": "(303) 455-3084",
            "distance": 1153.8685608307376
        },
        {
            "id": "x0Kd3naeCepxRQbEZjVGkQ",
            "alias": "the-universal-denver",
            "name": "The Universal",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/M22fkuO3o1KpNP2q4LZe4A/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/the-universal-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 551,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                }
            ],
            "rating": 4.0,
            "coordinates": {
                "latitude": 39.76962,
                "longitude": -105.02331
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "2911 W 38th Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80211",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2911 W 38th Ave",
                    "Denver, CO 80211"
                ]
            },
            "phone": "+13039550815",
            "display_phone": "(303) 955-0815",
            "distance": 800.9293922593171
        },
        {
            "id": "3ncWfQJg_RbTqnkPmksoAA",
            "alias": "sams-no-3-downtown-denver",
            "name": "Sam's No. 3 Downtown",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/gkl12xujRvYQWk89v8njEg/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/sams-no-3-downtown-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 1770,
            "categories": [
                {
                    "alias": "diners",
                    "title": "Diners"
                },
                {
                    "alias": "mexican",
                    "title": "Mexican"
                },
                {
                    "alias": "tradamerican",
                    "title": "American (Traditional)"
                }
            ],
            "rating": 4.0,
            "coordinates": {
                "latitude": 39.7462,
                "longitude": -104.99559
            },
            "transactions": [
                "delivery"
            ],
            "price": "$$",
            "location": {
                "address1": "1500 Curtis St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80202",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1500 Curtis St",
                    "Denver, CO 80202"
                ]
            },
            "phone": "+13035341927",
            "display_phone": "(303) 534-1927",
            "distance": 2748.137946292371
        },
        {
            "id": "b6mLmT6x35GH8X7eOiGvwg",
            "alias": "the-bindery-denver-2",
            "name": "The Bindery",
            "image_url": "https://s3-media4.fl.yelpcdn.com/bphoto/KOxekHFeROj6VjUrssxLpw/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/the-bindery-denver-2?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 148,
            "categories": [
                {
                    "alias": "newamerican",
                    "title": "American (New)"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "wine_bars",
                    "title": "Wine Bars"
                }
            ],
            "rating": 4.0,
            "coordinates": {
                "latitude": 39.76068,
                "longitude": -105.00649
            },
            "transactions": [

            ],
            "price": "$$",
            "location": {
                "address1": "1817 Central St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80211",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1817 Central St",
                    "Denver, CO 80211"
                ]
            },
            "phone": "+13039932364",
            "display_phone": "(303) 993-2364",
            "distance": 1066.0972273856546
        }
    ]
  end

  # { price: 'cheap_eats' }
  def self.request_cheap_eats
    [
        {
            "id": "ErdOOovTcfW8sOjtKKSHmw",
            "alias": "the-butcher-block-cafe-denver",
            "name": "The Butcher Block Cafe",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/lUTcDBlVHtR-jCXrQo0iPA/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/the-butcher-block-cafe-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 296,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "diners",
                    "title": "Diners"
                },
                {
                    "alias": "tradamerican",
                    "title": "American (Traditional)"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.77247,
                "longitude": -104.9745499
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "1701 38th St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80216",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1701 38th St",
                    "Denver, CO 80216"
                ]
            },
            "phone": "+13032952915",
            "display_phone": "(303) 295-2915",
            "distance": 4132.309412522196
        },
        {
            "id": "ZVRZablopgmiT7Z04DJAeA",
            "alias": "cafe-miriam-denver",
            "name": "Cafe Miriam",
            "image_url": "https://s3-media4.fl.yelpcdn.com/bphoto/-NbtDui7hGKP9rj8000ZGg/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/cafe-miriam-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 92,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "creperies",
                    "title": "Creperies"
                },
                {
                    "alias": "cafes",
                    "title": "Cafes"
                }
            ],
            "rating": 5.0,
            "coordinates": {
                "latitude": 39.7483556470418,
                "longitude": -104.960353469231
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "2217 E 21st Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80205",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2217 E 21st Ave",
                    "Denver, CO 80205"
                ]
            },
            "phone": "+17134128468",
            "display_phone": "(713) 412-8468",
            "distance": 1658.6293667257933
        },
        {
            "id": "BwsrH7vf9Ir_-dvxUboVVA",
            "alias": "spices-cafe-denver",
            "name": "Spices Cafe",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/N78ivTATTX_EuS3VRkJcDQ/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/spices-cafe-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 308,
            "categories": [
                {
                    "alias": "tradamerican",
                    "title": "American (Traditional)"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "salad",
                    "title": "Salad"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.740304,
                "longitude": -104.969427
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "1510 Humboldt St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80218",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1510 Humboldt St",
                    "Denver, CO 80218"
                ]
            },
            "phone": "+13035201708",
            "display_phone": "(303) 520-1708",
            "distance": 536.0741816746827
        },
        {
            "id": "gN8o-SG2PgCQGYrOCkkqng",
            "alias": "liangs-thai-food-denver",
            "name": "Liang's Thai Food",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/cPFhtgNTCNwk71sPqLwpWA/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/liangs-thai-food-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 296,
            "categories": [
                {
                    "alias": "thai",
                    "title": "Thai"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.7433636089573,
                "longitude": -104.989760469717
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "500 16th St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80202",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "500 16th St",
                    "Denver, CO 80202"
                ]
            },
            "phone": "+17208108693",
            "display_phone": "(720) 810-8693",
            "distance": 1882.5976203569162
        },
        {
            "id": "Q6ynMAwV8rw3nd-9mQ-GfQ",
            "alias": "rye-society-denver",
            "name": "Rye Society",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/rD1GziCxbUBRkUVlK-h7vQ/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/rye-society-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 82,
            "categories": [
                {
                    "alias": "comfortfood",
                    "title": "Comfort Food"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "sandwiches",
                    "title": "Sandwiches"
                }
            ],
            "rating": 4.0,
            "coordinates": {
                "latitude": 39.76298,
                "longitude": -104.97931
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "3090 N Larimer St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80205",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "3090 N Larimer St",
                    "Denver, CO 80205"
                ]
            },
            "phone": "+13035932713",
            "display_phone": "(303) 593-2713",
            "distance": 3139.4641872046527
        },
        {
            "id": "2-J4F7aKX5O1CzODEMPxAg",
            "alias": "las-margs-denver",
            "name": "Las Margs",
            "image_url": "https://s3-media3.fl.yelpcdn.com/bphoto/JUwNSzZyCXIExrtVnx__0w/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/las-margs-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 462,
            "categories": [
                {
                    "alias": "bars",
                    "title": "Bars"
                },
                {
                    "alias": "mexican",
                    "title": "Mexican"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.74051,
                "longitude": -104.97249
            },
            "transactions": [
                "pickup"
            ],
            "price": "$",
            "location": {
                "address1": "1521 Marion St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80218",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1521 Marion St",
                    "Denver, CO 80218"
                ]
            },
            "phone": "+17203612137",
            "display_phone": "(720) 361-2137",
            "distance": 591.3268032436563
        },
        {
            "id": "RbVaY3X6PuGeDBicxlvSnA",
            "alias": "the-rolling-pin-bakeshop-denver",
            "name": "The Rolling Pin Bakeshop",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/qq_OH_5NRl69Hd-5cECSPQ/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/the-rolling-pin-bakeshop-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 296,
            "categories": [
                {
                    "alias": "coffee",
                    "title": "Coffee & Tea"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "bakeries",
                    "title": "Bakeries"
                }
            ],
            "rating": 5.0,
            "coordinates": {
                "latitude": 39.7549724978531,
                "longitude": -104.977553602597
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "2716 Welton St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80205",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2716 Welton St",
                    "Denver, CO 80205"
                ]
            },
            "phone": "+17207083026",
            "display_phone": "(720) 708-3026",
            "distance": 2251.0069002946902
        },
        {
            "id": "rdZPV9r3WPlke0ZO1mRcNA",
            "alias": "petes-kitchen-denver-2",
            "name": "Pete's Kitchen",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/LjPvbUkU8_sVQw98fT3wTQ/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/petes-kitchen-denver-2?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 620,
            "categories": [
                {
                    "alias": "greek",
                    "title": "Greek"
                },
                {
                    "alias": "diners",
                    "title": "Diners"
                }
            ],
            "rating": 4.0,
            "coordinates": {
                "latitude": 39.73981,
                "longitude": -104.96383
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "1962 E Colfax Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80206",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1962 E Colfax Ave",
                    "Denver, CO 80206"
                ]
            },
            "phone": "+13033213139",
            "display_phone": "(303) 321-3139",
            "distance": 735.9957407875216
        },
        {
            "id": "rO__XywgEpIvNbZlSkznKw",
            "alias": "birdcall-denver",
            "name": "Birdcall",
            "image_url": "https://s3-media3.fl.yelpcdn.com/bphoto/et2xcugCOoUeB_zx4YG3OA/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/birdcall-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 219,
            "categories": [
                {
                    "alias": "chickenshop",
                    "title": "Chicken Shop"
                },
                {
                    "alias": "sandwiches",
                    "title": "Sandwiches"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.75444,
                "longitude": -104.97662
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "800 E 26th Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80205",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "800 E 26th Ave",
                    "Denver, CO 80205"
                ]
            },
            "phone": "+17203612976",
            "display_phone": "(720) 361-2976",
            "distance": 2177.7041339401235
        },
        {
            "id": "codAlcyCeWgjGHjtScQA3A",
            "alias": "waffle-brothers-denver-5",
            "name": "Waffle Brothers",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/SsmJ5TyaLm3z1hPr0o4v9w/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/waffle-brothers-denver-5?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 161,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.71811,
                "longitude": -104.97881
            },
            "transactions": [
                "pickup",
                "delivery"
            ],
            "price": "$",
            "location": {
                "address1": "700 E 1st Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80203",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "700 E 1st Ave",
                    "Denver, CO 80203"
                ]
            },
            "phone": "+13037331212",
            "display_phone": "(303) 733-1212",
            "distance": 2068.355135148717
        }
    ]
  end

  # { price: 'cheap_eats', radius: 5, location: 80211 }
  def self.request_cheap_eats_in_radius_within_zipcode
    [
        {
            "id": "fbb7fsCGVMVkavIMm7_8KQ",
            "alias": "taqueria-la-familia-denver",
            "name": "Taqueria La Familia",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/Wdh4p4XyNcgHZdPFBm9HDw/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/taqueria-la-familia-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 234,
            "categories": [
                {
                    "alias": "mexican",
                    "title": "Mexican"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.761887,
                "longitude": -105.020065
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "2642 W 32nd Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80211",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2642 W 32nd Ave",
                    "Denver, CO 80211"
                ]
            },
            "phone": "+13034332332",
            "display_phone": "(303) 433-2332",
            "distance": 249.0175835365851
        },
        {
            "id": "PaKk0MUHhTJOd_5TfkO5Dw",
            "alias": "prosperoats-denver-2",
            "name": "Prosperoats",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/9U7wtTsEvMva4J-ivIraqQ/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/prosperoats-denver-2?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 189,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "juicebars",
                    "title": "Juice Bars & Smoothies"
                },
                {
                    "alias": "acaibowls",
                    "title": "Acai Bowls"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.7580465663263,
                "longitude": -105.011596
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "2550 15th St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80211",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2550 15th St",
                    "Denver, CO 80211"
                ]
            },
            "phone": "+13039958444",
            "display_phone": "(303) 995-8444",
            "distance": 849.1652903534588
        },
        {
            "id": "wrSOYHoWGBnx44rx68kyyQ",
            "alias": "wooden-spoon-cafe-and-bakery-denver",
            "name": "Wooden Spoon Cafe & Bakery",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/zNEqLSEbKpU-SI61h3p_nQ/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/wooden-spoon-cafe-and-bakery-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 277,
            "categories": [
                {
                    "alias": "bakeries",
                    "title": "Bakeries"
                },
                {
                    "alias": "sandwiches",
                    "title": "Sandwiches"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.76192,
                "longitude": -105.01636
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "2418 W 32nd Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80211",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2418 W 32nd Ave",
                    "Denver, CO 80211"
                ]
            },
            "phone": "+13039990327",
            "display_phone": "(303) 999-0327",
            "distance": 255.74889406966267
        },
        {
            "id": "ErdOOovTcfW8sOjtKKSHmw",
            "alias": "the-butcher-block-cafe-denver",
            "name": "The Butcher Block Cafe",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/lUTcDBlVHtR-jCXrQo0iPA/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/the-butcher-block-cafe-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 296,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "diners",
                    "title": "Diners"
                },
                {
                    "alias": "tradamerican",
                    "title": "American (Traditional)"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.77247,
                "longitude": -104.9745499
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "1701 38th St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80216",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1701 38th St",
                    "Denver, CO 80216"
                ]
            },
            "phone": "+13032952915",
            "display_phone": "(303) 295-2915",
            "distance": 3867.9143715726964
        },
        {
            "id": "ZfeiORgL5gbt3_35CxMFqQ",
            "alias": "birdcall-denver-2",
            "name": "Birdcall",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/NQqaZaNHjWBjjesn9kWr9A/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/birdcall-denver-2?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 79,
            "categories": [
                {
                    "alias": "chickenshop",
                    "title": "Chicken Shop"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "sandwiches",
                    "title": "Sandwiches"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.75511,
                "longitude": -105.001119
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "1701 Wewatta St",
                "address2": "",
                "address3": "Whole Foods Market",
                "city": "Denver",
                "zip_code": "80202",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "1701 Wewatta St",
                    "Whole Foods Market",
                    "Denver, CO 80202"
                ]
            },
            "phone": "+17205728800",
            "display_phone": "(720) 572-8800",
            "distance": 1751.1445915525667
        },
        {
            "id": "ADMuI-iFVbOkV8xkKEa4lw",
            "alias": "the-noshery-denver-3",
            "name": "The Noshery",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/5lQxoBCdTLTpbqXanN0URw/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/the-noshery-denver-3?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 203,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "bakeries",
                    "title": "Bakeries"
                },
                {
                    "alias": "sandwiches",
                    "title": "Sandwiches"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.7872427,
                "longitude": -105.034302
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "4994 Lowell Blvd",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80221",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "4994 Lowell Blvd",
                    "Denver, CO 80221"
                ]
            },
            "phone": "+17205243893",
            "display_phone": "(720) 524-3893",
            "distance": 2955.5583676757165
        },
        {
            "id": "z7nO7M7Jmyix4Ma1j4fIhQ",
            "alias": "rise-and-shine-biscuit-kitchen-and-cafe-denver-3",
            "name": "Rise & Shine Biscuit Kitchen and Cafe",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/739FMagAr36YBdRIgmF5_A/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/rise-and-shine-biscuit-kitchen-and-cafe-denver-3?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 218,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.75827,
                "longitude": -105.05271
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "5126 W 29th Ave",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80212",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "5126 W 29th Ave",
                    "Denver, CO 80212"
                ]
            },
            "phone": "+17208550540",
            "display_phone": "(720) 855-0540",
            "distance": 3003.9031475894576
        },
        {
            "id": "2fUWXnl1EuOHPvF4eqAnyw",
            "alias": "modern-market-eatery-denver",
            "name": "Modern Market Eatery",
            "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/UUuiXm8IMnYegAZOx_7nvA/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/modern-market-eatery-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 484,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "salad",
                    "title": "Salad"
                },
                {
                    "alias": "sandwiches",
                    "title": "Sandwiches"
                }
            ],
            "rating": 4.0,
            "coordinates": {
                "latitude": 39.746505,
                "longitude": -104.9944359
            },
            "transactions": [
                "pickup",
                "delivery"
            ],
            "price": "$",
            "location": {
                "address1": "900 Sixteenth St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80202",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "900 Sixteenth St",
                    "Denver, CO 80202"
                ]
            },
            "phone": "+13035340190",
            "display_phone": "(303) 534-0190",
            "distance": 2794.708613017572
        },
        {
            "id": "gtfMNb6ucOOaToZQSvym_g",
            "alias": "port-side-denver-2",
            "name": "Port Side",
            "image_url": "https://s3-media3.fl.yelpcdn.com/bphoto/Ff16NmmgI7ymxpzGp8gw0g/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/port-side-denver-2?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 65,
            "categories": [
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "coffee",
                    "title": "Coffee & Tea"
                }
            ],
            "rating": 4.5,
            "coordinates": {
                "latitude": 39.7576141357422,
                "longitude": -104.986045837402
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "2500 Larimer St",
                "address2": "Ste 103",
                "address3": "",
                "city": "Denver",
                "zip_code": "80205",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2500 Larimer St",
                    "Ste 103",
                    "Denver, CO 80205"
                ]
            },
            "phone": "+17205490622",
            "display_phone": "(720) 549-0622",
            "distance": 2831.3892117370665
        },
        {
            "id": "RbVaY3X6PuGeDBicxlvSnA",
            "alias": "the-rolling-pin-bakeshop-denver",
            "name": "The Rolling Pin Bakeshop",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/qq_OH_5NRl69Hd-5cECSPQ/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/the-rolling-pin-bakeshop-denver?adjust_creative=Kn9KQ62JvWrtbL2GCzIv-g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=Kn9KQ62JvWrtbL2GCzIv-g",
            "review_count": 296,
            "categories": [
                {
                    "alias": "coffee",
                    "title": "Coffee & Tea"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "bakeries",
                    "title": "Bakeries"
                }
            ],
            "rating": 5.0,
            "coordinates": {
                "latitude": 39.7549724978531,
                "longitude": -104.977553602597
            },
            "transactions": [

            ],
            "price": "$",
            "location": {
                "address1": "2716 Welton St",
                "address2": "",
                "address3": "",
                "city": "Denver",
                "zip_code": "80205",
                "country": "US",
                "state": "CO",
                "display_address": [
                    "2716 Welton St",
                    "Denver, CO 80205"
                ]
            },
            "phone": "+17207083026",
            "display_phone": "(720) 708-3026",
            "distance": 3615.7766107562643
        }
    ]
  end
end
