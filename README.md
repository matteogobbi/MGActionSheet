MGActionSheet
=============

This is like a normal UIActionSheet but without delegate: most useful object that manages the user's choice with a block.

## Example Usage

This is an easy example to init and use the object by block:

``` objective-c
    //Initialization
    MGActionSheet *actionSheet = [[MGActionSheet alloc] initWithTitle:@"Block action sheet!" cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete" otherButtonTitles:@"Option 1", @"Option 2", @"Option 3", nil];
    
    //Show with completition block
    [actionSheet showInView:self.view withChoiceCompletition:^(int buttonIndex) {
        
        if(buttonIndex == actionSheet.cancelButtonIndex) NSLog(@"Cancelled");
        else if(buttonIndex == actionSheet.destructiveButtonIndex) NSLog(@"Destructed");
        else {
            NSLog(@"Option at index: %d", buttonIndex);
        }
    }];
```
It's also included the example's project.

## Contact

Matteo Gobbi

- http://www.matteogobbi.it
- http://github.com/matteogobbi
- http://twitter.com/matteo_gobbi
- https://angel.co/matteo-gobbi
- http://www.linkedin.com/profile/view?id=24211474

## License

MGActionSheet is available under the MIT license.