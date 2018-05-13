# Clean-Architecture-with-MVVM
In this , we will see how we implement a Clean architecture for our iOS application using DDD, TDD and MVVM especially. 


# Clean Architecture :

Achieve a high-level separation of concerns by layering. Clean Architecture looks like a very carefully thought and effective architecture. It makes the big leap of recognizing the mismatch between Use Cases and Entities and puts the former in the driving seat of our system.it also aims for a maximum independence of any frameworks or tools that might stay in the way of application’s testability or their replacement.


* Entities: Which Contain Enterprise-wide Business Rules. 
* Use Cases: Which Contain Application-specific Business Rules. 
* Interface Adapters: Which Contain Adapters To Peripheral Technologies. Here, You Can Expect MVC, Gateway Implementations 
* Frameworks & Drivers: Which Contain Tools Like Databases Or Framework. By Default, You Don’t Code Too Much In This Layer, But It’s Important To Clearly State The Place And Priority That Those Tools Have In Your Architecture.


# Benefits of a Clean Architecture :
- Flexible
- Testable
- Easy to understand
- High Maintainability
- Could play well with best practices like DDD
- Screaming – Use Cases are clearly visible in the project’s structure

# Drawbacks :
- Complexity
- No Idiomatic Framework Usage – the dependency rule is relentless in this area
- Learning Curve :  it’s harder to grasp than the other style
- Indirect - there will be a lot more interfaces than one might expect (I don’t see it as necessarily bad, but I’ve seen people pointing this out)
- Heavy – in the sense that you might end up with a lot more classes than you currently have in your projects (again, the extra classes are not necessarily bad)


# When to Use Clean Architecture : 

When to Use Clean Architecture :  Is the team skilled and/or convinced enough
Will the system outlive major framework releases?
Will the system outlive the developers and stakeholders employment?


 # Application :
- Delivery pattern e.g (MVVM, MVC, MVP)
- Place for your UIViews and UIViewController
- Completely independent of the Platform

# Platform :
- Concrete implementation of the Domain
- Does hide all implementation details

# Domain : 
- Basically what is your App about and what it can do (Entities, UseCase etc).
- it doesn't have implementations apart from entities

# Xcode Project Structure :


├─ Domain <br/>
 ├─ Entities<br/>
 ├─ UseCases<br/>

├─ Application<br/>
  ├─ Scenes<br/>
    ├─  News ( Delivery pattern MVVM )<br/>

├─ Network Platform<br/>
  ├─ Base Api Client<br/>
  ├─ Base Repository<br/>
 
  ├─ Services<br/>
	├─ NewsService<br/>

  ├─ Respository<br/>
	├─ NewsRepository<br/>

├─ Core Platform<br/>
  ├─ Foundation<br/>
  ├─ Extensions<br/>
  ├─ Configuration<br/>
  ├─ Utilities<br/>
  ├─ Network<br/>

├─ Resources<br/>
  ├─ Images<br/>
  ├─ Certificates<br/>
  ├─ Localization<br/>
  ├─ Assets<br/>
  ├─ Fonts<br/>



- MVVM Structure 1 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%201.png)

- MVVM Structure 2 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%202.png)

- MVVM Structure 3 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%203.png)

- MVVM Structure 4 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%204.png)

- MVVM Structure 5 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%205.png)

- MVVM Structure 6 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%206.png)

- MVVM Structure 7 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%207.png)

- MVVM Structure 8 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%208.png)

- MVVM Structure 9 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%209.png)

- MVVM Structure 10 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%2010.png)

- MVVM Structure 11 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%2011.png)

- MVVM Structure 12 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%2012.png)

- MVVM Structure 13 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%2013.png)

- MVVM Structure 14 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%2014.png)

- MVVM Structure 15 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%2015.png)

- MVVM Structure 16 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%2016.png)

- MVVM Structure 17 : 

![alt text](https://github.com/ITHHKN/Clean-Architecture-with-MVVM/blob/master/screenshots/MVVM%20with%20Clean%20Architecture%20-%2017.png)
