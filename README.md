## Desgin Patterns App ##

![badge-languages] ![badge-platforms] ![badge-mit]

[badge-platforms]: https://img.shields.io/badge/platforms-iOS-lightgrey.svg
[badge-languages]: https://img.shields.io/badge/language-Swift-orange
[badge-mit]: https://img.shields.io/badge/license-MIT-blue.svg

This app will cover following Desgin Patterns

- MVC
- Singleton
- MVVM
- Facade 

## MVC ##

The MVC pattern divides the responsibilities of an iOS application into different sectors that serve their purpose. The MVC separates the business and operations side of the application from the presentation layer while tasking a middleman, known as the controller object, to facilitate interactions between the Model and View, including retrieving data from the database, manipulating it, and either sending it back to the database or using it for rendering.

## Singleton ##

Singleton is a design pattern that is very popular in development. Most of the developers are using this design pattern. This is very simple, common and easy to use in your project. It initializes your class instance single time only with static property and it will share your class instance globally.

Things Keep in mind while creating Singleton Class

- Put 'final' keyword while creating class to prevent it from subclassing
- Make initialisers as 'private'
- Use 'static' keyword to for sharedInstance of class. 

## MVVM ##

Model-View-ViewModel (MVVM) is a design pattern widely used in iOS app development to create clean, maintainable, and testable code. MVVM separates an app’s user interface (View) from the underlying data (Model) and introduces an intermediary component called ViewModel to manage the presentation logic. It maily have three parts

- Model: Represents data and business logic of app. 
- View: This is user interface layer where user interacts with app.
- View-Model: It acts intermidator between model and view. It holds all logic of app. 

## Facade Design Pattern ##

Facades define a higher-level interface that makes the subsystem easier to use. The facade design pattern is often used in iOS development to simplify the interaction with complex subsystems, such as the network layer, the database layer, and the view layer. Facade design pattern class provides a simple interface to all subsystem exist in app. 

For example: lets say 'checkBalace() -> int' function in any of the app. Dev can use it whenever wants. This will performs required task and return results.   
