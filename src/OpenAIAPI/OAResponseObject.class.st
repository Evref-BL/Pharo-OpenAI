Class {
	#name : #OAResponseObject,
	#superclass : #Object,
	#instVars : [
		'id',
		'object',
		'created',
		'model',
		'usage',
		'choices'
	],
	#category : #OpenAIAPI
}

{ #category : #accessing }
OAResponseObject >> choices [

	^ choices
]

{ #category : #accessing }
OAResponseObject >> choices: anObject [

	choices := anObject
]

{ #category : #accessing }
OAResponseObject >> created [

	^ created
]

{ #category : #accessing }
OAResponseObject >> created: anObject [

	created := anObject
]

{ #category : #accessing }
OAResponseObject >> id [

	^ id
]

{ #category : #accessing }
OAResponseObject >> id: anObject [

	id := anObject
]

{ #category : #accessing }
OAResponseObject >> model [

	^ model
]

{ #category : #accessing }
OAResponseObject >> model: anObject [

	model := anObject
]

{ #category : #accessing }
OAResponseObject >> object [

	^ object
]

{ #category : #accessing }
OAResponseObject >> object: anObject [

	object := anObject
]

{ #category : #accessing }
OAResponseObject >> usage [

	^ usage
]

{ #category : #accessing }
OAResponseObject >> usage: anObject [

	usage := anObject
]
