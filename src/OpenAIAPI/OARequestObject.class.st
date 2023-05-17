Class {
	#name : #OARequestObject,
	#superclass : #Object,
	#instVars : [
		'model',
		'temperature',
		'messages'
	],
	#category : #OpenAIAPI
}

{ #category : #accessing }
OARequestObject >> addMessage: aOAMessage [

	messages add: aOAMessage
]

{ #category : #accessing }
OARequestObject >> initialize [

	super initialize.
	self model: 'gpt-3.5-turbo'.
	self temperature: 0.7.
	self messages: OrderedCollection new
]

{ #category : #accessing }
OARequestObject >> jsonableObject [

	^ Dictionary new
		  at: #temperature put: self temperature;
		  at: #model put: self model;
		  at: #messages put: (self messages collect: #jsonableObject);
		  yourself
]

{ #category : #accessing }
OARequestObject >> messages [

	^ messages
]

{ #category : #accessing }
OARequestObject >> messages: anObject [

	messages := anObject
]

{ #category : #accessing }
OARequestObject >> model [

	^ model
]

{ #category : #accessing }
OARequestObject >> model: anObject [

	model := anObject
]

{ #category : #accessing }
OARequestObject >> temperature [

	^ temperature
]

{ #category : #accessing }
OARequestObject >> temperature: anObject [

	temperature := anObject
]
