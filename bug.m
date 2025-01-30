In Objective-C, a common yet subtle error arises when dealing with memory management, specifically with objects that are not properly retained or released. This can lead to crashes due to dangling pointers or memory leaks.  Consider the following example:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)dealloc {
    NSLog(@"MyClass deallocated");
    [super dealloc];
}
@end

- (void)someMethod {
    MyClass *obj = [[MyClass alloc] init];
    obj.myString = @"Hello";
    // ... some operation ...
    // obj is never released, leading to a memory leak
}
```

In this scenario, `obj` is allocated but never released. This is a memory leak because the memory occupied by `obj` and its associated `myString` will not be freed until the application exits.