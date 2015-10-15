# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create({email:"test1@test.com", password: "password"})
user2 = User.create({email:"test2@test.com", password: "password"})
user3 = User.create({email:"test3@test.com", password: "password"})
user1.sent_emails.create({from: "test1@test.com",
                            to: "test2@test.com",
                       subject: "Hello",
                          body: "This is a random body",
                      is_draft: true,
                    is_starred: true})
user1.sent_emails.create({from: "test1@test.com",
                            to: "test2@test.com",
                       subject: "Another Hello",
                          body: "Hello test2@test.com. This is test1@test.com",
                          is_draft: false,
                          is_important: true})
user2.sent_emails.create({from: "test2@test.com",
                            to: "test1@test.com",
                       subject: "Hello from test2",
                          body: "Hi Everybody",
                          is_draft: false})
user2.sent_emails.create({from: "test2@test.com",
                            to: "test1@test.com",
                       subject: "John Donne",
                          body: "Let sea-discoverers to new worlds have gone,Let maps to others, worlds on worlds have shown,Let us possess one world, each hath one, and is one.",
                          is_draft: false})
user2.sent_emails.create({from: "test2@test.com",
                            to: "test1@test.com",
                       subject: "Make another Email",
                          body: "Hi Everybody",
                          is_draft: false})
user2.sent_emails.create({from: "test2@test.com",
                            to: "test1@test.com",
                       subject: "Make another email",
                          body: "Let sea-discoverers to new worlds have gone,Let maps to others, worlds on worlds have shown,Let us possess one world, each hath one, and is one.",
                          is_draft: false})

user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "rredsg", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "What's Up?", body: "Peter is a weirdo", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Howdy", body: "The lighting could be better", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Remember when...", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Useful things", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Camping", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Picnic", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Snowball", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Populate the database", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "What if I were tall?", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Only if I had a dragon for a pet", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "What are you doing over the weekend", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "All power corrupts, but we need the electricity.", body: "Would you like to build a snowman", is_draft: false})

user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "I wish I were rich", body: "Where do I get a patent", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Princess Diana", body: "Carry out a random act of kindness, with no expectation of reward, safe in the knowledge that one day someone might do the same for you.", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Steve Jobs", body: "I believe life is an intelligent thing: that things aren't random.", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Helen Mirren", body: "I don't believe that if you do good, good things will happen. Everything is completely accidental and random. Sometimes bad things happen to very good people and sometimes good things happen to bad people. But at least if you try to do good things, then you're spending your time doing something worthwhile.", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "My favorite things", body: "Raindrops on roses and whiskers on kittens", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Steven Tyler", body: "Maybe life is random, but I doubt it.", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "application.yml", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Do you wear glasses", body: "No", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "James Dashner", body: "You are the shuckiest shuck faced shuck in the world!", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Jarod Kintz", body: "I want my kids to have the things in life that I never had when I was growing up. Things like beards and chest hair. ", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Jim Rohn", body: "Your life does not get better by chance, it gets better by change.", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Jesse Jackson", body: "You may not be responsible for being down, but you must be responsible for getting up.", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "What is the meaning of life", body: "", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "God, are you there? It's me Margaret", body: "No", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Frere jacques, Frere jacques ", body: "dormez- vous dormez-vous?", is_draft: false})

user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Hay gatos en AppAcademy", body: "Donde estan los gatos?", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Quiero ir al Argentina otra vez", body: "Me gustan tamales", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Mi helado favorito es vanilla ", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Spanglish", body: "El burro sabe mas que tu", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "El que rie ultimo rie mejor", body: "Jajajajajajjajja", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Manana, manana, te quiero, manana", body: "solamenta un dia mas", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Churros y chimichurris", body: "baratos y deliciosos", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Despues de los años mil, Torna el agua a su carril.", body: "Cuidado ageno de pelo ruelga.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "El fruto no cae lejos del árbol.", body: "Would you like to build a snowman", is_draft: false})

user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Donde esta el biblioteca", body: "No se. No puedo leer", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "你好", body: "Wo hui shuo yi dianr 汉语", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Wang laoshi", body: "我没有做功课。", is_draft: false})

user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})

user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})


user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})

