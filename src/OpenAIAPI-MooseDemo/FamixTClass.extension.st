Extension { #name : #FamixTClass }

{ #category : #'*OpenAIAPI-MooseDemo' }
FamixTClass >> mooseGPTDemo [

	<inspectorPresentationOrder: 150 title: 'MooseGPT'>
	| api object result question |
	api := OAApi new.
	object := OARequestObject new.

	question := String streamContents: [ :stream | 
		            stream
			            <<
				            'Can you explain me the following class between "`" ?';
			            << OSPlatform current lineEnding;
			            << OSPlatform current lineEnding.

		            stream << self sourceText ].

	object addMessage: (OARequestMessage new
			 content: question;
			 yourself).

	api content: object.
	result := api perform.

	^ SpTextPresenter new text:
		  (result choices anyOne message at: #content)
]
