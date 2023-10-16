Class {
	#name : #OAApi,
	#superclass : #Object,
	#instVars : [
		'openAIKey',
		'content',
		'znClient'
	],
	#classInstVars : [
		'openAIKey'
	],
	#category : #OpenAIAPI
}

{ #category : #settings }
OAApi class >> authorSettingOn: aBuilder [

	<systemsettings>
	(aBuilder group: #OpenAI)
		parent: #tools;
		with: [
			(aBuilder setting: #openAIKey)
				order: -100000;
				label: 'OpenAI Key';
				target: self;
				default: '';
				ghostHelp: 'My key' ]
]

{ #category : #accessing }
OAApi class >> openAIKey [

	^ openAIKey
]

{ #category : #accessing }
OAApi class >> openAIKey: anObject [

	openAIKey := anObject
]

{ #category : #accessing }
OAApi >> content [

	^ content
]

{ #category : #accessing }
OAApi >> content: anObject [

	content := anObject
]

{ #category : #accessing }
OAApi >> initialize [

	super initialize.
	self openAIKey: self class openAIKey
]

{ #category : #accessing }
OAApi >> openAIKey [

	^ openAIKey
]

{ #category : #accessing }
OAApi >> openAIKey: anObject [

	openAIKey := anObject
]

{ #category : #api }
OAApi >> perform [

	^ (self reader on: self performRequest printString readStream) 
		  nextAs: OAResponseObject
]

{ #category : #api }
OAApi >> performRequest [

	znClient := ZnEasy client.
	znClient https.
	znClient forJsonREST.
	znClient headerAt: #Authorization put: 'Bearer ' , self openAIKey.
	znClient host: 'api.openai.com'.
	znClient path: '/v1/chat/completions'.
	znClient entity:
		(ZnEntity json:
			 (NeoJSONWriter toString: self content jsonableObject)).
	^ znClient post
]

{ #category : #accessing }
OAApi >> reader [

	| reader |
	reader := NeoJSONReader new.
	reader mapAllInstVarsFor: OAResponseChoice.
	reader mapAllInstVarsFor: OAResponseUsage.
	reader for: OAResponseObject do: [ :mapping | 
		mapping mapInstVars: #( created id model object ).
		(mapping mapInstVar: #usage) valueSchema: OAResponseUsage.
		(mapping mapInstVar: #choices) valueSchema: #ArrayOfChoices ].

	reader
		for: #ArrayOfChoices
		customDo: [ :mapping | 
		mapping listOfElementSchema: OAResponseChoice ].

	^ reader
]
