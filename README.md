# JSAlertView

JSAlertView comes with few handy methods for showing simple alerts.

For example, if you want to display a simple alert with "Ok" button, you will have to write couple of lines of code as below

using UIAlertController:
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title" message:@"This is a simple alert." preferredStyle:UIAlertControllerStyleAlert];
	UIAlertAction* okButton = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    [alert addAction:okButton];
    
    [self presentViewController:alert animated:animated completion:nil];
    
    
using UIAlertView:    
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title" message:@"This is a simple alert." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
    
    
but using JSAlertView its short and simple,
	[JSAlertView alert:@"This is a simple alert."];
	
	OR
	
	Alert(@"This is a simple alert.");
	
super easy, right?

Another handy method is for asking user a question, like a confirmation dialog,
	[JSAlertView confirm:@"Did you like this alert?" withCompletionHandler:^(BOOL accepted) {
        NSLog(@"%@", (accepted ? @"YES" : @"NO"));
    }];
    
Lastly, you can use the following method for full customization:
	[JSAlertView alert:@"Alert with multiple buttons." withTitle:@"Alert Title" buttons:@[@"Button 1",@"Button 2",@"Button 3",@"Button 4",@"Button 5"] withCompletionHandler:^(NSInteger buttonIndex, NSString *buttonTitle) {
        NSLog(@"Pressed %@ at index %ld", buttonTitle, (long)buttonIndex);
    }];
	
JSAlertView can be used for any iOS version without any worry for support for UIAlertView in any iOS version.
