# Requirements

## Personas

### Organizer

This is the person who is setting up the event

### Presenter

This is the person who wants to present a lightning talk

### Facilitator

This is the person who runs the event

### Voter

This is the person who helps determine order or popularity by voting on submitted talks

### Anonymous Visitor

This is a person interested in the information about the event / registered talks

## Use Cases

## Signing up

Required to sign up
* Organizer
* Facilitator

Not Required to sign up
* Voter

Maybe
* Presenter
  maybe just have contact information with submission

## Setting up vanilla event

Organizer

### Pre-conditions

* Organizer is a registered user

### Steps

1. Visit the "new event" form
2. Submit the event's information
3. Assigning the facilitator
4. Receives an email with event information
  4.1 Event overview
  4.2 URLS
  4.3 Instructions on how to proceed

### Post-conditions
1. Event is now set up

## Assigning the facilitator

* Organizer

### Steps

1. Go to the event administration page
2. Enter the email address of the facilitator
  2.1 Organizer is NOT the facilitator
    2.1.1 Facilitator receives an invite email to event

### Post-conditions
1. Facilitator is now linked to the event

## Set the event to accept submissions

### Pre-conditions
1. Event exists

### Steps
1. Organizer goes to event management
2. Organizer sets event to "accepting" state
  2.1 Set a timeframe
    2.1.1 Begin time
    2.1.2 End time
  2.2 Manually says "event is now accepting"


### Post-conditions
1. Event knows when it can accept submissions
  1.1 Immediately
  1.2 When time-trigger happens

## Set the event to not accept submissions

### Pre-conditions
1. Event exists

### Steps
1. Organizer goes to event management
2. Organizer sets event to "not accepting" state
  2.1 Set a timeframe
    2.1.1 Begin time
    2.1.2 End time
  2.2 Manually says "event is now accepting"
  2.3 Number of talks allowed / slots to fill


### Post-conditions
1. Event knows when it should stop accepting submissions
  1.1 Immediately
  1.2 When time-trigger happens

## Editing event information

* Organizer

### Pre-conditions
1. Event exists
1. User is the organizer of the event

### Steps
1. User goes to their "my events" page
2. User clicks on edit for specific event
3. User updates information about event

### Post-conditions
1. Events information is updated

## Organizer views "My Events" page

### Pre-conditions
1. Event exists
2. User is logged in

### Steps
1. User goes to "My Events" page
2. User sees events that have been created
  2.1 Upcoming Events
  2.2 Past Events
  2.3 Individual Event Actions
    2.3.1 Edit link
    2.3.1 Delete link

## Accepting a facilitation invitation

* Facilitator

### Pre-conditions
1. Event exists
2. Person's email is set to be the facilitator
3. Facilitator is a registered user

### Steps
1. User receives an email with event information + acceptance link
2. User clicks on link
3. User sees "welcome to the event" screen
4. User receives an email with event facilitation information / instruction

### Post-conditions
1. User is now linked to the event as facilitator


## Registering a lightning talk

* Presenter

### Pre-conditions
1. Event exists
2. Event is accepting submissions

### Steps
1. User goes to the submission page
2. User submits a lightning talk
3. User sees "Thanks" and information about verification email
4. User receives verification email with link
5. User clicks link
6. User sees "Your talk is under review"

### Post-conditions
1. Submission is in the "under review" queue
-or-
2. Submission is in the "waiting verification queue" if email link has not been clicked

## Accepting a submission

* Organizer
* Facilitator

### Pre-conditions
1. Submission exists in "under review" queue

### Steps
1. User goes to event page
2. User goes to "submissions under review" queue
3. User accepts a submission
4. Presenter receives email about acceptance with event information


### Post-conditions
1. Submission has been accepted
2. Submission shows up on event page


## Editing a submitted lightning talk

* Presenter

? Can you edit after votes have been given
? If you edit topic, does this need to be re-accepted

## Removing my submission

* Presenter

## Removing/Rejecting a submission

* Organizer
* Facilitator

### Pre-conditions
1. Submission exists in any of the queues

### Steps
1. User visits a submission queue
2. User selects submission to reject
3. User confirms rejection

### Post-conditions
1. Submission no longer exists in the queues

## Facilitating a vanilla event

Facilitator

### Seeing the order

* Facilitator
* Presenters
* Anonymous Visitors

### Pre-conditions
1. Event exists

### Steps
1. User goes to Event page
2. User sees the list of submisions in order

### Post-conditions

### Stretch Features
* Current speaker

## Voting for a lightning talk

* Anonymous Visitor

### Pre-conditions
1. Submission exists
2. Submission has been accepted

### Steps
1. User goes to Public event page
2. User selects a submission to vote for

### Post-conditions
1. Submission's vote count has incremented

### Stretch Features
* Live vote updating

## Changing the order of the talks

* Organizer
* Facilitator

### Pre-conditions
1. At least 2 submissions exist (first, second)

### Steps
1. User goes to Event page
2. User goes to Submission Ordering page (may be the event page)
3. User moves second submission above first submission

### Post-conditions
1. second submission now shows up before first submission

### Stretch Features
1. Drag-drop ordering

## Marking a talk as done

## Notifying the next presenters

* Email
* SMS

## Viewing current status of event

### Personas Involved
* Organizer
* Facilitator
* Anonymous User

## Facilitator starts event
