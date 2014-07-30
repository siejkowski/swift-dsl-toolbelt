# Why use DSL?

### To express the strictly limited functionality in a more readable way

	// https://github.com/iMartinKiss/KeepLayout
	[@[`viewOne, viewTwo, viewThree] keepHorizontalOffsets:KeepRequired(20.f)];

### To wrap an extensive API into easier form

	// https://github.com/martydill/ios-queryable
    NSArray* widgets = [[[[[self.managedObjectContext ofType:@"Widget"]
            where:@"Type == 'abc'"]
            orderBy:@"createddate"]
            take:5]
            toArray];

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

### To strip boilerplate

    // https://github.com/krzysztofzablocki/KZPropertyMapper
    [KZPropertyMapper mapValuesFrom:dictionary toInstance:self usingMapping:@{
        @"videoURL" : KZBox(URL, contentURL).isRequired().min(10),
        @"name" : KZProperty(title).lengthRange(5, 12),
        @"videoType" : KZProperty(type),
        @"sub_object" : @{
            @"title" : KZProperty(uniqueID),
        },
    }];



# Why not use DSL?


### To be clever

### To misleading

### To be funny and clever

### To make it harder for new programmers

### To be funny, clever and smart

```swift
operator infix ^^ {}
func ^^ (left: String, right: String) -> String {
    return "(: \(left) ^.^ \(right) :)"
}
"hey" ^^ "ho"
```


## What about Swift?

### Still beta - no production code

### Some great tools are being done, but a lot of them might be obsolete soon

### Hack! Hack! Hack!
