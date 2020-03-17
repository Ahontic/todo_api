

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

            email=lasonya%40spamherelots.com&password=YKLmgwhlrVKLR5AS

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTMwOTc3MDV9.ncHwAmyHEOo5hOfuRZjUVwWgSiFvCFIM2_uKAKxA_FI",
              "exp": "03-18-2020 17:08",
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

            name=Ultra+Cousins

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "1",
                "type": "project",
                "attributes": {
                  "name": "Ultra Cousins"
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
    + id: `2` (number, required)

+ Request returns status code 200
**GET**&nbsp;&nbsp;`/api/v1/projects/2`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2",
                "type": "project",
                "attributes": {
                  "name": "Season of the Tokyo Blow"
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
    + id: `3` (number, required)

+ Request returns status code 200
**PUT**&nbsp;&nbsp;`/api/v1/projects/3`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Legend+of+Dangerous+Men

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3",
                "type": "project",
                "attributes": {
                  "name": "Legend of Dangerous Men"
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
**PUT**&nbsp;&nbsp;`/api/v1/projects/4`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Day+of+the+Blonde+Pickpocket

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4",
                "type": "project",
                "attributes": {
                  "name": "Day of the Blonde Pickpocket"
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
    + id: `5` (number, required)

+ Request removes project
**DELETE**&nbsp;&nbsp;`/api/v1/projects/5`

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
    + project_id: `6` (number, required)

+ Request returns tasks
**GET**&nbsp;&nbsp;`/api/v1/projects/6/tasks`

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
                    "name": "War of the Hungry Rain",
                    "status": false,
                    "deadline": "2020-07-12"
                  },
                  "relationships": {
                    "project": {
                      "data": {
                        "id": "6",
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
                  "name": "Killer Journals",
                  "status": false,
                  "deadline": "2020-05-13"
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "7",
                      "type": "project"
                    }
                  }
                }
              }
            }

### Create task [POST /api/v1/projects/{project_id}/tasks]
Create task
+ Parameters
    + project_id: `8` (number, required)

+ Request returns status code 201
**POST**&nbsp;&nbsp;`/api/v1/projects/8/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Curse+of+the+Champagne+Wolf&deadline=2019-02-10

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4",
                "type": "task",
                "attributes": {
                  "name": "Curse of the Champagne Wolf",
                  "status": false,
                  "deadline": "2019-02-10"
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "8",
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

            name=Curse+of+the+Danger+Demon&deadline=2016-06-15

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "5",
                "type": "task",
                "attributes": {
                  "name": "Curse of the Danger Demon",
                  "status": false,
                  "deadline": "2016-06-15"
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
            }

+ Request changes name
**PUT**&nbsp;&nbsp;`/api/v1/tasks/6`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Planet+of+the+Electric+Identity&deadline=2018-06-17

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "6",
                "type": "task",
                "attributes": {
                  "name": "Planet of the Electric Identity",
                  "status": false,
                  "deadline": "2018-06-17"
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

            name=War+of+the+Blonde+Journals&deadline=2018-07-03&status=true

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "7",
                "type": "task",
                "attributes": {
                  "name": "War of the Blonde Journals",
                  "status": true,
                  "deadline": "2018-07-03"
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

+ Request changes status
**PUT**&nbsp;&nbsp;`/api/v1/tasks/8`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            name=Death+Wolf&deadline=2017-11-12&status=true

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "8",
                "type": "task",
                "attributes": {
                  "name": "Death Wolf",
                  "status": true,
                  "deadline": "2017-11-12"
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

            {
              "data": [
            
              ]
            }

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

            email=eduardo%40spamherelots.com&password=abddsVAFSk9Y2B7c

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 17,
              "name": null,
              "username": null,
              "password_digest": "$2a$04$hCKf5OQezJyQsjj4uf2Poe/ww1gYNVoU1QdtvV3azGLS92d0WF99.",
              "email": "eduardo@spamherelots.com",
              "encrypted_password": "",
              "reset_password_token": null,
              "reset_password_sent_at": null,
              "remember_created_at": null,
              "created_at": "2020-03-17T15:08:25.428Z",
              "updated_at": "2020-03-17T15:08:25.428Z"
            }
