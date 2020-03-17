

# Group Authentications


## Authentications [/auth/sign_in]


### Sign In [POST /api/v1/auth/sign_in]
Sign in

+ Request returns status code 200
**POST**&nbsp;&nbsp;`/api/v1/auth/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=benito.mann%40suremail.info&password=21XQFn_qUuPEJq

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTMwOTI3NDB9.3sWaF27Aikin1pS5Maoo1GW4pRSQMhzL7jD_WE1WqJM",
              "exp": "03-18-2020 15:45",
              "username": null
            }

# Group Projects


## Projects [/projects]


### Get projects [GET /api/v1/projects]
A list of Projects

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "1",
                  "type": "project",
                  "attributes": {
                    "name": "Bloody Cat"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "2",
                        "type": "user"
                      }
                    },
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                }
              ]
            }

+ Request returns projects
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "2",
                  "type": "project",
                  "attributes": {
                    "name": "Return of the Action Women"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "3",
                        "type": "user"
                      }
                    },
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                }
              ]
            }

### Create project [POST /api/v1/projects]
Creates project

+ Request creates new project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Curse+of+the+Champagne+Women

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4",
                "type": "project",
                "attributes": {
                  "name": "Curse of the Champagne Women"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "4",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

### Show project [GET /api/v1/projects/{id}]

+ Parameters
    + id: `5` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/v1/projects/5`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "5",
                "type": "project",
                "attributes": {
                  "name": "Legend of Red Cousins"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "5",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

### Update project [PUT /api/v1/projects/{id}]

+ Parameters
    + id: `6` (number, required)

+ Request returns status code 200
**PUT**&nbsp;&nbsp;`/api/v1/projects/6`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Dangerous+Ninja

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "6",
                "type": "project",
                "attributes": {
                  "name": "Dangerous Ninja"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "6",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request changes title
**PUT**&nbsp;&nbsp;`/api/v1/projects/7`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Killer+Tears

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "7",
                "type": "project",
                "attributes": {
                  "name": "Killer Tears"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "7",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

### Delete project [DELETE /api/v1/projects/{id}]

+ Parameters
    + id: `8` (number, required)

+ Request removes project
**DELETE**&nbsp;&nbsp;`/api/v1/projects/8`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 302

    + Headers

            Content-Type: text/html; charset=utf-8

    + Body

            <html><body>You are being <a href="http://www.example.com/api/v1/projects">redirected</a>.</body></html>

# Group Tasks


## Tasks [/tasks]


### Get tasks [GET /api/v1/projects/{project_id}/tasks]
A list of Tasks
+ Parameters
    + project_id: `9` (number, required)

+ Request returns tasks
**GET**&nbsp;&nbsp;`/api/v1/projects/9/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "1",
                  "type": "task",
                  "attributes": {
                    "name": "A Fistful of Red Tentacle",
                    "status": false,
                    "deadline": "2020-03-11"
                  },
                  "relationships": {
                    "project": {
                      "data": {
                        "id": "9",
                        "type": "project"
                      }
                    }
                  }
                }
              ]
            }

### Show task [GET /api/v1/tasks/{id}]
Show task
+ Parameters
    + id: `2` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/v1/tasks/2`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2",
                "type": "task",
                "attributes": {
                  "name": "A Fistful of Champagne Witch",
                  "status": false,
                  "deadline": "2020-12-28"
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "10",
                      "type": "project"
                    }
                  }
                }
              }
            }

### Create task [POST /api/v1/projects/{project_id}/tasks]
Create task
+ Parameters
    + project_id: `11` (number, required)

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/api/v1/projects/11/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Ultra+Fly&deadline=2020-06-14

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4",
                "type": "task",
                "attributes": {
                  "name": "Ultra Fly",
                  "status": false,
                  "deadline": "2020-06-14"
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "11",
                      "type": "project"
                    }
                  }
                }
              }
            }

### Update task [PUT /api/v1/tasks/{id}]
Update task
+ Parameters
    + id: `5` (number, required)

+ Request returns status code 200
**PUT**&nbsp;&nbsp;`/api/v1/tasks/5`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Dangerous+City&deadline=2017-05-23

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "5",
                "type": "task",
                "attributes": {
                  "name": "Dangerous City",
                  "status": false,
                  "deadline": "2017-05-23"
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "12",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request changes name
**PUT**&nbsp;&nbsp;`/api/v1/tasks/6`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=A+Fistful+of+Ultra+City&deadline=2018-01-01

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "6",
                "type": "task",
                "attributes": {
                  "name": "A Fistful of Ultra City",
                  "status": false,
                  "deadline": "2018-01-01"
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "13",
                      "type": "project"
                    }
                  }
                }
              }
            }

### Update status [PUT /api/v1/tasks/{id}]
Update status
+ Parameters
    + id: `7` (number, required)

+ Request returns status code 200
**PUT**&nbsp;&nbsp;`/api/v1/tasks/7`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Season+of+the+Blue+Wizard&deadline=2018-02-13&status=true

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "7",
                "type": "task",
                "attributes": {
                  "name": "Season of the Blue Wizard",
                  "status": true,
                  "deadline": "2018-02-13"
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "14",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request changes status
**PUT**&nbsp;&nbsp;`/api/v1/tasks/8`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Nuclear+Demon&deadline=2020-08-09&status=true

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "8",
                "type": "task",
                "attributes": {
                  "name": "Nuclear Demon",
                  "status": true,
                  "deadline": "2020-08-09"
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "15",
                      "type": "project"
                    }
                  }
                }
              }
            }

### Delete task [DELETE /api/v1/tasks/{id}]
Delete task
+ Parameters
    + id: `9` (number, required)

+ Request removes task
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/9`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            [
            
            ]

# Group Users


## Users [/auth]


### Create user [POST /api/v1/auth]
Create user

+ Request creates new user
**POST**&nbsp;&nbsp;`/api/v1/auth`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=dick%40spamherelots.com&password=pZApC6oHbF

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 17,
              "name": null,
              "username": null,
              "password_digest": "$2a$04$QFL01IONOVpQNaR3n/0lWOJz2ajYxyFHhLBknbauu1qk097JCilmq",
              "email": "dick@spamherelots.com",
              "encrypted_password": "",
              "reset_password_token": null,
              "reset_password_sent_at": null,
              "remember_created_at": null,
              "created_at": "2020-03-17T13:45:40.829Z",
              "updated_at": "2020-03-17T13:45:40.829Z"
            }
