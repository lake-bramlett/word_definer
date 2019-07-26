# _Word Definer_

#### _Code Review, 26 July 2019_

#### By _**Lake Bramlett**_

## Description

_'Word Definer' lets user enter words and come up with definitions for those words. Hosted remotely at https://serene-springs-67968.herokuapp.com ._

## Setup/Installation Requirements

* _Clone https://github.com/lake-bramlett/word_definer repo locally_
* _In the command line, navigate to the clone repo_
* _Run `ruby app.rb`_
* _Open `localhost:4567` in preferred browser._
* _Use preferred text editor to edit_
* _Make any pull requests to https://github.com/lake-bramlett/word_definer ._

## Specs

| Spec | Input/Action | Output/Result |
| ---- | :----: | ----:|
| Adds word to list of words on homepage | User adds 'colour' | Homepage lists word 'colour' |
| Edits pre-existing word to new word/spelling | User edits 'colour' to 'color' | Homepage displays 'color' instead of 'colour' |
| Deletes pre-existing word | User deletes 'color' | Homepage no longer displays 'color' |
| Add potential definition to word | User adds 'the quality of an object or substance with respect to light reflected by the object' as a potential definition for color. | Color: the quality of an object or substance with respect to light reflected by the object|
| Edits pre-existing definition | User redefines color as 'to cause to appear different from the reality' | Color: to cause to appear different from the reality |
| Adds multiple potential definitions for a single word | User adds 'the quality of an object or substance with respect to light reflected by the object' as a definition for color | Color: to cause to appear different from the reality;  the quality of an object or substance with respect to light reflected by the object |
| Deletes definition from word | User deletes 'to cause to appear different from the reality' | Color:  the quality of an object or substance with respect to light reflected by the object |

## Known Bugs

  _As of (26 July 2019), user is unable to delete or 'like' individual definitions._

## Support and contact details

  _email: lake.bramlett@gmail.com_

## Technologies Used


  * _Ruby_
  * _Sinatra_
  * _rspec_
  * _Capybara_
  * _Git_
  * _Heroku_

### License

  *This software is licensed under the MIT license.*

Copyright (c) 2019 **_Lake Bramlett_**
