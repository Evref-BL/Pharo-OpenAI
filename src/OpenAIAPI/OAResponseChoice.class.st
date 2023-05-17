Class {
	#name : #OAResponseChoice,
	#superclass : #Object,
	#instVars : [
		'message',
		'finish_reason',
		'index'
	],
	#category : #OpenAIAPI
}

{ #category : #accessing }
OAResponseChoice >> finish_reason [

	^ finish_reason
]

{ #category : #accessing }
OAResponseChoice >> finish_reason: anObject [

	finish_reason := anObject
]

{ #category : #accessing }
OAResponseChoice >> index [

	^ index
]

{ #category : #accessing }
OAResponseChoice >> index: anObject [

	index := anObject
]

{ #category : #accessing }
OAResponseChoice >> message [

	^ message
]

{ #category : #accessing }
OAResponseChoice >> message: anObject [

	message := anObject
]
