require "set"

class MedievalLatina
  PARTS_OF_SPEECH = [
    "Adjective",
    "Adverb",
    "Conjunction",
    "Preposition",
    "Pronoun",
    "Verb"
  ].to_set.freeze

  DICTIONARY = {
    "ad" => "add",
    "adveniat" => "ad-vayniat",
    "aeternus" => "aeternus",
    "africa" => "africa",
    "alma" => "almuh",
    "amamus" => "ah-mah-moose",
    "amo" => "amo",
    "appello" => "appello",
    "creavit" => "kray-ah-veet",
    "duo" => "doo-oh",
    "duodeviginti" => "duo-day-veejin-tee",
    "ego" => "ay-goh",
    "es" => "es",
    "est" => "est",
    "estis" => "estis",
    "ex" => "ex",
    "et" => "ett",
    "europa" => "yoorope-uh",
    "gens" => "gens",
    "germania" => "jer-maneeah",
    "hominem" => "hominem",
    "italia" => "italia",
    "mater" => "mah-tare",
    "meus" => "may-oos",
    "moveo" => "mo-vey-oh",
    "octo" => "awk-toh",
    "omnia" => "ohm-nia",
    "optime" => "op-tee-may",
    "pater" => "pah-tare",
    "principio" => "preen-cheepio",
    "puella" => "poo-elah",
    "quo" => "quo",
    "rhenus" => "ray-noose",
    "repetite" => "reppa-teetay",
    "rex" => "rex",
    "sanctificetur" => "sahnk-teefee-chaytoor",
    "septemdecim" => "septem-daycheem",
    "septimus" => "sep-tee-moose",
    "sextus" => "sextus",
    "stibium" => "stih-bium",
    "terra" => "terra",
    "terram" => "terram",
    "terreo" => "tayrayo",
    "timeo" => "teemayo",
    "toga" => "toga",
    "undeviginti" => "oon-day-veejin-tee"
  }.freeze

  ADJECTIVES = %w[
    acer
    acerbus
    adultus
    aeguus
    alius
    altus
    asper
    audax
    aureus
    avarus
    bellus
    brevis
    carus
    celer
    certus
    civilis
    clarus
    communis
    conscius
    crudelis
    cupidus
    demens
    desidiosus
    difficilis
    dignus
    doctus
    dulcis
    durus
    eloquens
    eximius
    extremus
    facilis
    falsus
    felix
    ferus
    fortis
    fortunatus
    gratus
    humanus
    humilis
    immortalis
    inanis
    incertus
    infirmus
    informis
    ingens
    iniustus
    integer
    invictus
    iratus
    iustus
    laetus
    levis
    liber
    longus
    magnus
    malus
    medius
    meus
    militaris
    mirus
    mortalis
    multus
    novus
    obstinatus
    opportunus
    parvus
    plenus
    praeclarus
    praeteritus
    proprius
    prudens
    publicus
    pudicus
    pulcher
    rarus
    rectus
    rusticus
    sacer
    sacrilegus
    salvus
    sanctus
    sapiens
    scelestus
    securus
    serius
    similis
    simplex
    sollicitus
    solus
    stabilis
    studiosus
    subitus
    superbus
    tardus
    totus
    tristis
    turpis
    tuus
    urbanus
    utilis
    vehemens
    velox
    verus
    vetus
  ].to_set.freeze

  ADVERBS = %w[
    abhinc
    adhuc
    admodum
    alias
    aliter
    aliqua
    aliquando
    amplius
    ante
    bis
    breviter
    ceterum
    circa
    clam
    comminus
    contra
    cotidie
    deinde
    demisse
    diligenter
    diu
    eo
    facile
    fere
    fortasse
    fortiter
    graviter
    haud
    ibi
    interdum
    intus
    ita
    item
    iterum
    nunc
    palam
    partim
    parum
    passim
    plane
    prius
    prope
    recte
    retro
    saepe
    semel
    sic
    statim
    subito
    tum
    tunc
    ultro
    undique
    utinam
    vere
    vix
  ].to_set.freeze

  NOUNS = %w[
    accusator
    acerbitas
    acies
    adulatio
    adulescens
    adulescentia
    aedificium
    aequitas
    aes
    aetas
    aevum
    ager
    agricola
    agricola
    agricultura
    ambitio
    amicitia
    amicus
    amnis
    amor
    ancilla
    angellus
    anima
    animal
    annus
    apparatus
    aqua
    ara
    aratrum
    arbitrium
    arbor
    arcus
    argentum
    argumentum
    arma
    ars
    arx
    astrum
    auctor
    audacia
    auditor
    augur
    auris
    aurum
    auxilium
    avaritia
    aviditas
    avis
    bellum
    belua
    beneficium
    bestia
    bos
    caelum
    calamitas
    canis
    caput
    caritas
    carmen
    castrum
    casus
    causa
    celeritas
    cena
    certamen
    civis
    civitas
    clementia
    concilium
    coniuratio
    conscientia
    consilium
    consul
    consultum
    copia
    copiae
    cor
    cornu
    corpus
    culpa
    cupiditas
    cura
    custodia
    dea
    decor
    decretum
    detrimentum
    deus
    dictator
    dies
    dignitas
    diligentia
    discessus
    discipulus
    disputatio
    divitiae
    doctrina
    dolor
    dominatus
    dominus
    domus
    dux
    ecclesia
    eloquentia
    eques
    equus
    excellentia
    excidium
    exercitus
    exilium
    exitium
    exsul
    fabula
    factum
    facultas
    fama
    familia
    fatum
    femina
    feriae
    ferrum
    fides
    flumen
    forma
    fortuna
    forum
    frigus
    fructus
    fuga
    furor
    gemma
    gens
    genus
    gloria
    gravitas
    habitus
    hasta
    homo
    honor
    hospes
    hostis
    ignavia
    ignominia
    imperium
    industria
    ingenium
    iniuria
    insidia
    insula
    invidia
    ira
    iudex
    iudicium
    ius
    iuvenis
    iuventus
    labor
    lapis
    laus
    lex
    liber
    libertas
    litterae
    ludus
    luna
    magister
    maiores
    mater
    mare
    medica
    medicus
    memoria
    mens
    merx
    miles
    miseria
    mors
    mores
    mos
    mulier
    mundus
    munia
    nauta
    navigatio
    nefas
    nomen
    nox
    nubes
    nuntius
    nuptiae
    obses
    obsidio
    odium
    officium
    onus
    opera
    opes
    ops
    opus
    oratio
    os
    otium
    paedagogus
    pars
    pater
    patientia
    paupertas
    pax
    pecunia
    pedes
    periculum
    philosophia
    plebs
    poena
    poeta
    populus
    porta
    portus
    potestas
    principium
    probitas
    prudentia
    puella
    puer
    pugna
    rapina
    ratio
    regio
    regnum
    rex
    rus
    sacerdos
    sagitta
    sapientia
    satura
    scelus
    schola
    scientia
    scriptor
    senator
    senectus
    senex
    serva
    servus
    signum
    silva
    socius
    sol
    spes
    status
    studium
    summa
    temeritas
    temperantia
    tempestas
    templum
    tempus
    terra
    testis
    timor
    turba
    tyrannus
    urbs
    uxor
    valetudo
    vacca
    venenum
    verbum
    veritas
    via
    victor
    victoria
    victus
    vicus
    villa
    vinum
    vir
    vires
    virtus
    vis
    visus
    vitium
    vulgus
  ].to_set.freeze

  VERBS = %w[
    abeo
    accedo
    accendo
    adeo
    ago
    actum
    ait
    alo
    ambulo
    amo
    appello
    audeo
    audio
    bello
    bibo
    cado
    caedo
    caleo
    cano
    capio
    capto
    careo
    carpo
    castigo
    cedo
    ceno
    censeo
    cesso
    cieo
    cingo
    cito
    claudo
    coco
    coepio
    coerceo
    cogito
    cognosco
    cogo
    colo
    committo
    compello
    concido
    condo
    confero
    conficio
    confido
    congrego
    conor
    conservo
    consumo
    convenio
    convoco
    creo
    cresco
    culpo
    curo
    damno
    debeo
    dedo
    defendo
    defero
    deleo
    desidero
    despicio
    dico
    dimico
    discedo
    disco
    do
    doceo
    doleo
    duco
    edico
    edo
    efficio
    eicio
    emendo
    emo
    eo
    eripio
    excipio
    excogito
    expello
    facio
    fero
    fio
    firmo
    fleo
    fluo
    fugio
    fugo
    fundo
    fungor
    gemo
    gero
    guberno
    gusto
    habeo
    horrifico
    hortor
    iaceo
    iacio
    ignoro
    impello
    impero
    impono
    incedo
    incito
    ineo
    insulto
    insurgo
    interficio
    invenio
    iuro
    iuvo
    laboro
    laetor
    laudo
    lego
    licet
    ligo
    malo
    maneo
    mereor
    misceo
    misereor
    mitto
    moneo
    moveo
    mutilo
    muto
    nascor
    navigo
    neco
    nego
    nescio
    nitor
    noceo
    nosco
    nuntio
    obsideo
    occido
    occulo
    odi
    offero
    oppono
    opprimo
    opto
    oro
    ostendo
    pareo
    pario
    paro
    pasco
    patior
    pello
    perdo
    peto
    pono
    possum
    premo
    probo
    propero
    protego
    provideo
    pugno
    punio
    puto
    quaero
    quaescivi
    quatio
    rapio
    redeo
    reficio
    rego
    relinquo
    reperio
    resisto
    respondeo
    resto
    rideo
    saluto
    salveo
    sano
    scindo
    scio
    scribo
    secerno
    sedeo
    sentio
    sequor
    servio
    servo
    spero
    spiro
    sto
    sum
    sumo
    sumpsi
    supero
    surgo
    taceo
    tego
    teneo
    termino
    tero
    terreo
    timeo
    tollo
    trado
    traho
    tutor
    uro
    usurpo
    utor
    vagor
    valeo
    veho
    versor
    verto
    video
    vigilo
    vito
    vivo
    voco
    volo
    vulnero
  ].to_set.freeze

 FREQUENCY_LIST = {
  "et" => { meaning: "and", part: "Conjunction" },
  "sum" => { meaning: "be, exist", part: "Verb" },
  "esse" => { meaning: "be, exist", part: "Verb" },
  "fuī" => { meaning: "be, exist", part: "Verb" },
  "futūrum" => { meaning: "be, exist", part: "Verb" },
  "quī" => { meaning: "who, which, what", part: "Pronoun" },
  "quae" => { meaning: "who, which, what", part: "Pronoun" },
  "quod" => { meaning: "who, which, what", part: "Pronoun" },
  "que" => { meaning: "and (postpositive enclitic)", part: "Conjunction" },
  "in" => { meaning: "in, on (+ abl.); into, onto (+ acc)", part: "Preposition" },
  "nōn" => { meaning: "not", part: "Adverb" },
  "hic" => { meaning: "this, these", part: "Pronoun" },
  "haec" => { meaning: "this, these", part: "Pronoun" },
  "hoc" => { meaning: "this, these", part: "Pronoun" },
  "ille" => { meaning: "that", part: "Pronoun" },
  "illa" => { meaning: "that", part: "Pronoun" },
  "illud" => { meaning: "that", part: "Pronoun" },
  "tū" => { meaning: "you (sing.)", part: "Pronoun" },
  "tuī" => { meaning: "you (sing.)", part: "Pronoun" },
  "tibi" => { meaning: "you (sing.)", part: "Pronoun" },
  "tē" => { meaning: "you (sing.)", part: "Pronoun" },
  "cum" => { meaning: "with (prep. + abl.); when, since, although (conjunction + subj.)", part: "Preposition" },
  "ego" => { meaning: "I, me", part: "Pronoun" },
  "meī" => { meaning: "I, me", part: "Pronoun" },
  "mihi" => { meaning: "I, me", part: "Pronoun" },
  "mē" => { meaning: "I, me", part: "Pronoun" },
  "is" => { meaning: "he, she, it", part: "Pronoun" },
  "ea" => { meaning: "he, she, it", part: "Pronoun" },
  "id" => { meaning: "he, she, it", part: "Pronoun" },
  "ad" => { meaning: "to, up to, towards (+acc.)", part: "Preposition" },
  "ut" => { meaning: "as (+ indic.); so that, with the result that (+ subj.); (in questions) in what manner, how; (exclam.) to what an extent! how!", part: "Adverb" },
  "utī" => { meaning: "as (+ indic.); so that, with the result that (+ subj.); (in questions) in what manner, how; (exclam.) to what an extent! how!", part: "Adverb" },
  "sī" => { meaning: "if", part: "Conjunction" },
  "sui" => { meaning: "him- her- itself, themselves", part: "Pronoun" },
  "sibi" => { meaning: "him- her- itself, themselves", part: "Pronoun" },
  "sē" => { meaning: "him- her- itself, themselves", part: "Pronoun" },
  "sēsē" => { meaning: "him- her- itself, themselves", part: "Pronoun" },
  "omnis" => { meaning: "all, every, as a whole", part: "Adjective", declension: "3rd" },
  "-e" => { meaning: "all, every, as a whole", part: "Adjective", declension: "3rd" },
  "nec" => { meaning: "and not, nor; nec ... nec, neither ... nor", part: "Conjunction" },
  "sed" => { meaning: "but", part: "Conjunction" },
  "ā" => { meaning: "from, by (+abl.)", part: "Preposition" },
  "ab" => { meaning: "from, by (+abl.)", part: "Preposition" },
  "abs" => { meaning: "from, by (+abl.)", part: "Preposition" },
  "ipse" => { meaning: "him- her- itself", part: "Pronoun" },
  "ipsa" => { meaning: "him- her- itself", part: "Pronoun" },
  "ipsum" => { meaning: "him- her- itself", part: "Pronoun" },
  "possum" => { meaning: "be able", part: "Verb", conjugation: "Irregular" },
  "posse" => { meaning: "be able", part: "Verb", conjugation: "Irregular" },
  "potuī" => { meaning: "be able", part: "Verb", conjugation: "Irregular" },
  "aut" => { meaning: "or", part: "Conjunction" },
  "māgnus" => { meaning: "great", part: "Adjective", declensions: ["1st", "2nd"] },
  "-a" => { meaning: "great", part: "Adjective: 1st and 2nd Declension" },
  "-um" => { meaning: "great", part: "Adjective: 1st and 2nd Declension" },
  "ex" => { meaning: "out of, from (+ abl.)", part: "Preposition" },
  "ē" => { meaning: "out of, from (+ abl.)", part: "Preposition" },
  "suus" => { meaning: "his own, her own, its own", part: "Adjective: 1st and 2nd Declension" },
  "-a" => { meaning: "his own, her own, its own", part: "Adjective: 1st and 2nd Declension" },
  "-um" => { meaning: "his own, her own, its own", part: "Adjective: 1st and 2nd Declension" },
  "dō" => { meaning: "give", part: "Verb: 1st Conjugation" },
  "dare" => { meaning: "give", part: "Verb: 1st Conjugation" },
  "dedī" => { meaning: "give", part: "Verb: 1st Conjugation" },
  "datum" => { meaning: "give", part: "Verb: 1st Conjugation" },
  "quam" => { meaning: "how?; (after comparative) than", part: "Adverb" },
  "per" => { meaning: "through (+acc.)", part: "Preposition" },
  "videō" => { meaning: "see", part: "Verb: 2nd Conjugation" },
  "vidēre" => { meaning: "see", part: "Verb: 2nd Conjugation" },
  "vīdī" => { meaning: "see", part: "Verb: 2nd Conjugation" },
  "vīsum" => { meaning: "see", part: "Verb: 2nd Conjugation" },
  "faciō" => { meaning: "do, make", part: "Verb: 3rd Conjugation -iō" },
  "facere" => { meaning: "do, make", part: "Verb: 3rd Conjugation -iō" },
  "fēcī" => { meaning: "do, make", part: "Verb: 3rd Conjugation -iō" },
  "factum" => { meaning: "do, make", part: "Verb: 3rd Conjugation -iō" },
  "dīcō" => { meaning: "say; causam dīcere, plead a case; diem dīcere, appoint a day", part: "Verb: 3rd Conjugation -ō" },
  "dīcere" => { meaning: "say; causam dīcere, plead a case; diem dīcere, appoint a day", part: "Verb: 3rd Conjugation -ō" },
  "dīxī" => { meaning: "say; causam dīcere, plead a case; diem dīcere, appoint a day", part: "Verb: 3rd Conjugation -ō" },
  "dictum" => { meaning: "say; causam dīcere, plead a case; diem dīcere, appoint a day", part: "Verb: 3rd Conjugation -ō" },
  "iam" => {	meaning: "now; already", part: "Adverb" },
  "atque" => { meaning: "and in addition, and also, and; (after comparatives) than; simul atque, as soon as", part: "Conjunction" },
  "ac" => { meaning: "and in addition, and also, and; (after comparatives) than; simul ac, as soon as", part: "Conjunction" },
  "alius" => { meaning: "other, another; ālias: at another time", part: "Adjective", gender: :masculine },
  "alia" => { meaning: "other, another; ālias: at another time", part: "Adjective", gender: :feminine },
  "aliud" => { meaning: "other, another; ālias: at another time", part: "Adjective", gender: :neuter },
  "rēs" => { meaning: "thing (rēs pūblica, commonwealth; rēs familiāris, family property, estate; rēs mīlitāris, art of war; rēs novae, revolution)", part: "Noun", gender: :feminine },
  "habeō" => { meaning: "have, hold", part: "Verb" },
  "habēre" => { meaning: "have, hold", part: "Verb" },
  "habuī" => { meaning: "have, hold", part: "Verb" },
  "habitum" => { meaning: "have, hold", part: "Verb" },
  "animus" => { meaning: "spirit, mind", part: "Noun", gender: :masculine },
  "meus" => { meaning: "my", part: "Pronoun", gender: :masculine },
  "mea" => { meaning: "my", part: "Pronoun", gender: :feminine },
  "meum" => { meaning: "my", part: "Pronoun", gender: :neuter },
  "deus" => { meaning: "god", part: "Noun", gender: :masculine },
  "dea" => { meaning: "goddess", part: "Noun", gender: :feminine },
  "multus" => { meaning: "much, many; multō, by far", part: "Adjective", gender: :masculine },
  "multa" => { meaning: "much, many; multō, by far", part: "Adjective", gender: :feminine },
  "multum" => { meaning: "much, many; multō, by far", part: "Adjective", gender: :neuter },
  "tuus" => { meaning: "your", part: "Adjective", gender: :masculine },
  "tua" => { meaning: "your", part: "Adjective", gender: :feminine },
  "tuum" => { meaning: "your", part: "Adjective", gender: :neuter },
  "ferō" => { meaning: "bear, carry, endure", part: "Verb" },
  "ferre" => { meaning: "bear, carry, endure", part: "Verb" },
  "tulī" => { meaning: "bear, carry, endure", part: "Verb" },
  "lātum" => { meaning: "bear, carry, endure", part: "Verb" },
  "dē" => { meaning: "down from, about, concerning", part: "Preposition" },
  "nē" => { meaning: "lest, that not", part: "Conjunction" },
  "manus" => { meaning: "hand; band of men", part: "Noun", gender: :feminine },
  "nūllus" => { meaning: "not any, no one", part: "Adjective", gender: :masculine },
  "nūlla" => { meaning: "not any, no one", part: "Adjective", gender: :feminine },
  "nūllum" => { meaning: "not any, no one", part: "Adjective", gender: :neuter },
  "nunc" => { meaning: "now", part: "Adverb" },
  "nōs" => { meaning: "we", part: "Pronoun" },
  "nostrum" => { meaning: "we", part: "Pronoun" },
  "nostrī" => { meaning: "we", part: "Pronoun" },
  "nōbīs" => { meaning: "we", part: "Pronoun" },
  "noster" => { meaning: "our", part: "Pronoun", gender: :masculine },
  "nostra" => { meaning: "our", part: "Pronoun", gender: :feminine },
  "nostrum" => { meaning: "our", part: "Pronoun", gender: :neuter },
  "ūnus" => { meaning: "one", part: "Adjective", gender: :masculine },
  "ūna" => { meaning: "one", part: "Adjective", gender: :feminine },
  "ūnum" => { meaning: "one", part: "Adjective", gender: :neuter },
  "diēs" => { meaning: "day", part: "Noun", gender: :masculine },
  "nihil" => { meaning: "nothing; not at all", part: "Noun" },
  "nīl" => { meaning: "nothing; not at all", part: "Noun" },
  "tum" => { meaning: "then", part: "Adverb" },
  "tunc" => { meaning: "then", part: "Adverb" },
  "enim" => { meaning: "for, indeed", part: "Conjunction" },
  "tamen" => { meaning: "nevertheless, still", part: "Conjunction" },
  "īdem" => { meaning: "the same", part: "Pronoun", gender: :masculine },
  "eadem" => { meaning: "the same", part: "Pronoun", gender: :feminine },
  "idem" => { meaning: "the same", part: "Pronoun", gender: :neuter },
  "rēx" => { meaning: "king", part: "Noun", gender: :masculine },
  "nam" => { meaning: "for, indeed, really", part: "Conjunction" },
  "namque" => { meaning: "for, indeed, really", part: "Conjunction" },
  "locus" => { meaning: "place; loca (n. pl.) region", part: "Noun", gender: :masculine },
  "veniō" => { meaning: "come", part: "Verb" },
  "venīre" => { meaning: "come", part: "Verb" },
  "vēnī" => { meaning: "come", part: "Verb" },
  "ventum" => { meaning: "come", part: "Verb" },
  "inter" => { meaning: "between, among; during (+ acc.)", part: "Preposition" },
  "pars" => { meaning: "part", part: "Noun", gender: :feminine },
  "volō" => { meaning: "wish, be willing", part: "Verb" },
  "velle" => { meaning: "wish, be willing", part: "Verb" },
  "voluī" => { meaning: "wish, be willing", part: "Verb" },
  "etiam" => { meaning: "also, even", part: "Adverb" },
  "bonus" => { meaning: "good", part: "Adjective", gender: :masculine },
  "bona" => { meaning: "good", part: "Adjective", gender: :feminine },
  "bonum" => { meaning: "good", part: "Adjective", gender: :neuter },
  "agō" => { meaning: "drive, do, act", part: "Verb" },
  "agere" => { meaning: "drive, do, act", part: "Verb" },
  "ēgī" => { meaning: "drive, do, act", part: "Verb" },
  "āctum" => { meaning: "drive, do, act", part: "Verb" },
  "terra" => { meaning: "land", part: "Noun", gender: :feminine },
   "pater" => { meaning: "father, ancestor", part: "Noun", gender: :masculine },
  "patris" => { meaning: "father, ancestor", part: "Noun", gender: :masculine },
  "neque" => { meaning: "and not, nor", part: "Conjunction" },
  "domus" => { meaning: "house, home", part: "Noun", gender: :feminine },
  "at" => { meaning: "but, but yet", part: "Conjunction" },
  "corpus" => { meaning: "body", part: "Noun", gender: :neuter },
  "corporis" => { meaning: "body", part: "Noun", gender: :neuter },
  "quoque" => { meaning: "also, too", part: "Conjunction" },
  "aliquis" => { meaning: "some, any", part: "Pronoun" },
  "aliquae" => { meaning: "some, any", part: "Pronoun" },
  "aliquid" => { meaning: "some, any", part: "Pronoun" },
  "tōtus" => { meaning: "whole, entire", part: "Adjective", gender: :masculine },
  "tōta" => { meaning: "whole, entire", part: "Adjective", gender: :feminine },
  "tōtum" => { meaning: "whole, entire", part: "Adjective", gender: :neuter },
  "sīc" => { meaning: "in this manner, thus", part: "Adverb" },
  "hīc" => { meaning: "here", part: "Adverb" },
   "iste" => { meaning: "that, that of yours", part: "Pronoun" },
  "ista" => { meaning: "that, that of yours", part: "Pronoun" },
  "istud" => { meaning: "that, that of yours", part: "Pronoun" },
  "urbs" => { meaning: "city", part: "Noun", gender: :feminine, declension: "3rd" },
  "petō" => { meaning: "seek, aim at", part: "Verb", conjugation: "3rd" },
  "petere" => { meaning: "seek, aim at", part: "Verb", conjugation: "3rd" },
  "petīvī" => { meaning: "seek, aim at", part: "Verb", conjugation: "3rd" },
  "petītum" => { meaning: "seek, aim at", part: "Verb", conjugation: "3rd" },
  "iubeō" => { meaning: "bid, order", part: "Verb", conjugation: "2nd" },
  "iubēre" => { meaning: "bid, order", part: "Verb", conjugation: "2nd" },
  "iussī" => { meaning: "bid, order", part: "Verb", conjugation: "2nd" },
  "iussum" => { meaning: "bid, order", part: "Verb", conjugation: "2nd" },
  "vir" => { meaning: "man", part: "Noun", gender: :masculine, declension: "2nd" },
  "bellum" => { meaning: "war", part: "Noun", gender: :neuter, declension: "2nd" },
  "vīta" => { meaning: "life", part: "Noun", gender: :feminine, declension: "1st" },
  "homō" => { meaning: "human being", part: "Noun", gender: :masculine, declension: "3rd" },
  "hominis" => { meaning: "human being", part: "Noun", gender: :masculine, declension: "3rd" },
  "tempus" => { meaning: "time", part: "Noun", gender: :neuter, declension: "3rd" },
  "magis" => { meaning: "more", part: "Adverb" },
   "prīmus" => { meaning: "first", part: "Adjective", gender: :masculine },
  "prīma" => { meaning: "first", part: "Adjective", gender: :feminine },
  "prīmum" => { meaning: "first", part: "Adjective", gender: :neuter },
  "ubi" => { meaning: "where, when", part: "Adverb" },
  "hostis" => { meaning: "stranger, enemy", part: "Noun", gender: :masculine, declension: "3rd" },
  "an" => { meaning: "or (in questions); utrum ... an: whether ... or", part: "Conjunction" },
  "mors" => { meaning: "death", part: "Noun", gender: :feminine, declension: "3rd" },
  "mortis" => { meaning: "death", part: "Noun", gender: :feminine, declension: "3rd" },
  "tam" => { meaning: "so, so much", part: "Adverb" },
  "eō" => { meaning: "go", part: "Verb", irregular: true },
  "īre" => { meaning: "go", part: "Verb", irregular: true },
  "iī" => { meaning: "go", part: "Verb", irregular: true },
  "īvī" => { meaning: "go", part: "Verb", irregular: true },
  "itum" => { meaning: "go", part: "Verb", irregular: true },
  "arma" => { meaning: "arms, weapons", part: "Noun", gender: :neuter, declension: "2nd" },
  "superus" => { meaning: "situated above, upper", part: "Adjective", gender: :masculine },
  "supera" => { meaning: "situated above, upper", part: "Adjective", gender: :feminine },
  "superum" => { meaning: "situated above, upper", part: "Adjective", gender: :neuter },
  "nisi" => { meaning: "if not, unless", part: "Conjunction" },
  "nī" => { meaning: "if not, unless", part: "Conjunction" },
  "teneō" => { meaning: "hold, keep", part: "Verb", conjugation: "2nd", forms: ["-ēre", "-uī", "tentum"] },
  "causa" => { meaning: "cause, reason", part: "Noun", gender: :feminine, declension: "1st", forms: ["-ae"] },
  "sequor" => { meaning: "follow", part: "Verb", type: "Deponent", forms: ["sequī", "secūtus sum"] },
  "crēdō" => { meaning: "believe", part: "Verb", conjugation: "3rd -ō", forms: ["crēdere", "crēdidī", "crēditum"] },
  "accipiō" => { meaning: "receive", part: "Verb", conjugation: "3rd -iō", forms: ["-cipere", "-cēpī", "-ceptum"] },
  "virtus" => { meaning: "valor, manliness, virtue", part: "Noun", gender: :feminine, declension: "3rd", category: "Personality Traits/Characteristics" },
  "ante" => { meaning: "before, in front of", part: "Preposition", category: "Time" },
  "quaero" => { meaning: "seek, inquire", part: "Verb", conjugation: "3rd", category: "Education/Knowledge" },
  "mitto" => { meaning: "send, let go", part: "Verb", conjugation: "3rd", category: "Verbs of Compelling/Directing" },
  "vis" => { meaning: "force; (acc.) vim, (abl.) vi; (pl.) vires, strength", part: "Noun", gender: :feminine, declension: "3rd", category: "War and Peace" },
  "amor" => { meaning: "love", part: "Noun", gender: :masculine, declension: "3rd", category: "Love" },
  "caelum" => { meaning: "sky, heavens", part: "Noun", gender: :neuter, declension: "2nd", category: "Air and Fire" },
  "sub" => { meaning: "under, close to", part: "Preposition", category: "Place" },
  "nox" => { meaning: "night", part: "Noun", gender: :feminine, declension: "3rd", category: "Lengths of Time" },
  "ita" => { meaning: "thus, so", part: "Adverb", category: "Conjunctions/Adverbs" },
  "regnum" => { meaning: "kingship, kingdom", part: "Noun", gender: :neuter, declension: "2nd", category: "Geography" },
  "populus" => { meaning: "people", part: "Noun", gender: :masculine, declension: "2nd", category: "The City" },
  "autem" => { meaning: "moreover, but, however", part: "Conjunction", category: "Conjunctions/Adverbs" },
  "caput" => { meaning: "head", part: "Noun", gender: :neuter, declension: "3rd", category: "The Body" },
  "mare" => { meaning: "sea", part: "Noun", gender: :neuter, declension: "3rd", category: "Earth and Water" },
   "quidam" => { meaning: "a certain one, someone", part: "Pronoun", category: "Pronouns/Interrogatives" },
  "quaedam" => { meaning: "a certain one, someone", part: "Pronoun", category: "Pronouns/Interrogatives" },
  "quoddam" => { meaning: "a certain one, someone", part: "Pronoun", category: "Pronouns/Interrogatives" },
  "mater" => { meaning: "mother", part: "Noun", gender: :feminine, declension: "3rd", category: "The Household" },
  "pro" => { meaning: "for, on behalf of, in proportion to", part: "Preposition", category: "Non-Directional Prepositions" },
  "quisquis" => { meaning: "whoever, whichever", part: "Pronoun", category: "Pronouns/Interrogatives" },
  "quidquid" => { meaning: "whoever, whichever", part: "Pronoun", category: "Pronouns/Interrogatives" },
  "vos" => { meaning: "you (pl.)", part: "Adjective", declension: "1st and 2nd", category: "Pronouns/Interrogatives" },
  "capio" => { meaning: "seize", part: "Verb", conjugation: "3rd -iō" },
  "capere" => { meaning: "seize", part: "Verb", conjugation: "3rd -iō" },
  "cēpī" => { meaning: "seize", part: "Verb", conjugation: "3rd -iō" },
  "captum" => { meaning: "seize", part: "Verb", conjugation: "3rd -iō" },
  "quia" => { meaning: "because", part: "Conjunction" },
  "duco" => { meaning: "lead; uxorem ducere, marry", part: "Verb", conjugation: "3rd -ō" },
  "ducere" => { meaning: "lead; uxorem ducere, marry", part: "Verb", conjugation: "3rd -ō" },
  "duxī" => { meaning: "lead; uxorem ducere, marry", part: "Verb", conjugation: "3rd -ō" },
  "ductum" => { meaning: "lead; uxorem ducere, marry", part: "Verb", conjugation: "3rd -ō" },
  "ergo" => { meaning: "therefore", part: "Conjunction" },
  "nomen" => { meaning: "name", part: "Noun", gender: :neuter, declension: "3rd" },
  "nominis" => { meaning: "name", part: "Noun", gender: :neuter, declension: "3rd" },
  "quidem" => { meaning: "certainly, at least", part: "Adverb", category: "Conjunctions/Adverbs" },
  "miser" => { meaning: "wretched, pitiable", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "misera" => { meaning: "wretched, pitiable", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "miserum" => { meaning: "wretched, pitiable", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "fortūna" => { meaning: "fortune", part: "Noun", declension: "1st", gender: :feminine },
  "novus" => { meaning: "new", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "nova" => { meaning: "new", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "novum" => { meaning: "new", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "gravis" => { meaning: "heavy, serious", part: "Adjective", declension: "3rd", gender: :masculine_feminine },
  "grave" => { meaning: "heavy, serious", part: "Adjective", declension: "3rd", gender: :neuter },
  "vel" => { meaning: "or else, or; even; vel ... vel: either … or", part: "Conjunction", category: "Conjunctions/Adverbs" },
  "longus" => { meaning: "long, far", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "longa" => { meaning: "long, far", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "longum" => { meaning: "long, far", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "parvus" => { meaning: "small", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "parva" => { meaning: "small", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "parvum" => { meaning: "small", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "relinquō" => { meaning: "abandon", part: "Verb", conjugation: "3rd", tense: "-ō", category: "Motion" },
  "relinquere" => { meaning: "abandon", part: "Verb", conjugation: "3rd", tense: "-ō", category: "Motion" },
  "relinquī" => { meaning: "abandon", part: "Verb", conjugation: "3rd", tense: "-ō", category: "Motion" },
  "relictum" => { meaning: "abandon", part: "Verb", conjugation: "3rd", tense: "-ō", category: "Motion" },
  "saepe" => { meaning: "often", part: "Adverb", category: "Time" },
   "fīō" => { meaning: "become, happen, be done", part: "Verb", irregular: true, category: "Life and Being" },
  "fierī" => { meaning: "become, happen, be done", part: "Verb", irregular: true, category: "Life and Being" },
  "factus sum" => { meaning: "become, happen, be done", part: "Verb", irregular: true, category: "Life and Being" },
  "ōs" => { meaning: "mouth, face", part: "Noun", declension: "3rd", gender: :neuter },
  "ōris" => { meaning: "mouth, face", part: "Noun", declension: "3rd", gender: :neuter },
  "alter" => { meaning: "other of two", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "altera" => { meaning: "other of two", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "alterum" => { meaning: "other of two", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "semper" => { meaning: "always, ever", part: "Adverb" },
  "deinde" => { meaning: "then, next", part: "Adverb" },
  "dein" => { meaning: "then, next", part: "Adverb" },
  "ignis" => { meaning: "fire", part: "Noun", declension: "3rd", gender: :masculine },
  "modo" => { meaning: "just, just now; now ... now, at one moment ... at another, sometimes ... sometimes", part: "Adverb" },
  "timeo" => { meaning: "to fear, to dread", part: "Verb", conjugation: "2nd" },
  "timere" => { meaning: "to fear, to dread", part: "Verb", conjugation: "2nd" },
  "timeui" => { meaning: "to fear, to dread", part: "Verb", conjugation: "2nd" },
  "scelus" => { meaning: "crime, sin", part: "Noun", declension: "3rd", gender: :neuter },
  "debeo" => { meaning: "owe, be obliged", part: "Verb", conjugation: "2nd" },
  "debere" => { meaning: "owe, be obliged", part: "Verb", conjugation: "2nd" },
  "debuī" => { meaning: "owe, be obliged", part: "Verb", conjugation: "2nd" },
  "debitum" => { meaning: "owe, be obliged", part: "Verb", conjugation: "2nd" },
  "vīvō" => { meaning: "live", part: "Verb", conjugation: "3rd" },
  "vīvere" => { meaning: "live", part: "Verb", conjugation: "3rd" },
  "vīxī" => { meaning: "live", part: "Verb", conjugation: "3rd" },
  "vīctum" => { meaning: "live", part: "Verb", conjugation: "3rd" },
  "fātum" => { meaning: "fate; death", part: "Noun", declension: "2nd", gender: :neuter },
  "vocō" => { meaning: "call", part: "Verb", conjugation: "1st" },
  "vocāre" => { meaning: "call", part: "Verb", conjugation: "1st" },
  "altus" => { meaning: "high, lofty; deep", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "alta" => { meaning: "high, lofty; deep", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "altum" => { meaning: "high, lofty; deep", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "parō" => { meaning: "prepare, acquire; ready", part: "Verb", conjugation: "1st" },
  "parāre" => { meaning: "prepare, acquire; ready", part: "Verb", conjugation: "1st" },
  "parātus" => { meaning: "ready", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "parāta" => { meaning: "ready", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "parātum" => { meaning: "ready", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "mīles" => { meaning: "soldier", part: "Noun", declension: "3rd", gender: :masculine },
  "medius" => { meaning: "middle, central", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "media" => { meaning: "middle, central", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "medium" => { meaning: "middle, central", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "inquam" => { meaning: "say (used with direct speech)", part: "Verb", irregular: true },
  "inquis" => { meaning: "say (used with direct speech)", part: "Verb", irregular: true },
  "inquit" => { meaning: "say (used with direct speech)", part: "Verb", irregular: true },
  "inquiunt" => { meaning: "say (used with direct speech)", part: "Verb", irregular: true },
  "post" => { meaning: "after", part: "Preposition" },
  "audiō" => { meaning: "hear, listen to", part: "Verb", conjugation: "4th" },
  "audīre" => { meaning: "hear, listen to", part: "Verb", conjugation: "4th" },
  "audīvī" => { meaning: "hear, listen to", part: "Verb", conjugation: "4th" },
  "audiī" => { meaning: "hear, listen to", part: "Verb", conjugation: "4th" },
  "audītum" => { meaning: "hear, listen to", part: "Verb", conjugation: "4th" },
  "putō" => { meaning: "think, suppose", part: "Verb", conjugation: "1st" },
  "putāre" => { meaning: "think, suppose", part: "Verb", conjugation: "1st" },
  "annus" => { meaning: "year", part: "Noun", declension: "2nd", gender: :masculine },
  "stō" => { meaning: "stand", part: "Verb", conjugation: "1st" },
  "stāre" => { meaning: "stand", part: "Verb", conjugation: "1st" },
  "stetī" => { meaning: "stand", part: "Verb", conjugation: "1st" },
  "statum" => { meaning: "stand", part: "Verb", conjugation: "1st" },
  "vōx" => { meaning: "voice, utterance", part: "Noun", declension: "3rd", gender: :feminine },
  "vōcis" => { meaning: "voice, utterance", part: "Noun", declension: "3rd", gender: :feminine },
  "genus" => { meaning: "origin, lineage, kind", part: "Noun", declension: "3rd", gender: :neuter },
  "generis" => { meaning: "origin, lineage, kind", part: "Noun", declension: "3rd", gender: :neuter },
  "referō" => { meaning: "bring back; report", part: "Verb", irregular: true },
  "referre" => { meaning: "bring back; report", part: "Verb", irregular: true },
  "rettulī" => { meaning: "bring back; report", part: "Verb", irregular: true },
  "relātum" => { meaning: "bring back; report", part: "Verb", irregular: true },
  "sciō" => { meaning: "know", part: "Verb", conjugation: "4th" },
  "scīre" => { meaning: "know", part: "Verb", conjugation: "4th" },
  "scīvī" => { meaning: "know", part: "Verb", conjugation: "4th" },
  "scītum" => { meaning: "know", part: "Verb", conjugation: "4th" },
  "mēns" => { meaning: "mind", part: "Noun", declension: "3rd", gender: :feminine },
  "mentis" => { meaning: "mind", part: "Noun", declension: "3rd", gender: :feminine },
  "reddō" => { meaning: "return, give back", part: "Verb", conjugation: "3rd" },
  "reddere" => { meaning: "return, give back", part: "Verb", conjugation: "3rd" },
  "reddidī" => { meaning: "return, give back", part: "Verb", conjugation: "3rd" },
  "redditum" => { meaning: "return, give back", part: "Verb", conjugation: "3rd" },
  "licet" => { meaning: "it is permitted", part: "Verb", impersonal: true },
  "licēre" => { meaning: "it is permitted", part: "Verb", impersonal: true },
  "licuit" => { meaning: "it is permitted", part: "Verb", impersonal: true },
  "licitum" => { meaning: "it is permitted", part: "Verb", impersonal: true },
  "est" => { meaning: "is", part: "Verb", conjugation: "irregular" },
  "sōlus" => { meaning: "only, alone", part: "Adjective", declension: "1st", gender: :masculine },
  "sōla" => { meaning: "only, alone", part: "Adjective", declension: "1st", gender: :feminine },
  "sōlum" => { meaning: "only, alone", part: "Adjective", declension: "1st", gender: :neuter },
  "fugiō" => { meaning: "flee, escape", part: "Verb", conjugation: "3rd", variation: "iō" },
  "fugere" => { meaning: "flee, escape", part: "Verb", conjugation: "3rd", variation: "iō" },
  "fūgī" => { meaning: "flee, escape", part: "Verb", conjugation: "3rd", variation: "iō" },
  "fugitum" => { meaning: "flee, escape", part: "Verb", conjugation: "3rd", variation: "iō" },
  "ūllus" => { meaning: "any, anyone", part: "Adjective", declension: "1st", gender: :masculine },
  "ūlla" => { meaning: "any, anyone", part: "Adjective", declension: "1st", gender: :feminine },
  "ūllum" => { meaning: "any, anyone", part: "Adjective", declension: "1st", gender: :neuter },
  "nēmō" => { meaning: "no one", part: "Pronoun", gender: :common },
  "nūllīus" => { meaning: "no one", part: "Pronoun", gender: :common },
  "nūllī" => { meaning: "no one", part: "Pronoun", gender: :common },
  "nūllō" => { meaning: "no one", part: "Pronoun", gender: :masculine },
  "nūllā" => { meaning: "no one", part: "Pronoun", gender: :feminine },
  "nātūra" => { meaning: "nature", part: "Noun", declension: "1st", gender: :feminine },
  "nātūrae" => { meaning: "nature", part: "Noun", declension: "1st", gender: :feminine },
  "mōs" => { meaning: "custom, habit", part: "Noun", declension: "3rd", gender: :masculine },
  "mōris" => { meaning: "custom, habit", part: "Noun", declension: "3rd", gender: :masculine },
  "beneficium" => { meaning: "service, kindness", part: "Noun", declension: "2nd", gender: :neuter },
  "beneficiī" => { meaning: "service, kindness", part: "Noun", declension: "2nd", gender: :neuter },
  "pectus" => { meaning: "chest, breast", part: "Noun", declension: "3rd", gender: :neuter },
  "pectoris" => { meaning: "chest, breast", part: "Noun", declension: "3rd", gender: :neuter },
  "fidēs" => { meaning: "trust, faith", part: "Noun", declension: "5th", gender: :feminine },
  "fidēī" => { meaning: "trust, faith", part: "Noun", declension: "5th", gender: :feminine },
  "patior" => { meaning: "permit, endure", part: "Verb", conjugation: "Deponent" },
  "patī" => { meaning: "permit, endure", part: "Verb", conjugation: "Deponent" },
  "passus" => { meaning: "permit, endure", part: "Verb", conjugation: "Deponent" },
  "cūra" => { meaning: "care, concern", part: "Noun", declension: "1st", gender: :feminine },
  "cūrae" => { meaning: "care, concern", part: "Noun", declension: "1st", gender: :feminine },
  "īra" => { meaning: "wrath, anger", part: "Noun", declension: "1st", gender: :feminine },
  "īrae" => { meaning: "wrath, anger", part: "Noun", declension: "1st", gender: :feminine },
  "verbum" => { meaning: "word", part: "Noun", declension: "2nd", gender: :neuter },
  "verbī" => { meaning: "word", part: "Noun", declension: "2nd", gender: :neuter },
  "prope" => { meaning: "near, next; nearly, almost", part: "Preposition" },
  "parēns" => { meaning: "parent", part: "Noun", declension: "3rd" },
  "parentis" => { meaning: "parent", part: "Noun", declension: "3rd" },
  "puer" => { meaning: "boy; slave", part: "Noun", declension: "2nd", gender: :masculine },
  "puerī" => { meaning: "boy; slave", part: "Noun", declension: "2nd", gender: :masculine },
  "moveō" => { meaning: "move", part: "Verb", conjugation: "2nd" },
  "movēre" => { meaning: "move", part: "Verb", conjugation: "2nd" },
  "mōvī" => { meaning: "move", part: "Verb", conjugation: "2nd" },
  "mōtum" => { meaning: "move", part: "Verb", conjugation: "2nd" },
  "dolor" => { meaning: "pain, grief", part: "Noun", declension: "3rd", gender: :masculine },
  "dolōris" => { meaning: "pain, grief", part: "Noun", declension: "3rd", gender: :masculine },
  "gēns" => { meaning: "family, clan", part: "Noun", declension: "3rd", gender: :feminine },
  "gentis" => { meaning: "family, clan", part: "Noun", declension: "3rd", gender: :feminine },
  "modus" => { meaning: "measure, manner, kind", part: "Noun", declension: "2nd", gender: :masculine },
  "modī" => { meaning: "measure, manner, kind", part: "Noun", declension: "2nd", gender: :masculine },
  "via" => { meaning: "way, street", part: "Noun", declension: "1st", gender: :feminine },
  "viae" => { meaning: "way, street", part: "Noun", declension: "1st", gender: :feminine },
  "quisque" => { meaning: "each one, everyone", part: "Pronoun" },
  "quaeque" => { meaning: "each one, everyone", part: "Pronoun" },
  "quidque" => { meaning: "each one, everyone", part: "Pronoun" },
  "amīcus" => { meaning: "friendly; friend", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "amīca" => { meaning: "friendly; friend", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "amīcum" => { meaning: "friendly; friend", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "pēs" => { meaning: "foot", part: "Noun", declension: "3rd", gender: :masculine },
  "pedis" => { meaning: "foot", part: "Noun", declension: "3rd", gender: :masculine },
  "imperium" => { meaning: "command, power", part: "Noun", declension: "2nd", gender: :neuter },
  "imperiī" => { meaning: "command, power", part: "Noun", declension: "2nd", gender: :neuter },
  "labor" => { meaning: "toil, exertion", part: "Noun", gender: :masculine, declension: "3rd" },
  "ingēns" => { meaning: "huge, enormous", part: "Adjective", declension: "3rd" },
  "ingentis" => { meaning: "huge, enormous", part: "Adjective", declension: "3rd" },
  "tālis" => { meaning: "such", part: "Adjective", declension: "3rd" },
  "tāle" => { meaning: "such", part: "Adjective", declension: "3rd" },
  "parum" => { meaning: "too little", part: "Adverb" },
  "apud" => { meaning: "near, in the presence of", part: "Preposition" },
  "oculus" => { meaning: "eye", part: "Noun", declension: "2nd", gender: :masculine },
  "unda" => { meaning: "wave, flowing water, water", part: "Noun", declension: "1st", gender: :feminine },
  "itaque" => { meaning: "and so, therefore", part: "Conjunction" },
  "vultus" => { meaning: "look, expression, face", part: "Noun", declension: "4th", gender: :masculine },
  "cadō" => { meaning: "fall, be killed", part: "Verb", conjugation: "3rd", variant: "-ō" },
  "cadere" => { meaning: "fall, be killed", part: "Verb", conjugation: "3rd", variant: "-ō" },
  "cecidī" => { meaning: "fall, be killed", part: "Verb", conjugation: "3rd", variant: "-ō" },
  "cāsum" => { meaning: "fall, be killed", part: "Verb", conjugation: "3rd", variant: "-ō" },
  "nātus" => { meaning: "son", part: "Noun", declension: "2nd", gender: :masculine },
  "quis" => { meaning: "who? what? which?", part: "Pronoun" },
  "quid" => { meaning: "who? what? which?", part: "Pronoun" },
  "trahō" => { meaning: "drag, draw", part: "Verb", conjugation: "3rd", variant: "-ō" },
  "trahere" => { meaning: "drag, draw", part: "Verb", conjugation: "3rd", variant: "-ō" },
  "trāxī" => { meaning: "drag, draw", part: "Verb", conjugation: "3rd", variant: "-ō" },
  "trāctum" => { meaning: "drag, draw", part: "Verb", conjugation: "3rd", variant: "-ō" },
  "sanguis" => { meaning: "blood", part: "Noun", declension: "3rd", gender: :masculine },
  "sanguinis" => { meaning: "blood", part: "Noun", declension: "3rd", gender: :masculine },
  "metus" => { meaning: "fear, dread", part: "Noun", declension: "4th", gender: :masculine },
  "tantum" => { meaning: "only", part: "Adverb" },
  "tantummodo" => { meaning: "only", part: "Adverb" },
  "cōnsilium" => { meaning: "plan; council, group of advisors", part: "Noun", declension: "2nd", gender: :neuter },
  "coniunx" => { meaning: "spouse, husband, wife", part: "Noun", declension: "3rd", gender: :masculine_feminine },
  "coniugis" => { meaning: "spouse, husband, wife", part: "Noun", declension: "3rd", gender: :masculine_feminine },
  "amō" => { meaning: "to love; amāns -ntis m./f.: lover", part: "Verb", conjugation: "1st" },
  "amāre" => { meaning: "to love; amāns -ntis m./f.: lover", part: "Verb", conjugation: "1st" },
  "levis" => { meaning: "light, trivial", part: "Adjective", declension: "3rd" },
  "leve" => { meaning: "light, trivial", part: "Adjective", declension: "3rd" },
  "duo" => { meaning: "two", part: "Adjective", type: "Numeral" },
  "duae" => { meaning: "two", part: "Adjective", type: "Numeral" },
  "duo" => { meaning: "two", part: "Adjective", type: "Numeral" },
  "ferus" => { meaning: "wild, fierce; fera -ae f.: wild animal", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "fera" => { meaning: "wild, fierce; wild animal", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "ferum" => { meaning: "wild, fierce; fera -ae f.: wild animal", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "poena" => { meaning: "penalty, punishment", part: "Noun", declension: "1st", gender: :feminine },
  "castrum" => { meaning: "fortress, (regularly plural, castra camp)", part: "Noun", declension: "2nd", gender: :neuter },
  "frāter" => { meaning: "brother", part: "Noun", declension: "3rd", gender: :masculine },
  "frātris" => { meaning: "brother", part: "Noun", declension: "3rd", gender: :masculine },
  "haud" => { meaning: "not", part: "Adverb" },
  "malus" => { meaning: "bad, evil", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "mala" => { meaning: "bad, evil", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "malum" => { meaning: "bad, evil", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "iaceō" => { meaning: "lie", part: "Verb", conjugation: "2nd" },
  "iacēre" => { meaning: "lie", part: "Verb", conjugation: "2nd" },
  "iacuī" => { meaning: "lie", part: "Verb", conjugation: "2nd" },
  "līber" => { meaning: "free; līberī (m. pl.): freeborn children", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "lībera" => { meaning: "free; līberī (m. pl.): freeborn children", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "līberum" => { meaning: "free; līberī (m. pl.): freeborn children", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "iter" => { meaning: "journey, route", part: "Noun", declension: "3rd", gender: :neuter },
  "itineris" => { meaning: "journey, route", part: "Noun", declension: "3rd", gender: :neuter },
  "ferrum" => { meaning: "iron, iron weapon or implement", part: "Noun", declension: "2nd", gender: :neuter },
  "spēs" => { meaning: "hope", part: "Noun", declension: "5th", gender: :feminine },
  "speī" => { meaning: "hope", part: "Noun", declension: "5th", gender: :feminine },
  "puella" => { meaning: "girl; girl-friend", part: "Noun", declension: "1st", gender: :feminine },
  "silva" => { meaning: "forest, grove", part: "Noun", declension: "1st", gender: :feminine },
  "bene" => { meaning: "well", part: "Adverb" },
  "fīnis" => { meaning: "end, boundary", part: "Noun", declension: "3rd", gender: :masculine },
  "fīnis" => { meaning: "end, boundary", part: "Noun", declension: "3rd", gender: :masculine },
  "gerō" => { meaning: "bear, manage; bellum gerere, wage war", part: "Verb", conjugation: "3rd -ō" },
  "ne" => { meaning: "interrogative particle attached to the emphatic word in a question", part: "Adverb" },
  "dux" => { meaning: "leader, general", part: "Noun", declension: "3rd", gender: :masculine_feminine },
  "ducis" => { meaning: "leader, general", part: "Noun", declension: "3rd", gender: :masculine_feminine },
  "premō" => { meaning: "press, pursue, overwhelm", part: "Verb", conjugation: "3rd -ō" },
  "dominus" => { meaning: "household master, lord", part: "Noun", declension: "2nd", gender: :masculine },
  "domina" => { meaning: "mistress", part: "Noun", declension: "1st", gender: :feminine },
  "mōns" => { meaning: "mountain", part: "Noun", declension: "3rd", gender: :masculine },
  "montis" => { meaning: "mountain", part: "Noun", declension: "3rd", gender: :masculine },
  "uterque" => { meaning: "each of two", part: "Conjunction" },
  "utraque" => { meaning: "each of two", part: "Conjunction" },
  "utrumque" => { meaning: "each of two", part: "Conjunction" },
  "saevus" => { meaning: "fierce, raging, wrathful", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "saeva" => { meaning: "fierce, raging, wrathful", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "saevum" => { meaning: "fierce, raging, wrathful", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "lītus" => { meaning: "shore", part: "Noun", declension: "3rd", gender: :neuter },
  "lītoris" => { meaning: "shore", part: "Noun", declension: "3rd", gender: :neuter },
  "soleō" => { meaning: "be accustomed", part: "Verb", conjugation: "2nd" },
  "mīlle" => { meaning: "thousand", part: "Adjective", type: "Numeral" },
  "mīlia" => { meaning: "thousand", part: "Adjective", type: "Numeral" },
  "equus" => { meaning: "horse", part: "Noun", declension: "2nd", gender: :masculine },
  "dūrus" => { meaning: "hard, tough, harsh", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "dūra" => { meaning: "hard, tough, harsh", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "dūrum" => { meaning: "hard, tough, harsh", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "cōgō" => { meaning: "drive together; compel", part: "Verb", conjugation: "3rd -ō" },
  "numquam" => { meaning: "never", part: "Adverb" },
  "prīmum" => { meaning: "at first, firstly", part: "Adverb" },
  "morior" => { meaning: "die", part: "Verb", conjugation: "Deponent" },
  "carmen" => { meaning: "song", part: "Noun", declension: "3rd", gender: :neuter },
  "cārminis" => { meaning: "song", part: "Noun", declension: "3rd", gender: :neuter },
  "tēlum" => { meaning: "missile, weapon, spear", part: "Noun", declension: "2nd", gender: :neuter },
  "ratiō" => { meaning: "method, plan, reason", part: "Noun", declension: "3rd", gender: :feminine },
  "ratiōnis" => { meaning: "method, plan, reason", part: "Noun", declension: "3rd", gender: :feminine },
  "umbra" => { meaning: "shade, shadow", part: "Noun", declension: "1st", gender: :feminine },
  "umbrae" => { meaning: "shade, shadow", part: "Noun", declension: "1st", gender: :feminine },
  "ars" => { meaning: "skill", part: "Noun", declension: "3rd", gender: :feminine },
  "artis" => { meaning: "skill", part: "Noun", declension: "3rd", gender: :feminine },
  "tot" => { meaning: "so many", part: "Adverb" },
  "dexter" => { meaning: "right", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "dextra" => { meaning: "right hand", part: "Noun", declension: "1st", gender: :feminine },
  "sīgnum" => { meaning: "sign, standard, mark", part: "Noun", declension: "2nd", gender: :neuter },
  "sīgnī" => { meaning: "sign, standard, mark", part: "Noun", declension: "2nd", gender: :neuter },
  "laetus" => { meaning: "glad, joyful", part: "Adjective", declension: "1st and 2nd", gender: :masculine },
  "laeta" => { meaning: "glad, joyful", part: "Adjective", declension: "1st and 2nd", gender: :feminine },
  "laetum" => { meaning: "glad, joyful", part: "Adjective", declension: "1st and 2nd", gender: :neuter },
  "quālis" => { meaning: "of what kind? what?", part: "Pronoun" },
  "lēx" => { meaning: "law", part: "Noun", declension: "3rd", gender: :feminine },
  "lēgis" => { meaning: "law", part: "Noun", declension: "3rd", gender: :feminine },
  "perīculum" => { meaning: "danger", part: "Noun", declension: "2nd", gender: :neuter },
  "perīculī" => { meaning: "danger", part: "Noun", declension: "2nd", gender: :neuter },
  "nāscor" => { meaning: "be born", part: "Verb", conjugation: "Deponent" },
  "exercitus" => { meaning: "army", part: "Noun", declension: "4th", gender: :masculine },
  "exercitūs" => { meaning: "army", part: "Noun", declension: "4th", gender: :masculine },
  "pereō" => { meaning: "perish, be lost", part: "Verb", conjugation: "Irregular" },
  "ventus" => { meaning: "wind", part: "Noun", declension: "2nd", gender: :masculine },
  "ventī" => { meaning: "wind", part: "Noun", declension: "2nd", gender: :masculine },
  "audeō" => { meaning: "dare, be eager", part: "Verb", conjugation: "2nd" },
  "audēre" => { meaning: "dare, be eager", part: "Verb", conjugation: "2nd" },
  "ausus" => { meaning: "dare, be eager", part: "Verb", conjugation: "2nd" },
  "contrā" => { meaning: "against, opposite", part: "Preposition" },
  "aqua" => { meaning: "water", part: "Noun", declension: "1st", gender: :feminine },
  "aquae" => { meaning: "water", part: "Noun", declension: "1st", gender: :feminine },
  "rapiō" => { meaning: "seize, tear away", part: "Verb", conjugation: "3rd -iō" },
  "rapere" => { meaning: "seize, tear away", part: "Verb", conjugation: "3rd -iō" },
  "rapuī" => { meaning: "seize, tear away", part: "Verb", conjugation: "3rd -iō" },
  "raptum" => { meaning: "seize, tear away", part: "Verb", conjugation: "3rd -iō" },
  "simul" => { meaning: "at the same time", part: "Adverb" },
  "trīstis" => { meaning: "sad, solemn, grim", part: "Adjective", declension: "3rd" },
  "mūnus" => { meaning: "gift, offering; duty, obligation; gladiatorial show", part: "Noun", declension: "3rd", gender: :neuter },
  "mūneris" => { meaning: "gift, offering; duty, obligation; gladiatorial show", part: "Noun", declension: "3rd", gender: :neuter },
  "iuvenis" => { meaning: "youth", part: "Noun", declension: "3rd", gender: :masculine },
  "iuvenis" => { meaning: "youth", part: "Noun", declension: "3rd", gender: :masculine },
  "fāma" => { meaning: "rumor, fame", part: "Noun", declension: "1st", gender: :feminine },
  "fāmae" => { meaning: "rumor, fame", part: "Noun", declension: "1st", gender: :feminine },
  "adsum" => { meaning: "be present", part: "Verb", conjugation: "Irregular" },
  "adesse" => { meaning: "be present", part: "Verb", conjugation: "Irregular" },
  "affuī" => { meaning: "be present", part: "Verb", conjugation: "Irregular" },
  "quisquam" => { meaning: "any (single) person, anyone at all", part: "Pronoun" },
  "quicquam" => { meaning: "any (single) person, anyone at all", part: "Pronoun" },
  "quidquam" => { meaning: "any (single) person, anyone at all", part: "Pronoun" },
  "vērō" => { meaning: "in fact, certainly, without doubt", part: "Adverb" },
  "pār" => { meaning: "equal", part: "Adjective", declension: "3rd" },
  "paris" => { meaning: "equal", part: "Adjective", declension: "3rd" },
  "vester" => { meaning: "your", part: "Adjective", declension: "1st and 2nd" },
  "vestra" => { meaning: "your", part: "Adjective", declension: "1st and 2nd" },
  "vestrum" => { meaning: "your", part: "Adjective", declension: "1st and 2nd" },
  "flūmen" => { meaning: "stream, river", part: "Noun", declension: "3rd", gender: :neuter },
  "flūminis" => { meaning: "stream, river", part: "Noun", declension: "3rd", gender: :neuter },
  "quīcumque" => { meaning: "who-, whatever", part: "Pronoun" },
  "quaecumque" => { meaning: "who-, whatever", part: "Pronoun" },
  "quodcumque" => { meaning: "who-, whatever", part: "Pronoun" },
  "certus" => { meaning: "sure, fixed", part: "Adjective", declension: "1st and 2nd" },
  "certa" => { meaning: "sure, fixed", part: "Adjective", declension: "1st and 2nd" },
  "certum" => { meaning: "sure, fixed", part: "Adjective", declension: "1st and 2nd" },
  "iuvenis" => { meaning: "youth", part: "Noun", declension: "3rd", gender: :masculine },
  "iuvenis" => { meaning: "youth", part: "Noun", declension: "3rd", gender: :masculine },
  "fāma" => { meaning: "rumor, fame", part: "Noun", declension: "1st", gender: :feminine },
  "fāmae" => { meaning: "rumor, fame", part: "Noun", declension: "1st", gender: :feminine },
  "adsum" => { meaning: "be present", part: "Verb", conjugation: "Irregular" },
  "adesse" => { meaning: "be present", part: "Verb", conjugation: "Irregular" },
  "affuī" => { meaning: "be present", part: "Verb", conjugation: "Irregular" },
  "quisquam" => { meaning: "any (single) person, anyone at all", part: "Pronoun" },
  "quicquam" => { meaning: "any (single) person, anyone at all", part: "Pronoun" },
  "quidquam" => { meaning: "any (single) person, anyone at all", part: "Pronoun" },
  "vērō" => { meaning: "in fact, certainly, without doubt", part: "Adverb" },
  "pār" => { meaning: "equal", part: "Adjective", declension: "3rd" },
  "paris" => { meaning: "equal", part: "Adjective", declension: "3rd" },
  "vester" => { meaning: "your", part: "Adjective", declension: "1st and 2nd" },
  "vestra" => { meaning: "your", part: "Adjective", declension: "1st and 2nd" },
  "vestrum" => { meaning: "your", part: "Adjective", declension: "1st and 2nd" },
  "flūmen" => { meaning: "stream, river", part: "Noun", declension: "3rd", gender: :neuter },
  "flūminis" => { meaning: "stream, river", part: "Noun", declension: "3rd", gender: :neuter },
  "quīcumque" => { meaning: "who-, whatever", part: "Pronoun" },
  "quaecumque" => { meaning: "who-, whatever", part: "Pronoun" },
  "quodcumque" => { meaning: "who-, whatever", part: "Pronoun" },
  "certus" => { meaning: "sure, fixed", part: "Adjective", declension: "1st and 2nd" },
  "certa" => { meaning: "sure, fixed", part: "Adjective", declension: "1st and 2nd" },
  "certum" => { meaning: "sure, fixed", part: "Adjective", declension: "1st and 2nd" },
  "eques" => { meaning: "horseman, knight", part: "Noun", declension: "3rd", gender: :masculine },
  "equitis" => { meaning: "horseman, knight", part: "Noun", declension: "3rd", gender: :masculine },
  "trādō" => { meaning: "hand over, yield", part: "Verb", conjugation: "3rd -ō" },
  "trādere" => { meaning: "hand over, yield", part: "Verb", conjugation: "3rd -ō" },
  "trādidī" => { meaning: "hand over, yield", part: "Verb", conjugation: "3rd -ō" },
  "trāditum" => { meaning: "hand over, yield", part: "Verb", conjugation: "3rd -ō" },
  "flamma" => { meaning: "flame, fire", part: "Noun", declension: "1st", gender: :feminine },
  "flammae" => { meaning: "flame, fire", part: "Noun", declension: "1st", gender: :feminine },
  "lūx" => { meaning: "light of day", part: "Noun", declension: "3rd", gender: :feminine },
  "lūcis" => { meaning: "light of day", part: "Noun", declension: "3rd", gender: :feminine },
  "unde" => { meaning: "from where", part: "Adverb", category: "Place" },
  "redeō" => { meaning: "go back, return", part: "Verb", conjugation: "Irregular" },
  "redīre" => { meaning: "go back, return", part: "Verb", conjugation: "Irregular" },
  "rediī" => { meaning: "go back, return", part: "Verb", conjugation: "Irregular" },
  "reditum" => { meaning: "go back, return", part: "Verb", conjugation: "Irregular" },
  "sentiō" => { meaning: "perceive, feel, hear, see", part: "Verb", conjugation: "4th" },
  "sentīre" => { meaning: "perceive, feel, hear, see", part: "Verb", conjugation: "4th" },
  "sēnsī" => { meaning: "perceive, feel, hear, see", part: "Verb", conjugation: "4th" },
  "sēnsum" => { meaning: "perceive, feel, hear, see", part: "Verb", conjugation: "4th" },
  "aurum" => { meaning: "gold", part: "Noun", declension: "2nd", gender: :neuter },
  "aurī" => { meaning: "gold", part: "Noun", declension: "2nd", gender: :neuter },
  "quō" => { meaning: "for which reason; to or in what place; to what end, for what purpose?", part: "Adverb", category: "Pronouns/Interrogatives" },
  "saxum" => { meaning: "rock, cliff, crag", part: "Noun", declension: "2nd", gender: :neuter },
  "saxī" => { meaning: "rock, cliff, crag", part: "Noun", declension: "2nd", gender: :neuter },
  "ve" => { meaning: "or (postpositive enclitic)", part: "Conjunction", category: "Conjunctions/Adverbs" },
  "aetās" => { meaning: "age, time of life", part: "Noun", declension: "3rd", gender: :feminine },
  "aetātis" => { meaning: "age, time of life", part: "Noun", declension: "3rd", gender: :feminine },
  "fēlīx" => { meaning: "lucky", part: "Adjective", declension: "3rd" },
  "fēlīcis" => { meaning: "lucky", part: "Adjective", declension: "3rd" },
  "loquor" => { meaning: "speak, talk", part: "Verb", conjugation: "Deponent" },
  "loquī" => { meaning: "speak, talk", part: "Verb", conjugation: "Deponent" },
  "locūtus" => { meaning: "speak, talk", part: "Verb", conjugation: "Deponent" },
  "locūtus sum" => { meaning: "speak, talk", part: "Verb", conjugation: "Deponent" },
  "quantus" => { meaning: "how great?; of what size, amount, etc.; what amount?; which amount; quantī, at what price?; at which price", part: "Pronoun", category: "Pronouns/Interrogatives" },
  "quanta" => { meaning: "how great?; of what size, amount, etc.; what amount?; which amount; quantī, at what price?; at which price", part: "Pronoun", category: "Pronouns/Interrogatives" },
  "quantum" => { meaning: "how great?; of what size, amount, etc.; what amount?; which amount; quantī, at what price?; at which price", part: "Pronoun", category: "Pronouns/Interrogatives" },
  "coepī" => { meaning: "begin", part: "Verb", conjugation: "Irregular" },
  "coepisse" => { meaning: "begin", part: "Verb", conjugation: "Irregular" },
  "coeptus" => { meaning: "begin", part: "Verb", conjugation: "Irregular" },
  "igitur" => { meaning: "therefore", part: "Conjunction" },
  "iūs" => { meaning: "right, justice, law", part: "Noun", declension: "3rd", gender: :neuter },
  "iūris" => { meaning: "right, justice, law", part: "Noun", declension: "3rd", gender: :neuter },
  "mūtō" => { meaning: "change", part: "Verb", conjugation: "1st" },
  "mūtāre" => { meaning: "change", part: "Verb", conjugation: "1st" },
  "inveniō" => { meaning: "find; discover", part: "Verb", conjugation: "4th" },
  "invenīre" => { meaning: "find; discover", part: "Verb", conjugation: "4th" },
  "invēnī" => { meaning: "find; discover", part: "Verb", conjugation: "4th" },
  "inventum" => { meaning: "find; discover", part: "Verb", conjugation: "4th" },
  "prīnceps" => { meaning: "first, chief; leader, person in charge", part: "Adjective", declension: "3rd" },
  "prīncipis" => { meaning: "first, chief; leader, person in charge", part: "Adjective", declension: "3rd" },
  "ops" => { meaning: "assistance, resources", part: "Noun", declension: "3rd", gender: :feminine },
  "opis" => { meaning: "assistance, resources", part: "Noun", declension: "3rd", gender: :feminine },
  "recipiō" => { meaning: "take back, receive; sē recipere, betake oneself, go", part: "Verb", conjugation: "3rd -iō" },
  "recipere" => { meaning: "take back, receive; sē recipere, betake oneself, go", part: "Verb", conjugation: "3rd -iō" },
  "recēpī" => { meaning: "take back, receive; sē recipere, betake oneself, go", part: "Verb", conjugation: "3rd -iō" },
  "receptum" => { meaning: "take back, receive; sē recipere, betake oneself, go", part: "Verb", conjugation: "3rd -iō" },
  "sōl" => { meaning: "sun", part: "Noun", declension: "3rd", gender: :masculine },
  "sōlis" => { meaning: "sun", part: "Noun", declension: "3rd", gender: :masculine },
  "cōnsul" => { meaning: "consul", part: "Noun", declension: "3rd", gender: :masculine },
  "cōnsulis" => { meaning: "consul", part: "Noun", declension: "3rd", gender: :masculine },
  "orbis" => { meaning: "circle; orbis terrārum: world", part: "Noun", declension: "3rd", gender: :masculine },
  "turba" => { meaning: "crowd, uproar", part: "Noun", declension: "1st", gender: :feminine },
  "turbae" => { meaning: "crowd, uproar", part: "Noun", declension: "1st", gender: :feminine },
  "ager" => { meaning: "field", part: "Noun", declension: "2nd", gender: :masculine },
  "agrī" => { meaning: "field", part: "Noun", declension: "2nd", gender: :masculine },
  "solvō" => { meaning: "release, set sail", part: "Verb", conjugation: "2nd" },
  "solvere" => { meaning: "release, set sail", part: "Verb", conjugation: "2nd" },
  "solvī" => { meaning: "release, set sail", part: "Verb", conjugation: "2nd" },
  "solūtum" => { meaning: "release, set sail", part: "Verb", conjugation: "2nd" },
  "vitium" => { meaning: "flaw, fault, crime", part: "Noun", declension: "2nd", gender: :neuter },
  "vitī" => { meaning: "flaw, fault, crime", part: "Noun", declension: "2nd", gender: :neuter },
  "vulnus" => { meaning: "wound", part: "Noun", declension: "3rd", gender: :neuter },
  "vulneris" => { meaning: "wound", part: "Noun", declension: "3rd", gender: :neuter },
  "inde" => { meaning: "from there, from then", part: "Adverb" },
  "senātus" => { meaning: "senate", part: "Noun", declension: "4th", gender: :masculine },
  "senātūs" => { meaning: "senate", part: "Noun", declension: "4th", gender: :masculine },
  "ūtor" => { meaning: "use, consume, employ (+ abl.)", part: "Verb", type: "Deponent" },
  "ūtī" => { meaning: "use, consume, employ (+ abl.)", part: "Verb", type: "Deponent" },
  "ūsus" => { meaning: "use, consume, employ (+ abl.)", part: "Verb", type: "Deponent" },
  "cōpia" => { meaning: "abundance; (pl.) troops", part: "Noun", declension: "1st", gender: :feminine },
  "cōpiae" => { meaning: "abundance; (pl.) troops", part: "Noun", declension: "1st", gender: :feminine },
  "opus" => { meaning: "work", part: "Noun", declension: "3rd", gender: :neuter },
  "operis" => { meaning: "work", part: "Noun", declension: "3rd", gender: :neuter },
  "colō" => { meaning: "inhabit, cultivate", part: "Verb", conjugation: "3rd -ō" },
  "colere" => { meaning: "inhabit, cultivate", part: "Verb", conjugation: "3rd -ō" },
  "coluī" => { meaning: "inhabit, cultivate", part: "Verb", conjugation: "3rd -ō" },
  "cultum" => { meaning: "inhabit, cultivate", part: "Verb", conjugation: "3rd -ō" },
  "vōtum" => { meaning: "solemn promise, vow; hope", part: "Noun", declension: "2nd", gender: :neuter },
  "vōtī" => { meaning: "solemn promise, vow; hope", part: "Noun", declension: "2nd", gender: :neuter },
  "iugum" => { meaning: "yoke; ridge, chain of hills", part: "Noun", declension: "2nd", gender: :neuter },
  "iugī" => { meaning: "yoke; ridge, chain of hills", part: "Noun", declension: "2nd", gender: :neuter },
  "quā" => { meaning: "where, how", part: "Pronoun" },
  "tellus" => { meaning: "earth", part: "Noun", declension: "3rd", gender: :feminine },
  "tellūris" => { meaning: "earth", part: "Noun", declension: "3rd", gender: :feminine },
  "numerus" => { meaning: "number, amount", part: "Noun", declension: "2nd", gender: :masculine },
  "numerī" => { meaning: "number, amount", part: "Noun", declension: "2nd", gender: :masculine },
  "cōgnōscō" => { meaning: "learn, understand", part: "Verb", conjugation: "3rd -ō" },
  "cōgnōscere" => { meaning: "learn, understand", part: "Verb", conjugation: "3rd -ō" },
  "cōgnōvī" => { meaning: "learn, understand", part: "Verb", conjugation: "3rd -ō" },
  "cōgnitum" => { meaning: "learn, understand", part: "Verb", conjugation: "3rd -ō" },
  "victor" => { meaning: "conqueror", part: "Noun", declension: "3rd", gender: :masculine },
  "victōris" => { meaning: "conqueror", part: "Noun", declension: "3rd", gender: :masculine },
  "satis" => { meaning: "enough, sufficient, sufficiently", part: "Adverb" },
  "sat" => { meaning: "enough, sufficient, sufficiently", part: "Adverb" },
  "patria" => { meaning: "fatherland, country", part: "Noun", declension: "1st", gender: :feminine },
  "patriae" => { meaning: "fatherland, country", part: "Noun", declension: "1st", gender: :feminine },
  "seu" => { meaning: "whether; seu ... seu: whether ... or", part: "Conjunction" },
  "cāsus" => { meaning: "a fall; chance, accident", part: "Noun", declension: "4th", gender: :masculine },
  "cāsūs" => { meaning: "a fall; chance, accident", part: "Noun", declension: "4th", gender: :masculine },
  "frangō" => { meaning: "break, shatter", part: "Verb", conjugation: "3rd -ō" },
  "frangere" => { meaning: "break, shatter", part: "Verb", conjugation: "3rd -ō" },
  "frēgī" => { meaning: "break, shatter", part: "Verb", conjugation: "3rd -ō" },
  "frāctum" => { meaning: "break, shatter", part: "Verb", conjugation: "3rd -ō" },
  "cīvitās" => { meaning: "citizenship, state", part: "Noun", declension: "3rd", gender: :feminine },
  "cīvitātis" => { meaning: "citizenship, state", part: "Noun", declension: "3rd", gender: :feminine },
  "nōscō" => { meaning: "learn, know", part: "Verb", conjugation: "3rd -ō" },
  "nōscere" => { meaning: "learn, know", part: "Verb", conjugation: "3rd -ō" },
  "nōvī" => { meaning: "learn, know", part: "Verb", conjugation: "3rd -ō" },
  "nōtum" => { meaning: "learn, know", part: "Verb", conjugation: "3rd -ō" },
  "proelium" => { meaning: "battle", part: "Noun", declension: "2nd", gender: :neuter },
  "proelī" => { meaning: "battle", part: "Noun", declension: "2nd", gender: :neuter },
  "ēripiō" => { meaning: "snatch away, rescue, save", part: "Verb", conjugation: "3rd -iō" },
  "ēripere" => { meaning: "snatch away, rescue, save", part: "Verb", conjugation: "3rd -iō" },
  "ēripuī" => { meaning: "snatch away, rescue, save", part: "Verb", conjugation: "3rd -iō" },
  "ēreptum" => { meaning: "snatch away, rescue, save", part: "Verb", conjugation: "3rd -iō" },
  "mundus" => { meaning: "world, universe, heavens", part: "Noun", declension: "2nd", gender: :masculine },
  "mundī" => { meaning: "world, universe, heavens", part: "Noun", declension: "2nd", gender: :masculine },
  "cursus" => { meaning: "course, advance", part: "Noun", declension: "4th", gender: :masculine },
  "cursūs" => { meaning: "course, advance", part: "Noun", declension: "4th", gender: :masculine },
  "vix" => { meaning: "scarcely", part: "Adverb" },
  "nāvis" => { meaning: "ship", part: "Noun", declension: "3rd", gender: :feminine },
  "nāvīs" => { meaning: "ship", part: "Noun", declension: "3rd", gender: :feminine },
  "lacrima" => { meaning: "tear", part: "Noun", declension: "1st", gender: :feminine },
  "lacrimae" => { meaning: "tear", part: "Noun", declension: "1st", gender: :feminine },
  "hūmānus" => { meaning: "human", part: "Adjective", declension: "1st and 2nd" },
  "hūmāna" => { meaning: "human", part: "Adjective", declension: "1st and 2nd" },
  "hūmānum" => { meaning: "human", part: "Adjective", declension: "1st and 2nd" },
  "mollis" => { meaning: "soft, yielding, gentle", part: "Adjective", declension: "3rd" },
  "mollis" => { meaning: "soft, yielding, gentle", part: "Adjective", declension: "3rd" },
  "maneō" => { meaning: "remain", part: "Verb", conjugation: "2nd" },
  "manēre" => { meaning: "remain", part: "Verb", conjugation: "2nd" },
  "mānsī" => { meaning: "remain", part: "Verb", conjugation: "2nd" },
  "mānsum" => { meaning: "remain", part: "Verb", conjugation: "2nd" },
  "āgmen" => { meaning: "line of march", part: "Noun", declension: "3rd", gender: :neuter },
  "āgminis" => { meaning: "line of march", part: "Noun", declension: "3rd", gender: :neuter },
  "sīdus" => { meaning: "star, constellation", part: "Noun", declension: "3rd", gender: :neuter },
  "sīderis" => { meaning: "star, constellation", part: "Noun", declension: "3rd", gender: :neuter },
  "glōria" => { meaning: "glory, fame", part: "Noun", declension: "1st", gender: :feminine },
  "glōriae" => { meaning: "glory, fame", part: "Noun", declension: "1st", gender: :feminine },
  "diū" => { meaning: "for a long time", part: "Adverb" },
  "sīve" => { meaning: "whether; sīve ... sīve: whether ... or", part: "Conjunction" },
  "tamquam" => { meaning: "so as, just as", part: "Adverb" },
  "fuga" => { meaning: "flight, route", part: "Noun", declension: "1st", gender: :feminine },
  "fugae" => { meaning: "flight, route", part: "Noun", declension: "1st", gender: :feminine },
  "tūtus" => { meaning: "safe, protected", part: "Adjective", declension: "1st and 2nd" },
  "tūta" => { meaning: "safe, protected", part: "Adjective", declension: "1st and 2nd" },
  "tūtum" => { meaning: "safe, protected", part: "Adjective", declension: "1st and 2nd" },
  "auris" => { meaning: "ear", part: "Noun", declension: "3rd", gender: :feminine },
  "auris" => { meaning: "ear", part: "Noun", declension: "3rd", gender: :feminine },
  "aliēnus" => { meaning: "foreign, strange", part: "Adjective", declension: "1st and 2nd" },
  "aliēna" => { meaning: "foreign, strange", part: "Adjective", declension: "1st and 2nd" },
  "aliēnum" => { meaning: "foreign, strange", part: "Adjective", declension: "1st and 2nd" },
  "hūc" => { meaning: "to this place", part: "Adverb" },
  "taceō" => { meaning: "be silent", part: "Verb", conjugation: "2nd" },
  "tacēre" => { meaning: "be silent", part: "Verb", conjugation: "2nd" },
  "tacuī" => { meaning: "be silent", part: "Verb", conjugation: "2nd" },
  "tacitum" => { meaning: "be silent", part: "Verb", conjugation: "2nd" },
  "legiō" => { meaning: "legion", part: "Noun", declension: "3rd", gender: :feminine },
  "legiōnis" => { meaning: "legion", part: "Noun", declension: "3rd", gender: :feminine },
  "ostendō" => { meaning: "show, hold out", part: "Verb", conjugation: "3rd" },
  "ostendere" => { meaning: "show, hold out", part: "Verb", conjugation: "3rd" },
  "ostendī" => { meaning: "show, hold out", part: "Verb", conjugation: "3rd" },
  "ostentum" => { meaning: "show, hold out", part: "Verb", conjugation: "3rd" },
  "socius" => { meaning: "friendly, allied; partner, comrade", part: "Adjective", declension: "1st and 2nd" },
  "socii" => { meaning: "friendly, allied; partner, comrade", part: "Adjective", declension: "1st and 2nd" },
  "prōsum" => { meaning: "be of use, do good, help (+ dat.)", part: "Verb", conjugation: "Irregular" },
  "prodesse" => { meaning: "be of use, do good, help (+ dat.)", part: "Verb", conjugation: "Irregular" },
  "profuī" => { meaning: "be of use, do good, help (+ dat.)", part: "Verb", conjugation: "Irregular" },
  "āra" => { meaning: "altar", part: "Noun", declension: "1st", gender: :feminine },
  "ārae" => { meaning: "altar", part: "Noun", declension: "1st", gender: :feminine },
  "lūmen" => { meaning: "light", part: "Noun", declension: "3rd", gender: :neuter },
  "luminis" => { meaning: "light", part: "Noun", declension: "3rd", gender: :neuter },
  "tegō" => { meaning: "cover, conceal", part: "Verb", conjugation: "3rd" },
  "tegere" => { meaning: "cover, conceal", part: "Verb", conjugation: "3rd" },
  "tēxī" => { meaning: "cover, conceal", part: "Verb", conjugation: "3rd" },
  "tēctum" => { meaning: "cover, conceal", part: "Verb", conjugation: "3rd" },
  "turpis" => { meaning: "ugly, unsightly; disgraceful", part: "Adjective", declension: "3rd" },
  "voluptās" => { meaning: "pleasure, enjoyment", part: "Noun", declension: "3rd", gender: :feminine },
  "voluptātis" => { meaning: "pleasure, enjoyment", part: "Noun", declension: "3rd", gender: :feminine },
  "adhūc" => { meaning: "thus far, to this point", part: "Adverb" },
  "grātia" => { meaning: "favor, influence, gratitude", part: "Noun", declension: "1st", gender: :feminine },
  "grātiae" => { meaning: "favor, influence, gratitude", part: "Noun", declension: "1st", gender: :feminine },
  "iniūria" => { meaning: "injustice, wrong, affront", part: "Noun", declension: "1st", gender: :feminine },
  "iniūriae" => { meaning: "injustice, wrong, affront", part: "Noun", declension: "1st", gender: :feminine },
  "latus" => { meaning: "side, flank", part: "Noun", declension: "3rd", gender: :neuter },
  "lateris" => { meaning: "side, flank", part: "Noun", declension: "3rd", gender: :neuter },
  "dulcis" => { meaning: "sweet", part: "Adjective", declension: "3rd" },
  "dulce" => { meaning: "sweet", part: "Adjective", declension: "3rd" },
  "postquam" => { meaning: "after", part: "Conjunction" },
  "extrēmus" => { meaning: "farthest, situated at the end or tip, extreme", part: "Adjective", declension: "1st and 2nd" },
  "extrēma" => { meaning: "farthest, situated at the end or tip, extreme", part: "Adjective", declension: "1st and 2nd" },
  "extrēmum" => { meaning: "farthest, situated at the end or tip, extreme", part: "Adjective", declension: "1st and 2nd" },
  "tēctum" => { meaning: "roof; building, house", part: "Noun", declension: "2nd", gender: :neuter },
  "tēctī" => { meaning: "roof; building, house", part: "Noun", declension: "2nd", gender: :neuter },
  "ingenium" => { meaning: "disposition, ability, talent", part: "Noun", declension: "2nd", gender: :neuter },
  "ingeniī" => { meaning: "disposition, ability, talent", part: "Noun", declension: "2nd", gender: :neuter },
  "pāx" => { meaning: "peace", part: "Noun", declension: "3rd", gender: :feminine },
  "pācis" => { meaning: "peace", part: "Noun", declension: "3rd", gender: :feminine },
  "canō" => { meaning: "sing", part: "Verb", conjugation: "3rd", form: :first_person_singular },
  "canere" => { meaning: "sing", part: "Verb", conjugation: "3rd", form: :infinitive },
  "cecinī" => { meaning: "sing", part: "Verb", conjugation: "3rd", form: :third_person_singular_past },
  "cantum" => { meaning: "sing", part: "Verb", conjugation: "3rd", form: :supine },
  "iuvō" => { meaning: "help, assist; please, delight", part: "Verb", conjugation: "1st", form: :first_person_singular },
  "iuvāre" => { meaning: "help, assist; please, delight", part: "Verb", conjugation: "1st", form: :infinitive },
  "iūvī" => { meaning: "help, assist; please, delight", part: "Verb", conjugation: "1st", form: :first_person_singular_past },
  "iūtum" => { meaning: "help, assist; please, delight", part: "Verb", conjugation: "1st", form: :supine },
  "campus" => { meaning: "plain, field", part: "Noun", declension: "2nd", gender: :masculine },
  "campī" => { meaning: "plain, field", part: "Noun", declension: "2nd", gender: :masculine },
  "claudō" => { meaning: "close, shut", part: "Verb", conjugation: "3rd", form: :first_person_singular },
  "claudere" => { meaning: "close, shut", part: "Verb", conjugation: "3rd", form: :infinitive },
  "clausī" => { meaning: "close, shut", part: "Verb", conjugation: "3rd", form: :first_person_singular_past },
  "clausum" => { meaning: "close, shut", part: "Verb", conjugation: "3rd", form: :supine },
  "doceō" => { meaning: "teach", part: "Verb", conjugation: "2nd", form: :first_person_singular },
  "docēre" => { meaning: "teach", part: "Verb", conjugation: "2nd", form: :infinitive },
  "docuī" => { meaning: "teach", part: "Verb", conjugation: "2nd", form: :first_person_singular_past },
  "doctum" => { meaning: "teach", part: "Verb", conjugation: "2nd", form: :supine },
  "excipiō" => { meaning: "take out", part: "Verb", conjugation: "3rd", form: :first_person_singular },
  "excipere" => { meaning: "take out", part: "Verb", conjugation: "3rd", form: :infinitive },
  "excēpī" => { meaning: "take out", part: "Verb", conjugation: "3rd", form: :first_person_singular_past },
  "exceptum" => { meaning: "take out", part: "Verb", conjugation: "3rd", form: :supine },
  "clārus" => { meaning: "clear, distinguished", part: "Adjective", declension: "1st and 2nd" },
  "clāra" => { meaning: "clear, distinguished", part: "Adjective", declension: "1st and 2nd" },
  "clārum" => { meaning: "clear, distinguished", part: "Adjective", declension: "1st and 2nd" },
  "illīc" => { meaning: "at that place, there", part: "Adverb" },
  "procul" => { meaning: "at a distance", part: "Adverb" },
  "sacer" => { meaning: "holy, sacred", part: "Adjective", declension: "1st and 2nd" },
  "sacra" => { meaning: "holy, sacred", part: "Adjective", declension: "1st and 2nd" },
  "sacrum" => { meaning: "holy, sacred", part: "Adjective", declension: "1st and 2nd" },
  "mora" => { meaning: "delay, hindrance", part: "Noun", declension: "1st", gender: :feminine },
  "morae" => { meaning: "delay, hindrance", part: "Noun", declension: "1st", gender: :feminine },
  "longē" => { meaning: "far, far off", part: "Adverb" },
  "super" => { meaning: "over", part: "Adverb and Prep", usage: "+acc." },
  "errō" => { meaning: "go astray, wander", part: "Verb", conjugation: "1st", form: :first_person_singular },
  "errāre" => { meaning: "go astray, wander", part: "Verb", conjugation: "1st", form: :infinitive },
  "sēdēs" => { meaning: "seat, abode, habitation", part: "Noun", declension: "3rd", gender: :feminine },
  "sēdis" => { meaning: "seat, abode, habitation", part: "Noun", declension: "3rd", gender: :feminine },
  "cūr" => { meaning: "why?", part: "Adverb" },
  "coma" => { meaning: "hair, tresses", part: "Noun", declension: "1st", gender: :feminine },
  "comae" => { meaning: "hair, tresses", part: "Noun", declension: "1st", gender: :feminine },
  "aiō" => { meaning: "say, affirm, say yes; ut āiunt: as they say", part: "Verb", conjugation: "Irregular" },
  "gaudeō" => { meaning: "rejoice", part: "Verb", conjugation: "2nd", form: :first_person_singular },
  "gaudēre" => { meaning: "rejoice", part: "Verb", conjugation: "2nd", form: :infinitive },
  "beātus" => { meaning: "happy, blessed, prosperous, fortunate", part: "Adjective", declension: "1st and 2nd" },
  "beāta" => { meaning: "happy, blessed, prosperous, fortunate", part: "Adjective", declension: "1st and 2nd" },
  "beātum" => { meaning: "happy, blessed, prosperous, fortunate", part: "Adjective", declension: "1st and 2nd" },
  "perveniō" => { meaning: "arrive, reach", part: "Verb", conjugation: "4th", form: :first_person_singular },
  "pervenīre" => { meaning: "arrive, reach", part: "Verb", conjugation: "4th", form: :infinitive },
  "vērus" => { meaning: "true", part: "Adjective", declension: "1st and 2nd" },
  "vēra" => { meaning: "true", part: "Adjective", declension: "1st and 2nd" },
  "vērum" => { meaning: "true", part: "Adjective", declension: "1st and 2nd" },
  "incipiō" => { meaning: "begin", part: "Verb", conjugation: "3rd -iō", form: :first_person_singular },
  "incipere" => { meaning: "begin", part: "Verb", conjugation: "3rd -iō", form: :infinitive },
  "parcō" => { meaning: "spare, be sparing of (+ dat.)", part: "Verb", conjugation: "3rd -ō", form: :first_person_singular },
  "parcere" => { meaning: "spare, be sparing of (+ dat.)", part: "Verb", conjugation: "3rd -ō", form: :infinitive },
  "vestis" => { meaning: "garment, robe, clothing", part: "Noun", declension: "3rd", gender: :feminine },
  "similis" => { meaning: "like, similar", part: "Adjective", declension: "3rd" },
  "simile" => { meaning: "like, similar", part: "Adjective", declension: "3rd" },
  "caedēs" => { meaning: "killing, slaughter", part: "Noun", declension: "3rd", gender: :feminine },
  "ōrdō" => { meaning: "order, rank", part: "Noun", declension: "3rd", gender: :masculine },
  "optō" => { meaning: "choose, select", part: "Verb", conjugation: "1st", form: :first_person_singular },
  "optāre" => { meaning: "choose, select", part: "Verb", conjugation: "1st", form: :infinitive },
  "virgō" => { meaning: "maiden, virgin, girl", part: "Noun", declension: "3rd", gender: :feminine },
  "legō" => { meaning: "gather, choose, read", part: "Verb", conjugation: "3rd -ō", form: :first_person_singular },
  "legere" => { meaning: "gather, choose, read", part: "Verb", conjugation: "3rd -ō", form: :infinitive },
  "aura" => { meaning: "breeze", part: "Noun", declension: "1st", gender: :feminine },
  "impetus" => { meaning: "attack", part: "Noun", declension: "4th", gender: :masculine },
  "fōrma" => { meaning: "shape; beauty", part: "Noun", declension: "1st", gender: :feminine },
  "praestō" => { meaning: "excel, exhibit", part: "Verb", conjugation: "1st", form: :first_person_singular },
  "praestāre" => { meaning: "excel, exhibit", part: "Verb", conjugation: "1st", form: :infinitive },
  "aequor" => { meaning: "level surface, sea, plain", part: "Noun", declension: "3rd", gender: :neuter },
  "misceō" => { meaning: "mix", part: "Verb", conjugation: "2nd", form: :first_person_singular },
  "miscēre" => { meaning: "mix", part: "Verb", conjugation: "2nd", form: :infinitive },
  "spatium" => { meaning: "space", part: "Noun", declension: "2nd", gender: :neuter },
  "tandem" => { meaning: "finally", part: "Adverb" },
  "īnferus" => { meaning: "low; īnferior: lower; īnfimus or īmus: lowest", part: "Adjective", declension: "1st and 2nd" },
  "īnfera" => { meaning: "low; īnferior: lower; īnfimus or īmus: lowest", part: "Adjective", declension: "1st and 2nd" },
  "īnferum" => { meaning: "low; īnferior: lower; īnfimus or īmus: lowest", part: "Adjective", declension: "1st and 2nd" },
  "metuō" => { meaning: "to fear, to dread", part: "Verb", conjugation: "3rd -ō", form: :first_person_singular },
  "metuere" => { meaning: "to fear, to dread", part: "Verb", conjugation: "3rd -ō", form: :infinitive },
  "temptō" => { meaning: "try, test", part: "Verb", conjugation: "1st", form: :first_person_singular },
  "temptāre" => { meaning: "try, test", part: "Verb", conjugation: "1st", form: :infinitive },
  "trānseō" => { meaning: "go across", part: "Verb", conjugation: "Irregular", form: :first_person_singular },
  "trānsīre" => { meaning: "go across", part: "Verb", conjugation: "Irregular", form: :infinitive },
  "ultimus" => { meaning: "farthest, final, last, ultimate", part: "Adjective", declension: "1st and 2nd" },
  "ultima" => { meaning: "farthest, final, last, ultimate", part: "Adjective", declension: "1st and 2nd" },
  "ultimum" => { meaning: "farthest, final, last, ultimate", part: "Adjective", declension: "1st and 2nd" },
  "addō" => { meaning: "give to", part: "Verb", conjugation: "3rd -ō", form: :first_person_singular },
  "addere" => { meaning: "give to", part: "Verb", conjugation: "3rd -ō", form: :infinitive },
  "grātus" => { meaning: "pleasant; grateful", part: "Adjective", declension: "1st and 2nd" },
  "grāta" => { meaning: "pleasant; grateful", part: "Adjective", declension: "1st and 2nd" },
  "grātum" => { meaning: "pleasant; grateful", part: "Adjective", declension: "1st and 2nd" },
  "laudō" => { meaning: "praise", part: "Verb", conjugation: "1st", form: :first_person_singular },
  "laudāre" => { meaning: "praise", part: "Verb", conjugation: "1st", form: :infinitive },
  "nōndum" => { meaning: "not yet", part: "Adverb" },
  "impōnō" => { meaning: "put in, put on, impose, levy upon", part: "Verb", conjugation: "3rd -ō", form: :first_person_singular },
  "impōnere" => { meaning: "put in, put on, impose, levy upon", part: "Verb", conjugation: "3rd -ō", form: :infinitive },
  "somnus" => { meaning: "sleep, slumber; (pl.) dreams", part: "Noun", declension: "2nd", gender: :masculine },
  "aciēs" => { meaning: "edge; line of battle", part: "Noun", declension: "5th", gender: :feminine },
  "rūrsus" => { meaning: "back, again", part: "Adverb" },
  "cupiō" => { meaning: "desire", part: "Verb", conjugation: "3rd -iō", form: :first_person_singular },
  "cupere" => { meaning: "desire", part: "Verb", conjugation: "3rd -iō", form: :infinitive },
  "exspectō" => { meaning: "watch, wait, expect", part: "Verb", conjugation: "1st", form: :first_person_singular },
  "exspectāre" => { meaning: "watch, wait, expect", part: "Verb", conjugation: "1st", form: :infinitive },
  "compōnō" => { meaning: "build, construct, arrange", part: "Verb", conjugation: "3rd -ō", form: :first_person_singular },
  "compōnere" => { meaning: "build, construct, arrange", part: "Verb", conjugation: "3rd -ō", form: :infinitive },
  "laus" => { meaning: "praise, glory", part: "Noun", declension: "3rd", gender: :feminine },
  "laudis" => { meaning: "praise, glory", part: "Noun", declension: "3rd", gender: :feminine },
  "absum" => { meaning: "be away, absent", part: "Verb", form: :irregular },
  "abesse" => { meaning: "be away, absent", part: "Verb", form: :irregular },
  "ūsus" => { meaning: "use, experience", part: "Noun", declension: "4th", gender: :masculine },
  "velut" => { meaning: "even as, just as", part: "Adverb" },
  "comes" => { meaning: "companion, comrade; attendant, follower", part: "Noun", declension: "3rd", gender: :masculine },
  "comitis" => { meaning: "companion, comrade; attendant, follower", part: "Noun", declension: "3rd", gender: :masculine },
  "ob" => { meaning: "against, on account of", part: "Preposition", object_case: :accusative },
  "studium" => { meaning: "eagerness, zeal", part: "Noun", declension: "2nd", gender: :neuter },
  "facilis" => { meaning: "easy", part: "Adjective", declension: "3rd" },
  "facile" => { meaning: "easy", part: "Adjective", declension: "3rd" },
  "nūmen" => { meaning: "divine will, deity", part: "Noun", declension: "3rd", gender: :neuter },
  "nūminis" => { meaning: "divine will, deity", part: "Noun", declension: "3rd", gender: :neuter },
  "sapiēns" => { meaning: "wise; (as subst.) wise man, sage, philosopher", part: "Adjective", declension: "3rd" },
  "sūmō" => { meaning: "take up", part: "Verb", form: "3rd Conjugation -ō" },
  "sūmere" => { meaning: "take up", part: "Verb", form: "3rd Conjugation -ō" },
  "nōbilis" => { meaning: "distinguished, noble; (as subst.) a nobleman or woman", part: "Adjective", declension: "3rd" },
  "quīn" => { meaning: "indeed, in fact; so that ... not", part: "Adverb" },
  "fleō" => { meaning: "weep", part: "Verb", form: "2nd Conjugation" },
  "flēre" => { meaning: "weep", part: "Verb", form: "2nd Conjugation" },
  "nōlō" => { meaning: "be unwilling", part: "Verb", form: :irregular },
  "nōlle" => { meaning: "be unwilling", part: "Verb", form: :irregular },
  "plēnus" => { meaning: "full", part: "Adjective", declension: "1st and 2nd" },
  "adversus" => { meaning: "facing, opposite, against, opposed (to)", part: "Adverb" },
  "adversum" => { meaning: "facing, opposite, against, opposed (to)", part: "Adverb" },
  "nemus" => { meaning: "grove, forest", part: "Noun", declension: "3rd", gender: :neuter },
  "nemoris" => { meaning: "grove, forest", part: "Noun", declension: "3rd", gender: :neuter },
  "cārus" => { meaning: "dear", part: "Adjective", declension: "1st and 2nd" },
  "dēsum" => { meaning: "be lacking", part: "Verb", form: :irregular },
  "lēgātus" => { meaning: "lieutenant, envoy", part: "Noun", declension: "2nd", gender: :masculine },
  "discō" => { meaning: "learn", part: "Verb", form: "3rd Conjugation -ō" },
  "discere" => { meaning: "learn", part: "Verb", form: "3rd Conjugation -ō" },
  "furor" => { meaning: "rage, fury", part: "Noun", declension: "3rd", gender: :masculine },
  "amnis" => { meaning: "river, torrent", part: "Noun", declension: "3rd", gender: :masculine },
  "arbor" => { meaning: "tree", part: "Noun", declension: "3rd", gender: :feminine },
  "arboris" => { meaning: "tree", part: "Noun", declension: "3rd", gender: :feminine },
  "mox" => { meaning: "soon", part: "Adverb" },
  "eō" => { meaning: "there, to that place", part: "Adverb" },
  "cīvis" => { meaning: "citizen", part: "Noun", declension: "3rd", gender: :both },
  "occupō" => { meaning: "seize, occupy; anticipate, do a thing first", part: "Verb", form: "1st Conjugation" },
  "occupāre" => { meaning: "seize, occupy; anticipate, do a thing first", part: "Verb", form: "1st Conjugation" },
  "spectō" => { meaning: "look at, consider", part: "Verb", form: "1st Conjugation" },
  "spectāre" => { meaning: "look at, consider", part: "Verb", form: "1st Conjugation" },
  "tergum" => { meaning: "back, rear; ā tergō: from the rear", part: "Noun", declension: "2nd", gender: :neuter },
  "crīmen" => { meaning: "verdict, accusation", part: "Noun", declension: "3rd", gender: :neuter },
  "dōnum" => { meaning: "gift, present", part: "Noun", declension: "2nd", gender: :neuter },
  "nōtus" => { meaning: "well-known", part: "Adjective", form: "1st and 2nd Declension" },
  "nōta" => { meaning: "well-known", part: "Adjective", form: "1st and 2nd Declension" },
  "nōtum" => { meaning: "well-known", part: "Adjective", form: "1st and 2nd Declension" },
  "sinus" => { meaning: "fold of a garment; lap, bay, gulf", part: "Noun", declension: "4th", gender: :masculine },
  "faciēs" => { meaning: "form, appearance", part: "Noun", declension: "5th", gender: :feminine },
  "rumpō" => { meaning: "break, rupture", part: "Verb", form: "3rd Conjugation -ō" },
  "rumpere" => { meaning: "break, rupture", part: "Verb", form: "3rd Conjugation -ō" },
  "membrum" => { meaning: "limb, member of the body", part: "Noun", declension: "2nd", gender: :neuter },
  "umquam" => { meaning: "ever", part: "Adverb" },
  "aspiciō" => { meaning: "look to or at, behold", part: "Verb", form: "3rd Conjugation -iō" },
  "aspicere" => { meaning: "look to or at, behold", part: "Verb", form: "3rd Conjugation -iō" },
  "prius" => { meaning: "before", part: "Adverb" },
  "priusquam" => { meaning: "before", part: "Adverb" },
  "templum" => { meaning: "consecrated ground; temple", part: "Noun", declension: "2nd", gender: :neuter },
  "āmittō" => { meaning: "let go, send away", part: "Verb", form: "3rd Conjugation -ō" },
  "āmittere" => { meaning: "let go, send away", part: "Verb", form: "3rd Conjugation -ō" },
  "pōscō" => { meaning: "demand, claim; inquire into", part: "Verb", form: "3rd Conjugation -ō" },
  "pōscere" => { meaning: "demand, claim; inquire into", part: "Verb", form: "3rd Conjugation -ō" },
  "perdō" => { meaning: "destroy", part: "Verb", form: "3rd Conjugation -ō" },
  "perdere" => { meaning: "destroy", part: "Verb", form: "3rd Conjugation -ō" },
  "quamvīs" => { meaning: "however you like; although", part: "Adverb" },
  "tener" => { meaning: "tender", part: "Adjective", form: "1st and 2nd Declension" },
  "tenera" => { meaning: "tender", part: "Adjective", form: "1st and 2nd Declension" },
  "tenerum" => { meaning: "tender", part: "Adjective", form: "1st and 2nd Declension" },
  "currus" => { meaning: "chariot", part: "Noun", declension: "4th", gender: :masculine },
  "precor" => { meaning: "pray, invoke", part: "Verb", form: "Deponent" },
  "precari" => { meaning: "pray, invoke", part: "Verb", form: "Deponent" },
  "anima" => { meaning: "breath, spirit", part: "Noun", declension: "1st", gender: :feminine },
  "contingō" => { meaning: "touch, be contiguous to", part: "Verb", form: "3rd Conjugation -ō" },
  "contingere" => { meaning: "touch, be contiguous to", part: "Verb", form: "3rd Conjugation -ō" },
  "lībertās" => { meaning: "freedom", part: "Noun", declension: "3rd", gender: :feminine },
  "servus" => { meaning: "slave", part: "Noun", declension: "2nd", gender: :masculine },
  "soror" => { meaning: "sister", part: "Noun", declension: "3rd", gender: :feminine },
  "fluctus" => { meaning: "flood, billow, surf", part: "Noun", declension: "4th", gender: :masculine },
  "quīppe" => { meaning: "indeed, surely", part: "Adverb" },
  "exigō" => { meaning: "drive out; collect", part: "Verb", form: "3rd Conjugation -ō" },
  "exigere" => { meaning: "drive out; collect", part: "Verb", form: "3rd Conjugation -ō" },
  "fēmina" => { meaning: "woman", part: "Noun", declension: "1st", gender: :feminine },
  "nimius" => { meaning: "too much, excessive", part: "Adjective", declension: "1st and 2nd" },
  "nimia" => { meaning: "too much, excessive", part: "Adjective", declension: "1st and 2nd" },
  "nimium" => { meaning: "too much, excessive", part: "Adjective", declension: "1st and 2nd" },
  "fallō" => { meaning: "deceive", part: "Verb", form: "3rd Conjugation -ō" },
  "fallere" => { meaning: "deceive", part: "Verb", form: "3rd Conjugation -ō" },
  "mīror" => { meaning: "wonder at, marvel at (+ acc.)", part: "Verb", form: "Deponent" },
  "mīrārī" => { meaning: "wonder at, marvel at (+ acc.)", part: "Verb", form: "Deponent" },
  "classis" => { meaning: "class, division, fleet", part: "Noun", declension: "3rd", gender: :feminine },
  "sedeō" => { meaning: "sit", part: "Verb", form: "2nd Conjugation" },
  "sedēre" => { meaning: "sit", part: "Verb", form: "2nd Conjugation" },
  "singulī" => { meaning: "one each", part: "Adjective", declension: "1st and 2nd" },
  "singulae" => { meaning: "one each", part: "Adjective", declension: "1st and 2nd" },
  "singula" => { meaning: "one each", part: "Adjective", declension: "1st and 2nd" },
  "mūrus" => { meaning: "wall", part: "Noun", declension: "2nd", gender: :masculine },
  "noceō" => { meaning: "harm", part: "Verb", form: "2nd Conjugation" },
  "nocēre" => { meaning: "harm", part: "Verb", form: "2nd Conjugation" },
  "quoniam" => { meaning: "since, seeing that", part: "Conjunction" },
  "fax" => { meaning: "torch", part: "Noun", declension: "3rd", gender: :feminine },
  "facis" => { meaning: "torch", part: "Noun", declension: "3rd", gender: :feminine },
  "intellegō" => { meaning: "understand", part: "Verb", form: "3rd Conjugation -ō" },
  "intellegere" => { meaning: "understand", part: "Verb", form: "3rd Conjugation -ō" },
  "iungō" => { meaning: "join", part: "Verb", form: "3rd Conjugation -ō" },
  "iungere" => { meaning: "join", part: "Verb", form: "3rd Conjugation -ō" },
  "afferō" => { meaning: "bring to", part: "Verb", form: "Irregular" },
  "afferre" => { meaning: "bring to", part: "Verb", form: "Irregular" },
  "cōgitō" => { meaning: "think, reflect", part: "Verb", form: "1st Conjugation" },
  "cōgitāre" => { meaning: "think, reflect", part: "Verb", form: "1st Conjugation" },
  "līmen" => { meaning: "threshold", part: "Noun", declension: "3rd", gender: :neuter },
  "līminis" => { meaning: "threshold", part: "Noun", declension: "3rd", gender: :neuter },
  "pūblicus" => { meaning: "public, belonging to the state", part: "Adjective", declension: "1st and 2nd" },
  "pūblica" => { meaning: "public, belonging to the state", part: "Adjective", declension: "1st and 2nd" },
  "queror" => { meaning: "complain of, lament", part: "Verb", form: "Deponent" },
  "querī" => { meaning: "complain of, lament", part: "Verb", form: "Deponent" },
  "exemplum" => { meaning: "example, sample, copy", part: "Noun", declension: "2nd", gender: :neuter },
  "prex" => { meaning: "prayers, entreaties", part: "Noun", declension: "3rd", gender: :feminine },
  "precis" => { meaning: "prayers, entreaties", part: "Noun", declension: "3rd", gender: :feminine },
  "dubitō" => { meaning: "hesitate, doubt", part: "Verb", form: "1st Conjugation" },
  "dubitāre" => { meaning: "hesitate, doubt", part: "Verb", form: "1st Conjugation" },
  "odium" => { meaning: "hatred", part: "Noun", declension: "2nd", gender: :neuter },
  "fundō" => { meaning: "pour, scatter", part: "Verb", form: "3rd Conjugation -ō" },
  "fundere" => { meaning: "pour, scatter", part: "Verb", form: "3rd Conjugation -ō" },
  "fūnus" => { meaning: "funeral; death; dead body", part: "Noun", declension: "3rd", gender: :neuter },
  "fūneris" => { meaning: "funeral; death; dead body", part: "Noun", declension: "3rd", gender: :neuter },
  "nesciō" => { meaning: "not know, be ignorant", part: "Verb", form: "4th Conjugation" },
  "nescīre" => { meaning: "not know, be ignorant", part: "Verb", form: "4th Conjugation" },
  "prior" => { meaning: "earlier, preceding", part: "Adjective", declension: "3rd" },
  "prius" => { meaning: "earlier, preceding", part: "Adjective", declension: "3rd" },
  "ūsque" => { meaning: "up to; continuously", part: "Adverb" },
  "dubius" => { meaning: "doubtful; a doubt; sine dubiō, without a doubt, certainly", part: "Adjective", declension: "1st and 2nd" },
  "dubia" => { meaning: "doubtful; a doubt; sine dubiō, without a doubt, certainly", part: "Adjective", declension: "1st and 2nd" },
  "tendō" => { meaning: "stretch, extend, direct (one's steps or course)", part: "Verb", form: "3rd Conjugation -ō" },
  "tendere" => { meaning: "stretch, extend, direct (one's steps or course)", part: "Verb", form: "3rd Conjugation -ō" },
  "pecūnia" => { meaning: "money", part: "Noun", declension: "1st", gender: :feminine },
  "quemadmodum" => { meaning: "in what manner, how", part: "Adverb" },
  "spargō" => { meaning: "scatter", part: "Verb", form: "3rd Conjugation -ō" },
  "spargere" => { meaning: "scatter", part: "Verb", form: "3rd Conjugation -ō" },
  "trēs" => { meaning: "three", part: "Adjective", type: "Numeral" },
  "tria" => { meaning: "three", part: "Adjective", type: "Numeral" },
  "tangō" => { meaning: "touch", part: "Verb", form: "3rd Conjugation -ō" },
  "tangere" => { meaning: "touch", part: "Verb", form: "3rd Conjugation -ō" },
  "respondeō" => { meaning: "answer", part: "Verb", form: "2nd Conjugation" },
  "respondēre" => { meaning: "answer", part: "Verb", form: "2nd Conjugation" },
  "timor" => { meaning: "fear", part: "Noun", declension: "3rd", gender: :masculine },
  "ōris" => { meaning: "fear", part: "Noun", declension: "3rd", gender: :masculine },
  "properō" => { meaning: "hasten, speed", part: "Verb", form: "1st Conjugation" },
  "properāre" => { meaning: "hasten, speed", part: "Verb", form: "1st Conjugation" },
  "subeō" => { meaning: "go under; endure", part: "Verb", form: "Irregular" },
  "subīre" => { meaning: "go under; endure", part: "Verb", form: "Irregular" },
  "valeō" => { meaning: "be strong, excel, be valid, prevail; valē: farewell!", part: "Verb", form: "2nd Conjugation" },
  "valēre" => { meaning: "be strong, excel, be valid, prevail; valē: farewell!", part: "Verb", form: "2nd Conjugation" },
  "condō" => { meaning: "build, found; store up; hide, conceal", part: "Verb", form: "3rd Conjugation -ō" },
  "condere" => { meaning: "build, found; store up; hide, conceal", part: "Verb", form: "3rd Conjugation -ō" },
  "nefās" => { meaning: "impiety, wickedness", part: "Noun", declension: "Indeclinable" },
  "quondam" => { meaning: "formerly, once", part: "Adverb" },
  "auxilium" => { meaning: "support, assistance; (pl.) auxiliary forces", part: "Noun", declension: "2nd", gender: :neuter },
  "dēserō" => { meaning: "leave, desert, abandon", part: "Verb", form: "3rd Conjugation -ō" },
  "dēserere" => { meaning: "leave, desert, abandon", part: "Verb", form: "3rd Conjugation -ō" },
  "nūdus" => { meaning: "naked, bare", part: "Adjective", type: "1st and 2nd Declension" },
  "nūda" => { meaning: "naked, bare", part: "Adjective", type: "1st and 2nd Declension" },
  "auctor" => { meaning: "originator, founder", part: "Noun", declension: "3rd", gender: :masculine },
  "ōris" => { meaning: "originator, founder", part: "Noun", declension: "3rd", gender: :masculine },
  "animālis" => { meaning: "a living being, an animal", part: "Noun", declension: "3rd" },
  "decus" => { meaning: "beauty, grace; ornament, glory, honor", part: "Noun", declension: "3rd" },
  "decoris" => { meaning: "beauty, grace; ornament, glory, honor", part: "Noun", declension: "3rd" },
  "salūs" => { meaning: "health, safety", part: "Noun", declension: "3rd" },
  "salūtis" => { meaning: "health, safety", part: "Noun", declension: "3rd" },
  "pateō" => { meaning: "lie open, extend; be evident or obvious", part: "Verb", conjugation: "2nd" },
  "patēre" => { meaning: "lie open, extend; be evident or obvious", part: "Verb", conjugation: "2nd" },
  "patuī" => { meaning: "lie open, extend; be evident or obvious", part: "Verb", conjugation: "2nd" },
  "rogō" => { meaning: "ask", part: "Verb", conjugation: "1st" },
  "rogāre" => { meaning: "ask", part: "Verb", conjugation: "1st" },
  "uxor" => { meaning: "wife", part: "Noun", declension: "3rd" },
  "uxōris" => { meaning: "wife", part: "Noun", declension: "3rd" },
  "abeō" => { meaning: "go away", part: "Verb", conjugation: "Irregular" },
  "abeīre" => { meaning: "go away", part: "Verb", conjugation: "Irregular" },
  "abeīī" => { meaning: "go away", part: "Verb", conjugation: "Irregular" },
  "abeītum" => { meaning: "go away", part: "Verb", conjugation: "Irregular" },
  "adeō" => { meaning: "to such a degree, so", part: "Adverb" },
  "auferō" => { meaning: "take away", part: "Verb", conjugation: "Irregular" },
  "auferre" => { meaning: "take away", part: "Verb", conjugation: "Irregular" },
  "abstulī" => { meaning: "take away", part: "Verb", conjugation: "Irregular" },
  "ablātum" => { meaning: "take away", part: "Verb", conjugation: "Irregular" },
  "quantum" => { meaning: "how much? how greatly? how much! how greatly! as much as", part: "Adverb" },
  "senex" => { meaning: "old man, elder; senior, older", part: "Noun", declension: "3rd" },
  "senis" => { meaning: "old man, elder; senior, older", part: "Noun", declension: "3rd" },
  "frōns" => { meaning: "forehead, brow; front", part: "Noun", declension: "3rd" },
  "frontis" => { meaning: "forehead, brow; front", part: "Noun", declension: "3rd" },
  "propter" => { meaning: "because of", usage: "+ acc.", part: "Preposition" },
  "rēgius" => { meaning: "kingly, royal", part: "Adjective", declension: "1st and 2nd" },
  "rēgia" => { meaning: "kingly, royal", part: "Adjective", declension: "1st and 2nd" },
  "rēgium" => { meaning: "kingly, royal", part: "Adjective", declension: "1st and 2nd" },
  "currō" => { meaning: "run", part: "Verb", conjugation: "3rd -ō" },
  "currere" => { meaning: "run", part: "Verb", conjugation: "3rd -ō" },
  "cucurrī" => { meaning: "run", part: "Verb", conjugation: "3rd -ō" },
  "cursum" => { meaning: "run", part: "Verb", conjugation: "3rd -ō" },
  "pellō" => { meaning: "strike, beat, push, drive", part: "Verb", conjugation: "3rd -ō" },
  "pellere" => { meaning: "strike, beat, push, drive", part: "Verb", conjugation: "3rd -ō" },
  "pepulī" => { meaning: "strike, beat, push, drive", part: "Verb", conjugation: "3rd -ō" },
  "pulsum" => { meaning: "strike, beat, push, drive", part: "Verb", conjugation: "3rd -ō" },
  "dīves" => { meaning: "rich (poet. dīs, dītis)", part: "Adjective", declension: "3rd" },
  "dīvitis" => { meaning: "rich (poet. dīs, dītis)", part: "Adjective", declension: "3rd" },
  "iūdicō" => { meaning: "judge, decide", part: "Verb", conjugation: "1st" },
  "iūdicāre" => { meaning: "judge, decide", part: "Verb", conjugation: "1st" },
  "pecus" => { meaning: "cattle, sheep", part: "Noun", declension: "3rd" },
  "pecoris" => { meaning: "cattle, sheep", part: "Noun", declension: "3rd" },
  "potēns" => { meaning: "able, powerful", part: "Adjective", declension: "3rd" },
  "potentis" => { meaning: "able, powerful", part: "Adjective", declension: "3rd" },
  "scrībō" => { meaning: "write", part: "Verb", conjugation: "3rd -ō" },
  "scrībere" => { meaning: "write", part: "Verb", conjugation: "3rd -ō" },
  "scrīpsī" => { meaning: "write", part: "Verb", conjugation: "3rd -ō" },
  "scrīptum" => { meaning: "write", part: "Verb", conjugation: "3rd -ō" },
  "pulcher" => { meaning: "beautiful", part: "Adjective", declension: "1st and 2nd" },
  "pulchra" => { meaning: "beautiful", part: "Adjective", declension: "1st and 2nd" },
  "pulchrum" => { meaning: "beautiful", part: "Adjective", declension: "1st and 2nd" },
  "surgō" => { meaning: "rise", part: "Verb", conjugation: "3rd -ō" },
  "surgere" => { meaning: "rise", part: "Verb", conjugation: "3rd -ō" },
  "surrēxī" => { meaning: "rise", part: "Verb", conjugation: "3rd -ō" },
  "surrēctum" => { meaning: "rise", part: "Verb", conjugation: "3rd -ō" },
  "cēterum" => { meaning: "for the rest, in addition, however that may be", part: "Adverb" },
  "careō" => { meaning: "lack (+ abl.)", part: "Verb", conjugation: "2nd" },
  "carēre" => { meaning: "lack (+ abl.)", part: "Verb", conjugation: "2nd" },
  "caruī" => { meaning: "lack (+ abl.)", part: "Verb", conjugation: "2nd" },
  "efficiō" => { meaning: "bring about, complete; render (+ ut + subj.)", part: "Verb", conjugation: "3rd -iō" },
  "efficere" => { meaning: "bring about, complete; render (+ ut + subj.)", part: "Verb", conjugation: "3rd -iō" },
  "effēcī" => { meaning: "bring about, complete; render (+ ut + subj.)", part: "Verb", conjugation: "3rd -iō" },
  "effectum" => { meaning: "bring about, complete; render (+ ut + subj.)", part: "Verb", conjugation: "3rd -iō" },
  "ōlim" => { meaning: "formerly, at that time", part: "Adverb" },
  "sermō" => { meaning: "conversation, discourse", part: "Noun", declension: "3rd" },
  "sermōnis" => { meaning: "conversation, discourse", part: "Noun", declension: "3rd" },
  }.freeze
end
