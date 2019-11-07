/*:
 # Introduction
 
 ## What is Reactive Programming?
 Definition from [wikipedia](https://en.wikipedia.org/wiki/Reactive_programming) :
 - Programming paradigm that concerned with __asynchronous data streams__ and __propagation of change__
 
 ### But, what do you mean by data streams?
 
 ![Data Streams](0-datastream.png)
 
 We can listen to this stream!
 
 If you familiar with ___Observer Pattern___, this _listening_ process usually called as __subsribing__.
 And the stream that being listened is called a subject, or in ReactiveX terms we called it as an __Observable__.
 
 ### Next, is about Propagation of Change...
 That means that while we listening to a stream, we can transform its data.
 
 ![Transforming a stream](0-propagationofchange.png)
 
 ## Reminder!
 Observable won't emitting events when nobody's is listening to it. So, remember to trigger it by subscribing to it.
 
 _source for image: [@andrestaltz](https://twitter.com/andrestaltz) from [The introduction to Reactive Programming you've been missing](https://gist.github.com/staltz/868e7e9bc2a7b8c1f754)_
 */
//: [Let's start with __Observable__](@next)
