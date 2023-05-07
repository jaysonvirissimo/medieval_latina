# MedievalLatina <a href="https://github.com/jaysonvirissimo/medieval_latina"> <img src="https://img.shields.io/github/repo-size/jaysonvirissimo/medieval_latina"></a>

There are good text-to-speech engines for English and classical Latin, but none for medieval Latin.
`MedievalLatina` converts Latin text to a kind of phonetic spelling that can be read by English language text-to-speech engines.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'medieval_latina'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install medieval_latina

## Usage

```ruby
["caelum", "omnia", "pugno"].each { |word| puts MedievalLatina[word] }
=> "chayloom"
=> "ohm-nia"
=> "poon-yoh"

MedievalLatina.verb?("voco")
=> true

MedievalLatina.verb?("nauta")
=> false

MedievalLatina.adverb?("facile")
=> true

MedievalLatina.adjective?("certus")
=> true

MedievalLatina.noun?("canis")
=> true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

To release a new version:
1. Update the version number in `version.rb`
2. Run `bin/setup` to increment the version in the lock file
3. Run `bundle exec rake release`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jaysonvirissimo/medieval_latina.
Run `standardrb --fix` before submitting any changes, to help keep the code formatting uniform.

## License

The gem is available as open source under the terms of the [MIT License](https://github.com/jaysonvirissimo/medieval_latina/blob/master/LICENSE.txt).

caecus -a -um	blind, unseeing; dark, obscure	Adjective: 1st and 2nd Declension	Vision	728
libet libēre libuit or libitum est	it is pleasing (+ dat. + infin.)	Verb: Impersonal	Social Life	729
centum	one hundred	Adjective: Numeral	Measurement	730
cōnstō -stāre -stitī	agree; constat, it is established that (+ acc. and infin.)	Verb: 1st Conjugation	Speech/Oratory	731
lingua -ae f.	tongue; language	Noun: 1st Declension	The Body	732
multitūdō -inis f.	multitude, number	Noun: 3rd Declension	Measurement	733
aeternus -a -um	everlasting, eternal	Adjective: 1st and 2nd Declension	Lengths of Time	734
circā	around (adv. and prep. +acc.)	Preposition	Place	735
ōrātiō -ōnis f.	speech, address	Noun: 3rd Declension	Speech/Oratory	736
potestās -ātis f.	power	Noun: 3rd Declension	The City	737
tardus -a -um	slow, sluggish, lingering	Adjective: 1st and 2nd Declension	Time	738
for fārī fātus sum	report, say	Verb: Deponent	Speech/Oratory	739
humus -ī f.	ground; humī: on the ground	Noun: 2nd Declension	Earth and Water	740
testis -is m.	witness	Noun: 3rd Declension	Justice	741
īnferō īnferre intulī illātum	bring upon, against; bellum īnferre: make war on	Verb: Irregular	War and Peace	742
cūrō -āre	watch over, look after, care for (+ acc.)	Verb: 1st Conjugation	Love	743
aes aeris n.	copper, bronze	Noun: 3rd Declension	Business/Money	744
celer -is -e	swift	Adjective: 3rd Declension	Time	745
prōcēdō -cēdere -cessī -cessum	go forth, advance	Verb: 3rd Conjugation -ō	Motion	746
mēnsa -ae f.	table	Noun: 1st Declension	The House	747
pius -a -um	dutiful, devoted, just, pious	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	748
iūdicium -ī n.	judgment, decision, trial	Noun: 2nd Declension	Justice	749
victōria -ae f.	victory	Noun: 1st Declension	War and Peace	750
damnō -āre	condemn	Verb: 1st Conjugation	Justice	751
rārus -a -um	wide apart, loose, thin; rare, seldom	Adjective: 1st and 2nd Declension	Measurement	752
tempestas -tātis f.	period of time, season; bad weather, storm	Noun: 3rd Declension	Lengths of Time	753
imāgō -inis f.	image, form, figure	Noun: 3rd Declension	Vision	754
ōrō -āre	pray	Verb: 1st Conjugation	Religion	755
praeter	by, along, past; besides, except (+ acc.)	Preposition	Place	756
cōnsulō -sulere -suluī -sultum	consult, plan (+ acc.); consider the interests of (+dat)	Verb: 3rd Conjugation -ō	The City	757
iterum	again	Adverb	Time	758
porta -ae f.	gate	Noun: 1st Declension	The City	759
intersum -esse -fuī	to be between; take part in, attend (+dat.); interest, it is in the interest of (+ gen.)	Verb: Irregular	Place	760
libīdō -inis f.	passion, lust	Noun: 3rd Declension	Love	761
sustineō sustinēre sustinuī sustentum	hold up, sustain	Verb: 2nd Conjugation	Social Life	762
aliquandō	at some time, at length	Adverb	Time	763
māiōrēs māiōrum m.	ancestors	Noun: 3rd Declension	The Household	764
reperiō -perīre -pperī -pertum	find, find out	Verb: 4th Conjugation	Education/Knowledge	765
intrō -āre	enter	Verb: 1st Conjugation	Motion	766
pietās -tātis f.	sense of duty, devotion, esp. between parents and children	Noun: 3rd Declension	The Household	767
barbarus -ī m.	foreigner, barbarian	Noun: 2nd Declension	War and Peace	768
culpa -ae f.	guilt, fault, blame	Noun: 1st Declension	Justice	769
iūstus -a -um	right, just, fair	Adjective: 1st and 2nd Declension	Justice	770
dōnec	until	Conjunction	Time	771
fluō fluere fluxī fluxum	flow	Verb: 3rd Conjugation -ō	Earth and Water	772
necesse (indecl. adj.)	necessary	Adjective: Indeclinable	Business/Money	773
reor rērī rātus sum	think, imagine, suppose, deem	Verb: Deponent	Education/Knowledge	774
tenebrae -brārum f. pl.	darkness, the shadows	Noun: 1st Declension	Vision	775
saeculum -ī n.	generation, age, century	Noun: 2nd Declension	Lengths of Time	776
dīmittō -mittere -mīsī -missum	send away	Verb: 3rd Conjugation -ō	Verbs of Compelling/Directing	777
licet	even though	Conjunction	Justice	778
cinis cineris m./f.	ashes, embers	Noun: 3rd Declension	Air and Fire	779
cōnsistō -sistere -stitī	take position; consist in, be composed of	Verb: 3rd Conjugation -ō	Speech/Oratory	780
recēns -ntis	fresh, new	Adjective: 3rd Declension	Time	781
aliter	otherwise, differently	Adverb	Conjunctions/Adverbs	782
laedō laedere laesī laesum	injure by striking, hurt	Verb: 3rd Conjugation -ō	Violence	783
probō -āre	approve, prove; convince one (dat.) of a thing (acc.)	Verb: 1st Conjugation	Verbs of Compelling/Directing	784
doleō -ēre doluī	feel pain or grief, grieve	Verb: 2nd Conjugation	Emotions	785
quārē	how? why?	Adverb	Pronouns/Interrogatives	786
antequam	before	Conjunction	Time	787
reliquus -a -um	remaining, rest	Adjective: 1st and 2nd Declension	Measurement	788
semel	once	Adverb	Time	789
ōdī ōdisse	hate	Verb: Irregular	Emotions	790
sīcut	just as	Adverb	Conjunctions/Adverbs	791
peccō -āre	commit a wrong, injure	Verb: 1st Conjugation	Justice	792
sēnsus -ūs m.	feeling, emotion, sense	Noun: 4th Declension	Emotions	793
exsilium -ī n.	exile, banishment	Noun: 2nd Declension	Travel	794
cor cordis n.	heart; cordī est, it is pleasing to (+ dat.)	Noun: 3rd Declension	The Body	795
dēnique	finally	Adverb	Time	796
sapientia -ae f.	wisdom	Noun: 1st Declension	Education/Knowledge	797
statim	immediately	Adverb	Time	798
accidō -cidere -cidī	fall; happen	Verb: 3rd Conjugation -ō	Motion	799
dēcernō -cernere -crēvī -crētum	determine, decide	Verb: 3rd Conjugation -ō	Education/Knowledge	800
occīdō -cīdere -cīdī -cīsum	kill, cut down	Verb: 3rd Conjugation -ō	Violence	801
dēscendō -scendere -scendī -scēnsum	climb down, descend	Verb: 3rd Conjugation -ō	Travel	802
hiems hiemis f.	winter	Noun: 3rd Declension	Lengths of Time	803
contineō -tinēre -tinuī -tentum	contain, restrain	Verb: 2nd Conjugation	Verbs of Compelling/Directing	804
dēferō -ferre -tulī -lātum	carry away, report	Verb: Irregular	Verbs of Transport	805
oportet -ēre -uit	it is proper, right (+ acc. + infin.)	Verb: Impersonal	Social Life	806
tribūnus -ī m.	tribune, title of various Roman officials, as mīlitum, plēbis, aerāriī	Noun: 2nd Declension	The City	807
bōs bovis m.	ox; gen. pl. boum	Noun: 3rd Declension	Animals/Plants	808
īrāscor īrāscī īrātus sum	grow angry; īrātus -a -um: angry	Verb: Deponent	Emotions	809
aeger aegra aegrum	sick	Adjective: 1st and 2nd Declension	Life and Being	810
forum -ī n.	market-place, forum	Noun: 2nd Declension	The City	811
offerō offerre obtulī oblātum	present, offer, expose	Verb: Irregular	Verbs of Transport	812
revocō -āre	call back, recall	Verb: 1st Conjugation	Social Life	813
cingō cingere cīnxī cīnctum	encircle, surround, gird	Verb: 3rd Conjugation -ō	War and Peace	814
integer -gra -grum:	untouched, fresh, complete, whole	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	815
validus -a -um	strong	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	816
alō alere aluī alitum	nourish	Verb: 3rd Conjugation -ō	Life and Being	817
flōs flōris m.	flower, bloom	Noun: 3rd Declension	Animals/Plants	818
īctus -ūs m.	blow, stroke	Noun: 4th Declension	Violence	819
colligō -ere -lēgī -lēctum	gather together, collect	Verb: 3rd Conjugation -ō	Verbs of Compelling/Directing	820
pergō pergere perrēxī perrēctum	continue, proceed; awaken	Verb: 3rd Conjugation -ō	Motion	821
praesēns -ntis	present, in person, ready	Adjective: 3rd Declension	Place	822
rēctus -a -um	straight, direct	Adjective: 1st and 2nd Declension	Measurement	823
lātus -a -um	broad, wide	Adjective: 1st and 2nd Declension	Measurement	824
praeceptum -ī n.	rule, precept; command	Noun: 2nd Declension	Justice	825
recēdō -cēdere -cessī -cessum	step back, recoil, recede, withdraw	Verb: 3rd Conjugation -ō	Motion	826
utrum	whether; utrum ... an: whether ... or	Conjunction	Conjunctions/Adverbs	827
famēs -is f.	hunger, famine	Noun: 3rd Declension	Life and Being	828
pariō parere peperī partum	bring forth, give birth to; accomplish	Verb: 3rd Conjugation -iō	Life and Being	829
appāreō -ēre -uī	appear, become visible	Verb: 2nd Conjugation	Vision	830
quōmodo	in what way, how?	Conjunction	Pronouns/Interrogatives	831
error -ōris m.	wandering; error, mistake	Noun: 3rd Declension	Travel	832
forsitan, fortasse	perhaps, perchance	Adverb	Conjunctions/Adverbs	833
convertō -vertere -vertī -versum	turn about, turn, change	Verb: 3rd Conjugation -ō	Motion	834
proficīscor -ficīscī -fectus sum	set forth, go	Verb: Deponent	Travel	835
secundus -a -um	following; favorable; (as numeral) second	Adjective: 1st and 2nd Declension	Measurement	836
aperiō aperīre aperuī apertum	open	Verb: 4th Conjugation	The House	837
castus -a -um	pure, spotless, chaste	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	838
iūdex iūdicis m.	judge, juror	Noun: 3rd Declension	Justice	839
lapis lapidis m.	stone	Noun: 3rd Declension	Earth and Water	840
nimis or nimium	excessively	Adverb	Personality Traits/Characteristics	841
onus oneris n.	load, burden	Noun: 3rd Declension	Measurement	842
opera -ae f.	labor, activity, work	Noun: 1st Declension	Business/Money	843
pauper -eris	poor, lowly	Adjective: 3rd Declension	Business/Money	844
āēr āeris m.	air	Noun: 3rd Declension	Air and Fire	845
negōtium -ī n.	business	Noun: 2nd Declension	Business/Money	846
pāreō pārēre pāruī	obey	Verb: 2nd Conjugation	Verbs of Compelling/Directing	847
subitō	suddenly, unexpectedly	Adverb	Time	848
argentum -ī n.	silver, money	Noun: 2nd Declension	Business/Money	849
ūtilis -e	useful	Adjective: 3rd Declension	Making/Doing	850
aethēr aetheris n.	pure upper air, ether, heaven, sky	Noun: 3rd Declension	Air and Fire	851
mereō merēre meruī meritum	deserve, merit; serve as a soldier	Verb: 2nd Conjugation	Business/Money	852
portō -āre	carry a load	Verb: 1st Conjugation	Measurement	853
proprius -a -um	one’s own, peculiar	Adjective: 1st and 2nd Declension	Pronouns/Interrogatives	854
avis -is f.	bird	Noun: 3rd Declension	Animals/Plants	855
vanus -a -um	empty; false, deceitful	Adjective: 1st and 2nd Declension	Deception	856
māteria -ae f.	material, subject matter; timber, lumber	Noun: 1st Declension	Speech/Oratory	857
paucī -ae -a	few, a few	Adjective: 1st and 2nd Declension	Measurement	858
voluntās -ātis f.	wish, desire	Noun: 3rd Declension	Emotions	859
ēgregius -a -um	distinguished, uncommon	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	860
difficilis -e	not easy, hard, difficult	Adjective: 3rd Declension	Personality Traits/Characteristics	861
gladius -ī m.	sword	Noun: 2nd Declension	War and Peace	862
cibus -ī m.	food	Noun: 2nd Declension	Life and Being	863
certō -āre	decide by contest; fight, compete, vie	Verb: 1st Conjugation	Athletics	864
initium -ī n.:	beginning	Noun: 2nd Declension	Time	865
pertineō -tinēre -tinuī	extend over, reach; refer to, pertain to, be the business of	Verb: 2nd Conjugation	Education/Knowledge	866
quattuor	four	Adjective: Numeral	Measurement	867
turbō -āre	disturb, confuse	Verb: 1st Conjugation	Speech/Oratory	868
cōnsūmō -sūmere -sūmpsī -sūmptum	to use up, consume	Verb: 3rd Conjugation -ō	Life and Being	869
corrumpō -rumpere -rūpī -ruptum	break up, destroy, ruin	Verb: 3rd Conjugation -ō	Violence	870
incidō incidere incidī	fall upon, fall into; happen	Verb: 3rd Conjugation -ō	Motion	871
paulō, paulum	to only a small extent, slightly, a little	Adverb	Measurement	872
hospes hospitis m.	guest, guest-friend; stranger; host	Noun: 3rd Declension	Social Life	873
rīdeō -ēre rīsī rīsum	laugh, laugh at	Verb: 3rd Conjugation -ō	Emotions	874
aevum -i n.	eternity; lifetime, age	Noun: 2nd Declension	Lengths of Time	875
audāx audācis	bold, daring; reckless	Adjective: 3rd Declension	Personality Traits/Characteristics	876
posterus -a -um	next, later	Adjective: 1st and 2nd Declension	Time	877
praetor -ōris m.	praetor, one of the chief Roman magistrates	Noun: 3rd Declension	The City	878
rūs rūris n.	country	Noun: 3rd Declension	Geography	879
differō differre distulī dīlātum	scatter; publish, divulge; differ; defer, postpone	Verb: Irregular	Making/Doing	880
vītō -āre	avoid, shun	Verb: 1st Conjugation	Social Life	881
prīvātus -a -um	personal, private	Adjective: 1st and 2nd Declension	Social Life	882
serviō -īre	be a slave, serve (+ dat.)	Verb: 4th Conjugation	The Household	883
vereor verērī veritus sum	fear, stand in awe of	Verb: Deponent	Emotions	884
ingredior -gredī -gressus sum:	step in, enter	Verb: Deponent	Motion	885
addūcō -ere -dūxī -ductum	lead to, induce	Verb: 3rd Conjugation -ō	Verbs of Compelling/Directing	886
hortor hortārī hortātus sum	urge strongly, advise, exhort	Verb: Deponent	Speech/Oratory	887
reus -ī m.	defendant	Noun: 2nd Declension	Justice	888
scīlicet	certainly, of course	Adverb	Conjunctions/Adverbs	889
comparō -āre	get ready, provide; compare	Verb: 1st Conjugation	Business/Money	890
perpetuus -a -um	unbroken, perpetual	Adjective: 1st and 2nd Declension	Lengths of Time	891
dēsīderō -āre	long for, desire greatly	Verb: 1st Conjugation	Love	892
celebrō -āre	frequent, throng, crowd	Verb: 1st Conjugation	The City	893
cōnficiō -ficere -fēcī -fectum	complete, accomplish; destroy, kill, consume	Verb: 3rd Conjugation -iō	Violence	894
intendō -tendere -tendī -tentum:	stretch out, strain	Verb: 3rd Conjugation -ō	Motion	895
iūrō -āre	take an oath, swear; iūs iūrandum, oath	Verb: 1st Conjugation	Justice	896
sōlum	only, merely	Adverb	Measurement	897
auctōritās -ātis f.	influence, clout, authority	Noun: 3rd Declension	Social Life	898
iaciō iacere iēcī iactum	throw, hurl	Verb: 3rd Conjugation -iō	Athletics	899
labōrō -āre	toil, work; be in trouble or distress	Verb: 1st Conjugation	Business/Money	900
liber librī m.	book	Noun: 2nd Declension	Writing/Poetry	901
lūna -ae f.	moon	Noun: 1st Declension	Air and Fire	902
prōtinus	at once, forthwith	Adverb	Time	903
aequē	equally	Adverb	Justice	904
cōnor cōnārī cōnātus sum	try, attempt	Verb: Deponent	Making/Doing	905
cupīdō -inis f.	desire, eagerness, craving	Noun: 3rd Declension	Love	906
ferē	almost	Adverb	Conjunctions/Adverbs	907
īnsula -ae f.:	island	Noun: 1st Declension	Geography	908
fīlia -ae f.; fīlius -ī m.	daughter; son	Noun: 1st Declension	The Household	909
narrō -āre	relate, recount	Verb: 1st Conjugation	Speech/Oratory	910
necessitās -tātis f.	necessity, need	Noun: 3rd Declension	Business/Money	911
ēgredior ēgredī ēgressus sum	stride out, depart, disembark from (+ abl.)	Verb: Deponent	Travel	912
poēta -ae m.	poet	Noun: 1st Declension	Writing/Poetry	913
decem	ten	Adjective: Numeral	Measurement	914
amplus -a -um	large, spacious	Adjective: 1st and 2nd Declension	Measurement	915
aptus -a -um	fit, suitable	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	916
cōnsequor -sequī -secūtus sum	follow up, overtake, attain	Verb: Deponent	Motion	917
frequēns -ntis	in large numbers, often	Adjective: 3rd Declension	Measurement	918
nūntius -ī m.	messenger; news	Noun: 2nd Declension	Travel	919
condīciō -ōnis f.	agreement, condition	Noun: 3rd Declension	Business/Money	920
convīvium -iī n.	banquet, feast	Noun: 2nd Declension	Social Life	921
foedus -a -um	foul	Adjective: 1st and 2nd Declension	Other Senses	922
fruor fruī frūctus sum	enjoy the produce of, profit by, use (+ abl.)	Verb: Deponent	Emotions	923
num	interrogative particle implying negative answer	Adverb	Pronouns/Interrogatives	924
albus -a -um	white	Adjective: 1st and 2nd Declension	Vision	925
damnum -ī n.	damage, injury	Noun: 2nd Declension	Violence	926
frūctus -ūs m.	fruit, crops; enjoyment, delight	Noun: 4th Declension	Animals/Plants	927
cēnseō cēnsēre cēnsuī cēnsum	assess, rate; think, decide	Verb: 2nd Conjugation	Education/Knowledge	928
prōdō prōdere prōdidī prōditum	publish, hand down; give over, betray	Verb: 3rd Conjugation -ō	Verbs of Transport	929
prōpōnō -pōnere -posuī -positum	put forth, propose, present	Verb: 3rd Conjugation -ō	Speech/Oratory	930
īnstituō -stituere -stituī -stitūtum:	undertake; equip	Verb: 3rd Conjugation -ō	Making/Doing	931
item	likewise	Adverb	Conjunctions/Adverbs	932
magister magistrī m.	master, chief	Noun: 2nd Declension	Education/Knowledge	933
stella -ae f.	star	Noun: 1st Declension	Air and Fire	934
ēdūcō -dūcere -dūxī -ductum	lead forth	Verb: 3rd Conjugation -ō	Verbs of Compelling/Directing	935
frūmentum -ī n.	grain	Noun: 2nd Declension	Animals/Plants	936
suscipiō -cipere -cēpī ceptum	take up	Verb: 3rd Conjugation -iō	Verbs of Transport	937
quasi	as if	Adverb	Conjunctions/Adverbs	938
sacerdōs -dōtis m./f.	priest, priestess	Noun: 3rd Declension	Religion	939
vīcīnus -a -um	neighboring, near	Adjective: 1st and 2nd Declension	Geography	940
caveō cavēre cāvī cautum	be on guard, beware	Verb: 2nd Conjugation	Violence	941
ēligō ēligere ēlēgī ēlēctum	pick out, select	Verb: 3rd Conjugation -ō	The City	942
familia -ae f.	household, family	Noun: 1st Declension	The Household	943
paene	almost	Adverb	Conjunctions/Adverbs	944
praecipiō -cipere -cēpī -ceptum	anticipate, advise, warn	Verb: 3rd Conjugation -iō	Speech/Oratory	945
sānus -a -um	sound, sane	Adjective: 1st and 2nd Declension	Life and Being	946
potis -e	powerful, able	Adjective: 3rd Declension	Personality Traits/Characteristics	947
prīncipium -ī n.	beginning	Noun: 2nd Declension	Time	948
sepulcrum -ī n.	place of burial, tomb, grave	Noun: 2nd Declension	Life and Being	949
mortālis -e	liable to death, mortal; (as subst.) a mortal	Adjective: 3rd Declension	Life and Being	950
epistula -ae f.	letter	Noun: 1st Declension	Writing/Poetry	951
inimīcus -a -um:	unfriendly; (as subst.) enemy	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	952
interrogō -āre	put a question to, ask (+ acc.)	Verb: 1st Conjugation	Speech/Oratory	953
cōnsuētūdo -inis f.	custom, habit	Noun: 3rd Declension	Personality Traits/Characteristics	954
illūc	to that place	Adverb	Place	955
dīgnitās -ātis f.	worth, reputation, honor	Noun: 3rd Declension	Personality Traits/Characteristics	956
fugō -āre	put to flight	Verb: 1st Conjugation	Travel	957
afficiō -ficere -fēcī -fectum	affect, visit with (+ abl.)	Verb: 3rd Conjugation -iō	Social Life	958
adhibeō -hibēre -hibuī -hibitum	apply	Verb: 2nd Conjugation	Making/Doing	959
caelestis -e	from or of heaven; caelestēs, the gods	Adjective: 3rd Declension	Air and Fire	960
mulier -eris f.	woman	Noun: 3rd Declension	People	961
dīvus -a -um	divine, godlike; (as subst.) a god	Adjective: 1st and 2nd Declension	Religion	962
arbitror arbitrārī arbitrātus sum	consider, think	Verb: Deponent	Education/Knowledge	963
posteā	afterwards	Adverb	Time	964
aedēs -is f.	building; (pl.) house	Noun: 3rd Declension	The House	965
fābula -ae f.	account, tale, story	Noun: 1st Declension	Writing/Poetry	966
celeriter	quickly	Adverb	Time	967
plērus- plēra- plērumque	the greater part, very many, most, the majority	Adjective: 1st and 2nd Declension	Measurement	968
quiēscō quiēscere quiēvī quiētum	keep quiet; sleep	Verb: 3rd Conjugation -ō	Life and Being	969
quotiēns	interr. how many times? how often? rel. as often as, whenever	Adverb	Pronouns/Interrogatives	970
scientia -ae f.	knowledge	Noun: 1st Declension	Education/Knowledge	971
cōnfiteor cōnfitērī cōnfessus sum	admit (a fact), confess (a crime); reveal, disclose	Verb: Deponent	Justice	972
dīligō -ligere -lēxī -lēctum	choose, cherish, love	Verb: 3rd Conjugation -ō	Love	973
plērumque	generally	Adverb	Measurement	974
dormiō -īre	sleep	Verb: 4th Conjugation	Life and Being	975
volucris -is f./m.	bird	Noun: 3rd Declension	Animals/Plants	976
volucer -cris -cre	flying	Adjective: 3rd Declension	Animals/Plants	977
creō -āre	produce, create; elect, choose	Verb: 1st Conjugation	Making/Doing	978
fidēlis -e	faithful	Adjective: 3rd Declension	Personality Traits/Characteristics	979
indicō -āre	point out, show, make known	Verb: 1st Conjugation	Speech/Oratory	980
hodiē	today	Adverb	Lengths of Time	981
disciplīna -ae f.	training, instruction; learning, discipline	Noun: 1st Declension	Education/Knowledge	982
vērē	truly	Adverb	Speech/Oratory	983
aegrē	with difficulty	Adverb	Life and Being	984
fore		Verb: Irregular	Life and Being	985
advertō -vertere -vertī -versum	turn towards	Verb: 3rd Conjugation -ō	Motion	986
adveniō -īre -vēnī -ventum	come to, arrive at	Verb: 4th Conjugation	Travel	987
pendō pendere pependī pēnsum	weigh, hang, suspend; pay	Verb: 3rd Conjugation -ō	Business/Money	988
studeō -ēre -uī	be eager, be zealous, care for (+ dat.)	Verb: 2nd Conjugation	Emotions	989
ascendō -ere -scendī -scēnsum	climb up, ascend	Verb: 3rd Conjugation -ō	Travel	990
vulgō	commonly	Adverb	The City	991
breviter	briefly	Adverb	Measurement	992
fors fortis f.	chance	Noun: 3rd Declension	Religion	993
fēlīciter	luckily	Adverb	Personality Traits/Characteristics	994
revertō -vertere -vertī	turn back	Verb: 3rd Conjugation -ō	Motion	995
ēdīcō -dīcere -dīxī -dictum	declare	Verb: 3rd Conjugation -ō	Speech/Oratory	996
mundus -a -um	clean, neat, elegant	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	997
