Class {
	#name : #BaselineOfPharoOpenAIAPI,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoOpenAIAPI
}

{ #category : #baselines }
BaselineOfPharoOpenAIAPI >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfPharoOpenAIAPI >> defineDependencies: spec [

	
]

{ #category : #baselines }
BaselineOfPharoOpenAIAPI >> defineGroups: spec [
]

{ #category : #baselines }
BaselineOfPharoOpenAIAPI >> definePackages: spec [

	spec package: 'OpenAIAPI'
]
