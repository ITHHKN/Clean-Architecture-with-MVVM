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
- complexity
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


![alt text](https://raw.githubusercontent.com/ITHHKN/Clean-Architecture-with-MVVM/master/MVVM%20with%20Clean%20Architecture.png"Application MVVM-Clean-Architecture")
