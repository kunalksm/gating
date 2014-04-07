#GATING

##Context
You will be writing a feature called gating. We currently have a feature implemented
on the site. You can see an example [here](http://zooppa.com/en-us/contests/design-the-next-can-part-2/gate).  

The goal of this exercise is to see your backend logic and design decisions.
Please use TDD process to develop this feature. Since, we will be focusing on backend
code, you can use scaffolding to generate view code.

_TIPS_: Use design patterns. We've used [composite design pattern](http://en.wikipedia.org/wiki/Composite_pattern) in
our implementation. We would love to see your design.


##Specifications

* system has two entities - Contest, User
* when a user goes to home page, she sees list of contests
* contest page has links to contest detail page
* when she clicks on the link, she should see contest details.
* a contest has a title and description
* gating is a feature we are introducing to show action for contests.
* if a gate is on for a contest, user has to pass the gating first before performing action.
* a gate has a question and expects answer from user
* the gate offers a question based on the type of gate.
* when user enters correct answer, user is allowed to see the contest.
* the answer is remembered for the user, so she does not have to enter the same question again.
* contest has three types of gates - NDA, State, and Age.
  * NDA - user is displayed NDA and accept/reject option. Accept option passes the gate, reject option fails the gate
  * State - user selects state of residence. Only residents of states - IL, CA, WA are allowed to see the contest
  * Age - users above 18 years are allowed to see the content
* contest could have multiple gates.
* failing any of the gates takes them back to contest#index.

##Requirements

Please use Rails >= 4.0.0, rspec, guard, spring to implement this feature.
You can start from scratch or use the boilerplate code provided here.

Email me if you have any questions. Please fork the repository and check-in your code
once you are done into your repository. Email me the new url for the review!

Thanks  
