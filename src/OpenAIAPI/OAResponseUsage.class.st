Class {
	#name : #OAResponseUsage,
	#superclass : #Object,
	#instVars : [
		'prompt_tokens',
		'completion_tokens',
		'total_tokens'
	],
	#category : #OpenAIAPI
}

{ #category : #accessing }
OAResponseUsage >> completion_tokens [

	^ completion_tokens
]

{ #category : #accessing }
OAResponseUsage >> completion_tokens: anObject [

	completion_tokens := anObject
]

{ #category : #accessing }
OAResponseUsage >> prompt_tokens [

	^ prompt_tokens
]

{ #category : #accessing }
OAResponseUsage >> prompt_tokens: anObject [

	prompt_tokens := anObject
]

{ #category : #accessing }
OAResponseUsage >> total_tokens [

	^ total_tokens
]

{ #category : #accessing }
OAResponseUsage >> total_tokens: anObject [

	total_tokens := anObject
]