user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "1", body: "Would you like to build a snowman", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "2", body: "Every decent man is ashamed of the government he lives under.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "3", body: "The time to repair the roof is when the sun is shining.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "4", body: "Whenever I’d try to talk myself out of going for a walk, and there were a few days like that, I’d take myself through a series of simple tasks so I would get up and go.
1. Get up.
2. Find your house keys.
3. Put on some shoes.
4. Grab your iPod.
5. Walk out the front door.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "5", body: "The most boring thing in the entire world is nudity. The second most boring thing is honesty.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "6", body: "He who builds a better mousetrap these days runs into material shortages, patent-infringement suits, work stoppages, collusive bidding, discount discrimination--and taxes.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "7", body: "The greatest use of life is to spend it for something that will outlast it.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "8", body: "Nature has been for me, for as long as I remember, a source of solace, inspiration, adventure, and delight; a home, a teacher, a companion.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "9", body: "California is a fine place to live--if you happen to be an orange.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "10", body: "I wish I were rich", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "11", body: "I can't think of any sorrow in the world that a hot bath wouldn't help, just a little bit.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "12", body: "If I knew what I was so anxious about, I wouldn't be so anxious.", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "13", body: "Time to play", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "14", body: "What is your favorit color?", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "15", body: "Whow are you?", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "16", body: "So much work", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "17", body: "Na", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "18", body: "question board", is_draft: false})
user2.sent_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "19", body: "When is this over?", is_draft: false})



user1.received_emails.create({from: "outside@test.com", to: "test1@test.com", subject: "Poems", body: "Come live with mee, and bee my love,
And wee will some new pleasures prove
Of golden sands, and christall brookes,
With silken lines, and silver hookes.

There will the river whispering runne
Warm’d by thy eyes, more than the Sunne.
And there the’inamor’d fish will stay,
Begging themselves they may betray.

When thou wilt swimme in that live bath,
Each fish, which every channell hath,
Will amorously to thee swimme,
Gladder to catch thee, than thou him.

If thou, to be so seene, beest loath,
By Sunne, or Moone, thou darknest both,
And if my selfe have leave to see,
I need not their light, having thee.

Let others freeze with angling reeds,
And cut their legges, with shells and weeds,
Or treacherously poore fish beset,
With strangling snare, or windowie net:

Let coarse bold hands, from slimy nest
The bedded fish in banks out-wrest,
Or curious traitors, sleavesilke flies
Bewitch poore fishes wandring eyes.

For thee, thou needst no such deceit,
For thou thy selfe art thine owne bait;
That fish, that is not catch’d thereby,
Alas, is wiser farre than I" ,
is_draft: false})

user1.received_emails.create({from: "test2@test.com", to: "test1@test.com", subject: "Metaphysical Poet", body: "John Donne", is_draft: false})

user2.received_emails.create({from: "outside@test.com", to: "test2@test.com", subject: "Poems2", body: "All kings, and all their favourites,
    All glory of honours, beauties, wits,
The sun it self, which makes time, as they pass,
Is elder by a year now than it was
When thou and I first one another saw.
All other things to their destruction draw,
    Only our love hath no decay;
This no to-morrow hath, nor yesterday;
Running it never runs from us away,
But truly keeps his first, last, everlasting day.

    Two graves must hide thine and my corse;
    If one might, death were no divorce.
Alas! as well as other princes, we
—Who prince enough in one another be—
Must leave at last in death these eyes and ears,
Oft fed with true oaths, and with sweet salt tears;
    But souls where nothing dwells but love
—All other thoughts being inmates—then shall prove
This or a love increasèd there above,
When bodies to their graves, souls from their graves remove.

    And then we shall be throughly blest;
    But now no more than all the rest.
Here upon earth we’re kings, and none but we
Can be such kings, nor of such subjects be.
Who is so safe as we? where none can do
Treason to us, except one of us two.
    True and false fears let us refrain,
Let us love nobly, and live, and add again
Years and years unto years, till we attain
To write threescore; this is the second of our reign.",
is_draft: false})

