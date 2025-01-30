The solution involves properly releasing the allocated object.  Using Automatic Reference Counting (ARC), this is handled automatically if proper properties are used. However, in Manual Retain Release (MRR), you must explicitly release the object:

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
    [obj release]; // Correctly releases the object
}
```

**With ARC:**  The `strong` keyword ensures the object is retained while in use; ARC handles release when it's no longer needed.  No manual release is necessary.

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
    //No need to release explicitly; ARC handles it.
}
```

Remember to choose either MRR or ARC consistently across your project.  Mixing them can lead to issues.