# Why use DSL?

&nbsp;  

&nbsp;  

### To express the strictly limited functionality in a more readable way

	// https://github.com/iMartinKiss/KeepLayout
	[@[viewOne, viewTwo, viewThree] 
        keepHorizontalOffsets:KeepRequired(20.f)];

&nbsp;  

&nbsp;  

### To wrap an extensive API into an easier form

	// https://github.com/martydill/ios-queryable
    NSArray* widgets = [[[[[self.managedObjectContext 
            ofType:@"Widget"]
            where:@"Type == 'abc'"]
            orderBy:@"createddate"]
            take:5]
            toArray];

&nbsp;  

&nbsp;  

### To bring widely-used conventions and techniques to the language

    // https://github.com/kiwi-bdd/Kiwi
    describe(@"Team", ^{
        context(@"when newly created", ^{
            it(@"should have 11 players", ^{
                id team = [Team team];
                [[[team should] have:11] players];
            });
        });
    });

&nbsp;  

&nbsp;  

### To strip boilerplate

    // https://github.com/krzysztofzablocki/KZPropertyMapper
    [KZPropertyMapper mapValuesFrom:dictionary 
                         toInstance:self 
                       usingMapping:@{
        @"videoURL" : KZBox(URL, contentURL).isRequired().min(10),
        @"name" : KZProperty(title).lengthRange(5, 12),
        @"videoType" : KZProperty(type),
        @"sub_object" : @{
            @"title" : KZProperty(uniqueID),
        },
    }];

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

# Why not to use DSL?

&nbsp;  

&nbsp;  

&nbsp;  

### To be clever

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

### To mislead other programmers

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

### To be funny and clever

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

### To make it harder to understand your code

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

### To be funny, clever and smart

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

```swift
operator infix ^^ {}
func ^^ (left: String, right: String) -> String {
    return "(: \(left) ^.^ \(right) :)"
}
"hey" ^^ "ho"
```
&nbsp;  

&nbsp;  

&nbsp;  

## What about Swift?

### Still beta - no production code

### Some great experiments are being done, but a lot of them might be obsolete soon

### Hack! Hack! Hack!

&nbsp;  

&nbsp;  

&nbsp;  