In Objective-C, a common yet subtle error arises when dealing with object ownership and memory management using ARC (Automatic Reference Counting).  Consider this scenario: 

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [NSString stringWithFormat:@"Hello, world!"];
    // ... some code that might throw an exception ...
}
@end
```

If an exception occurs *after* `myString` is assigned but *before* the method returns, `myString` might not be released properly, leading to a memory leak.  The `self.myString` assignment creates a strong reference. If the exception prevents the method's normal execution path (including the implicit release), the string will remain in memory.

Another potential issue lies in improperly handling delegate patterns. If a delegate object is retained by the delegating object but not released when the delegate is no longer needed (e.g., the view controller is deallocated), a retain cycle might occur, preventing proper deallocation of the objects involved.