"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

Class: Represents one cell in the game Lights Out

Responsibility: Creates a cell. It responds to mouse click input and will be layed out on a grid representing the palaying board.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 
 
Internal Representation and Key Implementation Points.

    Instance Variables
	mouseAction:		<Object>


    Implementation Points
"
Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #initalize }
LOCell >> initialize [ 
super initialize.
self label: ''.
self borderWidth: 2.
bounds := 5 @ 5 corner: 64 @ 64.
offColor := Color paleYellow.
onColor := Color paleBlue darker.
self useSquareCorners.
self turnOff
]

{ #category : #accesing }
LOCell >> mouseAction: aBlock [
^ mouseAction := aBlock
]

{ #category : #'event handling' }
LOCell >> mouseMove: anEvent [

]

{ #category : #'event handling' }
LOCell >> mouseUp: anEvent [
mouseAction value

]
