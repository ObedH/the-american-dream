# Architecture

## Money
### IncomeWidget
An ```IncomeWidget``` is a display of one of your income sources. It contains 
the name of the income sources, and possible actions you can do with it.

### IncomeData
```IncomeData``` is a custom resource holding the data about the income source, 
including the name of the income source.

## Notifications
### NotifBubble
A ```NotifBubble``` is a Node representing the visual widget which displays the
notification's text and a button to go to the associated tab.

It holds a ```NotifData``` object to act as the source of truth for what the 
bubble represents.

### NotifData
```NotifData``` is a custom resource holding the data about the notification, 
including the associated tab, and text.
