# Furnifi

An E-Commerce app made with flutter from scratch following Software Development Lifecycle

## Stage 1 - Planning
Planning the app flow in [Draw.io](https://drive.google.com/file/d/1fKBfDXFuTcstt9O9NDbQhU6bEtSVvtan/view?usp=sharing)
![Furnifi.jpg](images/Furnifi.jpg)

## Stage 2 - Design
Designed the UI in figma
- Created Ui sprint in notion and designed the ui.

![figma.jpg](images/figma.png)

## Stage 3 - Design converted into Code
- Created Ui to code sprint in Notion and completed converting the ui into code.
- Clean architecture is followed
```
lib
├───config
├───constants
├───utils
├───presentation
│   ├───screens
│   │   ├───account
│   │   │   └───ui
│   │   │       └───components
│   │   ├───address
│   │   │   └───ui
│   │   │       └───components
│   │   ├───authentication
│   │   │   └───ui
│   │   │       └───components
│   │   ├───cart
│   │   │   └───ui
│   │   │       └───components
│   │   ├───favourite
│   │   │   └───ui
│   │   │       └───components
│   │   ├───feedback
│   │   │   └───ui
│   │   │       └───components
│   │   ├───homepage
│   │   │   └───ui
│   │   │       └───components
│   │   ├───mainpage
│   │   │   └───ui
│   │   ├───notification
│   │   │   └───ui
│   │   │       └───components
│   │   ├───onboarding
│   │   │   └───ui
│   │   │       └───components
│   │   ├───orders
│   │   │   └───ui
│   │   │       └───components
│   │   ├───order_success
│   │   │   └───ui
│   │   ├───order_summary
│   │   │   └───ui
│   │   │       └───components
│   │   ├───product
│   │   │   └───ui
│   │   │       └───components
│   │   ├───profile
│   │   │   └───ui
│   │   │       └───components
│   │   ├───search
│   │   │   └───ui
│   │   │       └───components
│   │   ├───settings
│   │   │   └───ui
│   │   └───track_order
│   │       └───ui
│   │           └───components
│   └───widgets
├───data
│   ├───models
│   │   └───generated
│   └───repositories
│       ├───auth_repository
│       └───user_repository
└───bloc
```

## Stage 4 - All Business Logics
- Currently working on it