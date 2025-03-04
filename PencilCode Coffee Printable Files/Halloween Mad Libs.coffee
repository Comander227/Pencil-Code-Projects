Halloween Mad Libs Pencil Code Project

## Array Declarations 
madLibDead = [
    'We interupt your regularly scheduled '
    'A Noun'
    ' to bring you some '
    'An Adjective'
    ' breaking news: A Zombie outbreak in (the) '
    'A Place'
    ' is causing mass Hysteria amoung the city`s '
    'A Plural Noun'
    '. The '
    'An Adjective'
    ' zombie attack, believed to have started early this morning, has claimed a growing number of '
    'A Plural Noun'
    '. If you have any '
    'An Adjective'
    ' creatures, call your local polcie at 9-1-'
    'A Number'
    '. Be on the lookout for anyone with yellow '
    'A Plural Noun'
    ' and a/an '
    'An Adjective'
    ' look in his or her '
    'Part of the Body (Plural)'
    ' Please note that these creatures make '
    'Verb Ending in -ing'
    ' sounds and walk in a trancelike '
    'A Noun'
    ' when looking for '
    'A Plural Noun'
    ' to feed on. Citizens are encouraged to stay indoors and remain calm, cool, and '
    'An Adjective'
]

madLibSeance = [
    'Do you want a home, '
    'An Adjective'
    ', home and not a haunted '
    'A Noun'
    '? Gather some '
    'An Adjective'
    ' friends together late at night and have a/an '
    'An Adjective'
    ' seance to get rid of any evil spirts or ghostly '
    'A Plural Noun'
    ' who just can`t seem to cross over. First, you`ll need a wise '
    'A Noun'
    ' to preside over the gathering. He or she should have the experience talking to '
    'An Adjective'
    ' spirits. Second, make sure to invite friends who feel really '
    'An Adjective'
    ' about being there. No scaredy-'
    'A Plural Noun'
    ' allowed. Once your friends arrice light some '
    'A Plural Noun'
    ' to set the mood, sit next to one another and hold '
    'Part of the Body (Plural)'
    '. Then the medium should say "Dear Spirit, if you can hear us, tap three times on the '
    'A Noun'
    '." If all goes '
    'An Adverb'
    ', your '
    'An Adjective'
    ' house will be ghost-free in no time.'
]

madLibSpace = [
  'Spacedate '
  'A Number'
  '.652-2. The inter-'
  'An Adjective'
  ' spaceship named '
  'Your Name'
  ' 3000 was '
  'Verb ending in -ing'
  ' through deep space when the crew recieved a message that said : "Danger! Space ghosts on board!" The spaceship`s alarm made a loud '
  'A Sound'
  ', and '
  'A Color'
  ' warning lights flashed as space ghosts with tentacles on their '
  'A Part of the Body (Plural)'
  ' appeared on the ship. The crew perpared to fight with their laser '
  'A Plural Noun'
  ', but the ghost yanked the weapons out of their '
  'A Part of the Body (Plural)'
  '! Then, the ghosts started '
  'A Verb ending in -ing'
  ' in a circle around the crew, singing, "Splurg-gurg! '
  'A Silly Word'
  '!" The crew was certain the ghosts were going to '
  'A Verb'
  ' them for lunch! But fortunately, the '
  'An Adjective'
  ' captain pulled a guitar out of her '
  'An Article of Clothing'
  ' and started '
  'A Verb ending in -ing'
  ' it! "SPLURG-GLURG! '
  'The Same Silly Word'
  '!" she sang. It turned out the scary space ghosts weren`t there to attack the ship. They just wanted some '
  'Something Alive (Plural)'
  ' to dance with! it was the best rock `n` roll '
  'Type of Event'
  ' that outer space had ever seen'
]

madLibGhost = [
  'Studying to be a ghost can be so '
  'An Adjective'
  '! After '
  'A Number'
  ' years of training at the '
  'An Adjective'
  ' Academy of Ghosts, my teacher told me I had to scare my friend, '
  'Person You Know'
  ', if i wanted to graduate! When I arriced at my friend`s '
  'A Place'
  ', I found them snuggled in a comfy '
  'A Noun'
  ',  quietly reading their favorite scary '
  'A Noun'
  '. I carefully '
  'A Verb (Past Tense)'
  ' behind them, took a deep breath and yelled: "'
  'A Silly Word'
  '!" My friend screamed, "'
  'An Exclamation'
  '," at the top of their '
  'Part of the Body (Plural)'
  ' and '
  'A Verb (Past Tense)'
  ' almost '
  'A Number'
  ' feet out of their chair! They even spilled iced '
  'A Type of Liquid'
  ' all iver themselves! They were so '
  'An Adjective'
  '! It`s safe to say my teacher, Mrs. Ghouley Von '
  'A Last Name'
  ', taught me a thing or '
  'A Number'
  ' about this ghosting stuff. And the best part is, I got a/an '
  'A Letter of the Alphabet'
  '+ on my final exam in ghost class'
  ]
  
madLibs = [
  madLibDead,
  madLibSeance,
  madLibSpace,
  madLibGhost
]

madLibTemplate = [
    'Story'
    'Prompt?'
    'Story'
    'Prompt?'
    'Story'
    'Prompt?'
    'Story'
    'Prompt?'    
]



## Promting and replacement function
Prompting = (madLib) ->
  for i in [1...madLib.length] by 2
    await read madLib[i], defer answer
    madLib[i] = answer
  typeline()
  typeline()

## Presenting user generated Mad Lib  
  write 'Here is your Mad Lib'
  typeline()
  
  write madLib.join ''
  

## Directions
write 'Click one of the buttons to complete the spooky themed MadLib'
write 'Reload the program to redo already completed MadLibs'

write '   ' 

## User Interface
button 'Zombies', ->
  Prompting(madLibDead)

write '   ' 

button 'Seance', ->
  Prompting(madLibSeance)

write '   ' 


button 'Space', ->
  Prompting(madLibSpace)

write '   ' 


button 'Ghost', ->
  Prompting(madLibSeance)

write '   ' 

button 'Random', ->
  pick = random(madLibs.length)
  Prompting(madLibs[pick])

write '   ' 

button 'Custom', ->
  Prompting(madLibTemplate)

