Class {
	#name : #OARequestMessage,
	#superclass : #Object,
	#instVars : [
		'role',
		'content'
	],
	#category : #OpenAIAPI
}

{ #category : #accessing }
OARequestMessage >> content [

	^ content
]

{ #category : #accessing }
OARequestMessage >> content: anObject [

	content := anObject
]

{ #category : #accessing }
OARequestMessage >> initialize [

	super initialize.
	self role: 'user'
]

{ #category : #accessing }
OARequestMessage >> jsonableObject [

	^ Dictionary new
		  at: #content put: self content;
		  at: #role put: self role;
		  yourself
]

{ #category : #accessing }
OARequestMessage >> role [

	^ role
]

{ #category : #accessing }
OARequestMessage >> role: anObject [

	role := anObject
]
