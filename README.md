# Pharo-OpenAI

## Installation 

```st
Metacello new
  githubUser: 'Evref-BL' project: 'Famix-Html' commitish: 'main' path: 'src';
  baseline: 'FamixHtml';
  load
```

## Usage

Set the API key in the Settings browser.
Then,

```st
api := OAApi new.
object := OARequestObject new.

object addMessage: (OARequestMessage new 
	content: 'How are you ?';
	yourself).
	
api content: object.
result := api perform.

result choices anyOne message at: #content 
```