user2.received_emails.create({from: "test1@test.com", to: "test2@test.com", subject: "Poems4", body: "Since I am coming to that Holy room,
    Where, with Thy choir of saints for evermore,
I shall be made Thy music; as I come
    I tune the instrument here at the door,
    And what I must do then, think here before;

Whilst my physicians by their love are grown
    Cosmographers, and I their map, who lie
Flat on this bed, that by them may be shown
    That this is my south-west discovery,
    Per fretum febris, by these straits to die;

I joy, that in these straits I see my west;
    For, though those currents yield return to none,
What shall my west hurt me?  As west and east
    In all flat maps—and I am one—are one,
    So death doth touch the resurrection.

Is the Pacific sea my home?  Or are
    The eastern riches?  Is Jerusalem?
Anyan, and Magellan, and Gibraltar?
    All straits, and none but straits, are ways to them
    Whether where Japhet dwelt, or Cham, or Shem.

We think that Paradise and Calvary,
    Christ’s cross and Adam’s tree, stood in one place;
Look, Lord, and find both Adams met in me;
    As the first Adam’s sweat surrounds my face,
    May the last Adam’s blood my soul embrace.

So, in His purple wrapp’d, receive me, Lord;
    By these His thorns, give me His other crown;
And as to others’ souls I preach’d Thy word,
    Be this my text, my sermon to mine own,
    “Therefore that He may raise, the Lord throws down.",
    is_draft: false})








    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "rredsg", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "What's Up?", body: "Peter is a weirdo", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Howdy", body: "The lighting could be better", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Remember when...", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Useful things", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Camping", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Picnic", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Snowball", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Populate the database", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "What if I were tall?", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Only if I had a dragon for a pet", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "What are you doing over the weekend", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "All power corrupts, but we need the electricity.", body: "Would you like to build a snowman", is_draft: false})

    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "I wish I were rich", body: "Where do I get a patent", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Princess Diana", body: "Carry out a random act of kindness, with no expectation of reward, safe in the knowledge that one day someone might do the same for you.", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Steve Jobs", body: "I believe life is an intelligent thing: that things aren't random.", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Helen Mirren", body: "I don't believe that if you do good, good things will happen. Everything is completely accidental and random. Sometimes bad things happen to very good people and sometimes good things happen to bad people. But at least if you try to do good things, then you're spending your time doing something worthwhile.", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "My favorite things", body: "Raindrops on roses and whiskers on kittens", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Steven Tyler", body: "Maybe life is random, but I doubt it.", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "application.yml", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Do you wear glasses", body: "No", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "James Dashner", body: "You are the shuckiest shuck faced shuck in the world!", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Jarod Kintz", body: "I want my kids to have the things in life that I never had when I was growing up. Things like beards and chest hair. ", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Jim Rohn", body: "Your life does not get better by chance, it gets better by change.", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Jesse Jackson", body: "You may not be responsible for being down, but you must be responsible for getting up.", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "What is the meaning of life", body: "", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "God, are you there? It's me Margaret", body: "No", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "Frere jacques, Frere jacques ", body: "dormez- vous dormez-vous?", is_draft: false})

    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Hay gatos en AppAcademy", body: "Donde estan los gatos?", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Quiero ir al Argentina otra vez", body: "Me gustan tamales", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Mi helado favorito es vanilla ", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Spanglish", body: "El burro sabe mas que tu", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "El que rie ultimo rie mejor", body: "Jajajajajajjajja", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Manana, manana, te quiero, manana", body: "solamenta un dia mas", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Churros y chimichurris", body: "baratos y deliciosos", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Despues de los años mil, Torna el agua a su carril.", body: "Cuidado ageno de pelo ruelga.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "El fruto no cae lejos del árbol.", body: "Would you like to build a snowman", is_draft: false})

    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Donde esta el biblioteca", body: "No se. No puedo leer", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "你好", body: "Wo hui shuo yi dianr 汉语", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "Wang laoshi", body: "我没有做功课。", is_draft: false})

    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})

    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})


    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test3@test.com",to: "test1@test.com", subject: "jljsl;djfajsjfljsd", body: "Would you like to build a snowman", is_draft: false})

    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "1", body: "Would you like to build a snowman", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "2", body: "Every decent man is ashamed of the government he lives under.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "3", body: "The time to repair the roof is when the sun is shining.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "4", body: "Whenever I’d try to talk myself out of going for a walk, and there were a few days like that, I’d take myself through a series of simple tasks so I would get up and go.
    1. Get up.
    2. Find your house keys.
    3. Put on some shoes.
    4. Grab your iPod.
    5. Walk out the front door.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "5", body: "The most boring thing in the entire world is nudity. The second most boring thing is honesty.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "6", body: "He who builds a better mousetrap these days runs into material shortages, patent-infringement suits, work stoppages, collusive bidding, discount discrimination--and taxes.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "7", body: "The greatest use of life is to spend it for something that will outlast it.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "8", body: "Nature has been for me, for as long as I remember, a source of solace, inspiration, adventure, and delight; a home, a teacher, a companion.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "9", body: "California is a fine place to live--if you happen to be an orange.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "10", body: "I wish I were rich", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "11", body: "I can't think of any sorrow in the world that a hot bath wouldn't help, just a little bit.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "12", body: "If I knew what I was so anxious about, I wouldn't be so anxious.", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "13", body: "Time to play", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "14", body: "What is your favorit color?", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "15", body: "Whow are you?", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "16", body: "So much work", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "17", body: "Na", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "18", body: "question board", is_draft: false})
    user1.received_emails.create({from: "test2@test.com",to: "test1@test.com", subject: "19", body: "When is this over?", is_draft: false})
