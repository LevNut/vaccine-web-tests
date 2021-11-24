# vaccine-web-tests

* Testing App: [VaccineHaven Website](https://vaccine-haven.herokuapp.com/)


## How to run tests.

Open terminal in this directory and install all of the requirements using this command

````
$ pip install -r requirements.txt
````

<br>

Using the command robot to help us test the robot framework

For Verifying the elements in home page
```
$ robot verify_elements.robot
```

For User Registration (in case of that user is not already registered)
```
$ robot registration.robot
```

For Vaccine Reservation
```
$ robot reservation.robot
```

For Vaccine Cancellation
```
$ robot cancellation.robot
```



## Question
*  Which do you think is a better framework for E2E testing of web applications or web services:
    * Robot Framework
    * Cucumber with Selenium/HTTP library and JUnit?

* **Ans:** Robot Framework and Cucumber have a great impact on the project that requires the developer to discuss with 
stakeholder, which both of them are simple for stakeholder understanding. In my opinion, I think that the robot 
framework is easier to understand and use in both of stakeholder and developer.

###What tutorial or online resource(s) did you find most helpful for learning Robot Framework?
* [Robot framework Docs](https://robotframework.org/Selenium2Library/Selenium2Library.html)
* [Tutorial Video for Beginner](https://www.youtube.com/watch?v=UbYxkUq0Hec&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&ab_channel=SDET-QAAutomationTechie)

