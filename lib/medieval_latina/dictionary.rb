require "set"

class MedievalLatina
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
  "ad" => { meaning: "to, up to, towards (+acc.)", part: "Preposition" }
  "ut" => { meaning: "as (+ indic.); so that, with the result that (+ subj.); (in questions) in what manner, how; (exclam.) to what an extent! how!", part: "Adverb" },
  "utī" => { meaning: "as (+ indic.); so that, with the result that (+ subj.); (in questions) in what manner, how; (exclam.) to what an extent! how!", part: "Adverb" },
  "sī" => { meaning: "if", part: "Conjunction" },
  "sui" => { meaning: "him- her- itself, themselves", part: "Pronoun" },
  "sibi" => { meaning: "him- her- itself, themselves", part: "Pronoun" },
  "sē" => { meaning: "him- her- itself, themselves", part: "Pronoun" },
  "sēsē" => { meaning: "him- her- itself, themselves", part: "Pronoun" },
  "omnis" => { meaning: "all, every, as a whole", part: "Adjective: 3rd Declension" },
  "-e" => { meaning: "all, every, as a whole", part: "Adjective: 3rd Declension" },
  "nec" => { meaning: "and not, nor; nec ... nec, neither ... nor", part: "Conjunction" },
  "sed" => { meaning: "but", part: "Conjunction" },
  "ā" => { meaning: "from, by (+abl.)", part: "Preposition" },
  "ab" => { meaning: "from, by (+abl.)", part: "Preposition" },
  "abs" => { meaning: "from, by (+abl.)", part: "Preposition" },
  "ipse" => { meaning: "him- her- itself", part: "Pronoun" },
  "ipsa" => { meaning: "him- her- itself", part: "Pronoun" },
  "ipsum" => { meaning: "him- her- itself", part: "Pronoun" },
  "possum" => { meaning: "be able", part: "Verb: Irregular" },
  "posse" => { meaning: "be able", part: "Verb: Irregular" },
  "potuī" => { meaning: "be able", part: "Verb: Irregular" },
  "aut" => { meaning: "or", part: "Conjunction" },
  "māgnus" => { meaning: "great", part: "Adjective: 1st and 2nd Declension" },
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
  "receptum" => { meaning: "take back, receive; sē recipere, betake oneself, go", part: "Verb", conjugation: "3rd -iō" }
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

}.freeze


extrēmus -a -um	farthest, situated at the end or tip, extreme	Adjective: 1st and 2nd Declension	Geography	385
tēctum -ī n.	roof; building, house	Noun: 2nd Declension	The House	386
ingenium -ī n.	disposition, ability, talent	Noun: 2nd Declension	Education/Knowledge	387
pāx pācis f.	peace	Noun: 3rd Declension	War and Peace	388
canō canere cecinī cantum	sing	Verb: 3rd Conjugation -ō	Writing/Poetry	389
iuvō iuvāre iūvī iūtum	help, assist; please, delight	Verb: 1st Conjugation	Social Life	390
campus -ī m.	plain, field	Noun: 2nd Declension	Earth and Water	391
claudō claudere clausī clausum	close, shut	Verb: 3rd Conjugation -ō	The House	392
doceō -ēre -uī doctum	teach	Verb: 2nd Conjugation	Education/Knowledge	393
excipiō -cipere -cēpī -ceptum	take out	Verb: 3rd Conjugation -iō	Verbs of Transport	394
clārus -a -um	clear, distinguished	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	395
illīc	at that place, there; illinc: from that place	Adverb	Place	396
procul	at a distance	Adverb	Place	397
sacer sacra sacrum	holy, sacred	Adjective: 1st and 2nd Declension	Religion	398
mora -ae f.	delay, hindrance	Noun: 1st Declension	Time	399
longē	far, far off	Adverb	Measurement	400
super	over (adv. and prep. +acc.)	Adverb	Place	401
errō -āre	go astray, wander	Verb: 1st Conjugation	Travel	402
sēdēs -is f.	seat, abode, habitation	Noun: 3rd Declension	The House	403
cūr	why?	Adverb	Pronouns/Interrogatives	404
coma -ae f.	hair, tresses	Noun: 1st Declension	The Body	405
aiō	say, affirm, say yes; ut āiunt: as they say	Verb: Irregular	Speech/Oratory	406
gaudeō gaudēre gāvīsus sum	rejoice	Verb: 2nd Conjugation	Emotions	407
beātus -a -um	happy, blessed, prosperous, fortunate	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	408
perveniō -venīre -vēnī -ventum	arrive, reach	Verb: 4th Conjugation	Travel	409
vērus -a -um	true	Adjective: 1st and 2nd Declension	Speech/Oratory	410
incipiō -cipere -cēpī -ceptum	begin	Verb: 3rd Conjugation -iō	Time	411
parcō parcere pepercī parsum	spare, be sparing of (+ dat.)	Verb: 3rd Conjugation -ō	War and Peace	412
vestis -is f.	garment, robe, clothing	Noun: 3rd Declension	Life and Being	413
similis -e	like, similar	Adjective: 3rd Declension	Personality Traits/Characteristics	414
caedēs -is f.	killing, slaughter	Noun: 3rd Declension	Violence	415
ōrdō -īnis m.	order, rank	Noun: 3rd Declension	War and Peace	416
optō -āre	choose, select	Verb: 1st Conjugation	Personality Traits/Characteristics	417
virgō -inis f.	maiden, virgin, girl	Noun: 3rd Declension	People	418
legō legere lēgī lēctum	gather, choose, read	Verb: 3rd Conjugation -ō	Writing/Poetry	419
aura -ae f.	breeze	Noun: 1st Declension	Air and Fire	420
impetus -ūs m.	attack	Noun: 4th Declension	Violence	421
fōrma -ae f.	shape; beauty	Noun: 1st Declension	Other Senses	422
praestō -stāre -stitī -stitum	excel, exhibit	Verb: 1st Conjugation	Other Senses	423
aequor aequoris n.	level surface, sea, plain	Noun: 3rd Declension	Earth and Water	424
misceō miscēre miscuī mixtum	mix	Verb: 2nd Conjugation	Earth and Water	425
spatium -ī n.	space	Noun: 2nd Declension	Air and Fire	426
tandem	finally	Adverb	Conjunctions/Adverbs	427
īnferus -a -um	low; īnferior: lower; īnfimus or īmus: lowest	Adjective: 1st and 2nd Declension	Geography	428
metuō metuere metuī	to fear, to dread	Verb: 3rd Conjugation -ō	Emotions	429
temptō -āre	try, test	Verb: 1st Conjugation	Making/Doing	430
trānseō -īre -iī -itum	go across	Verb: Irregular	Travel	431
ultimus -a -um	farthest, final, last, ultimate	Adjective: 1st and 2nd Declension	Geography	432
addō -dere -didī -ditum	give to	Verb: 3rd Conjugation -ō	Social Life	433
grātus -a -um	pleasant; grateful	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	434
laudō -āre	praise	Verb: 1st Conjugation	Social Life	435
nōndum	not yet	Adverb	Conjunctions/Adverbs	436
impōnō -ere -posuī -positum	put in, put on, impose, levy upon	Verb: 3rd Conjugation -ō	Measurement	437
somnus -ī m.	sleep, slumber; (pl.) dreams	Noun: 2nd Declension	Life and Being	438
aciēs -ēī f.	edge; line of battle	Noun: 5th Declension	War and Peace	439
rūrsus	back, again	Adverb	Place	440
cupiō -ere -īvī -ītum	desire	Verb: 3rd Conjugation -iō	Love	441
exspectō -āre	watch, wait, expect	Verb: 1st Conjugation	Vision	442
compōnō -pōnere posuī positum	build, construct, arrange	Verb: 3rd Conjugation -ō	Making/Doing	443
laus laudis f.	praise, glory	Noun: 3rd Declension	Social Life	444
absum abesse āfuī	be away, absent	Verb: Irregular	Travel	445
ūsus -ūs m.	use, experience	Noun: 4th Declension	Education/Knowledge	446
velut	even as, just as	Adverb	Conjunctions/Adverbs	447
comes comitis m./f.	companion, comrade; attendant, follower	Noun: 3rd Declension	Social Life	448
ob	against, on account of (+acc)	Preposition	Place	449
studium -ī n.	eagerness, zeal	Noun: 2nd Declension	Emotions	450
facilis -e	easy	Adjective: 3rd Declension	Personality Traits/Characteristics	451
nūmen -inis n.	divine will, deity	Noun: 3rd Declension	Religion	452
sapiēns -ntis	wise; (as subst.) wise man, sage, philosopher	Adjective: 3rd Declension	Education/Knowledge	453
sūmō sūmere sūmpsī sūmptum	take up	Verb: 3rd Conjugation -ō	Motion	454
nōbilis -e	distinguished, noble; (as subst.) a nobleman or woman	Adjective: 3rd Declension	Personality Traits/Characteristics	455
quīn	(adv.) indeed, in fact; (conjunction) so that ... not (+ subj.)	Adverb	Conjunctions/Adverbs	456
fleō flēre flēvī flētum	weep	Verb: 2nd Conjugation	Emotions	457
nōlō nōlle nōluī	be unwilling	Verb: Irregular	Emotions	458
plēnus -a -um	full	Adjective: 1st and 2nd Declension	Measurement	459
adversus (-um)	(adv. and prep.) facing, opposite, against, opposed (to)	Adverb	War and Peace	460
nemus nemoris n.	grove, forest	Noun: 3rd Declension	Animals/Plants	461
cārus -a -um	dear	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	462
dēsum -esse -fuī	be lacking	Verb: Irregular	Business/Money	463
lēgātus -ī m.	lieutenant, envoy	Noun: 2nd Declension	War and Peace	464
discō -ere didicī	learn	Verb: 3rd Conjugation -ō	Education/Knowledge	465
furor -ōris m.	rage, fury	Noun: 3rd Declension	Emotions	466
amnis -is m.	river, torrent	Noun: 3rd Declension	Earth and Water	467
arbor arboris f.	tree	Noun: 3rd Declension	Animals/Plants	468
mox	soon	Adverb	Time	469
eō	(adv.) there, to that place	Adverb	Place	470
cīvis -is m./f.	citizen	Noun: 3rd Declension	The City	471
occupō -āre	seize, occupy; anticipate, do a thing first (+ infin.)	Verb: 1st Conjugation	War and Peace	472
spectō -āre	look at, consider	Verb: 1st Conjugation	Vision	473
tergum -ī n.	back, rear; ā tergō: from the rear	Noun: 2nd Declension	The Body	474
crīmen -inis n.	verdict, accusation	Noun: 3rd Declension	Justice	475
dōnum -ī n.	gift, present	Noun: 2nd Declension	Social Life	476
nōtus -a -um	well-known	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	477
sinus -ūs m.	fold of a garment; lap, bay, gulf	Noun: 4th Declension	Earth and Water	478
faciēs -ēī f.	form, appearance	Noun: 5th Declension	Vision	479
rumpō rumpere rūpī ruptum	break, rupture	Verb: 3rd Conjugation -ō	Violence	480
membrum -ī n.	limb, member of the body	Noun: 2nd Declension	The Body	481
umquam	ever	Adverb	Time	482
aspiciō -ere -spēxī -spectum	look to or at, behold	Verb: 3rd Conjugation -iō	Vision	483
prius or priusquam	before	Adverb	Time	484
templum -ī n.	consecrated ground; temple	Noun: 2nd Declension	Religion	485
āmittō -mittere -mīsī -missum	let go, send away	Verb: 3rd Conjugation -ō	Verbs of Compelling/Directing	486
pōscō pōscere popōscī	demand, claim; inquire into	Verb: 3rd Conjugation -ō	Speech/Oratory	487
perdō -dere -didī -ditum	destroy	Verb: 3rd Conjugation -ō	Violence	488
quamvīs	however you like; although	Adverb	Conjunctions/Adverbs	489
tener -era -erum	tender	Adjective: 1st and 2nd Declension	Other Senses	490
currus -ūs m.	chariot	Noun: 4th Declension	Athletics	491
precor -ārī	pray, invoke	Verb: Deponent	Religion	492
anima -ae f.	breath, spirit	Noun: 1st Declension	Life and Being	493
contingō -tingere -tigī -tactum	touch, be contiguous to	Verb: 3rd Conjugation -ō	Place	494
lībertās -ātis f.	freedom	Noun: 3rd Declension	The City	495
servus -ī m.	slave	Noun: 2nd Declension	The Household	496
soror -ōris f.	sister	Noun: 3rd Declension	The Household	497
fluctus -ūs m	flood, billow, surf	Noun: 4th Declension	Earth and Water	498
quīppe	(adv.) indeed, surely	Adverb	Conjunctions/Adverbs	499
exigō -igere -ēgī -āctum	drive out; collect	Verb: 3rd Conjugation -ō	Verbs of Compelling/Directing	500
fēmina -ae f.	woman	Noun: 1st Declension	People	501
nimius -a -um	too much, excessive	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	502
fallō fallere fefellī falsum	deceive	Verb: 3rd Conjugation -ō	Deception	503
mīror mīrārī mīrātus sum	wonder at, marvel at (+ acc.)	Verb: Deponent	Emotions	504
classis -is f.	class, division, fleet	Noun: 3rd Declension	War and Peace	505
sedeō sedēre sēdī sessum	sit	Verb: 2nd Conjugation	The House	506
singulī -ae -a	one each	Adjective: 1st and 2nd Declension	Measurement	507
mūrus -ī m.	wall	Noun: 2nd Declension	The House	508
noceō nocēre nocuī	harm	Verb: 2nd Conjugation	Violence	509
quoniam	since, seeing that	Conjunction	Conjunctions/Adverbs	510
fax facis f.	torch	Noun: 3rd Declension	Air and Fire	511
intellegō -legere -lēxī -lēctum:	understand	Verb: 3rd Conjugation -ō	Education/Knowledge	512
iungō iungere iūnxī iūnctum	join	Verb: 3rd Conjugation -ō	Making/Doing	513
afferō afferre attulī allātum	bring to	Verb: Irregular	Verbs of Transport	514
cōgitō -āre	think, reflect	Verb: 1st Conjugation	Education/Knowledge	515
līmen līminis n.	threshold	Noun: 3rd Declension	The House	516
pūblicus -a -um	public, belonging to the state	Adjective: 1st and 2nd Declension	The City	517
queror querī questus sum	complain of, lament	Verb: Deponent	Emotions	518
exemplum -ī n.	example, sample, copy	Noun: 2nd Declension	Speech/Oratory	519
prex precis f.	prayers, entreaties	Noun: 3rd Declension	Religion	520
dubitō -āre	hesitate, doubt	Verb: 1st Conjugation	Education/Knowledge	521
odium -ī n.	hatred	Noun: 2nd Declension	Emotions	522
fundō fundere fūdī fūsum	pour, scatter	Verb: 3rd Conjugation -ō	Earth and Water	523
fūnus fūneris n.	funeral; death; dead body	Noun: 3rd Declension	Religion	524
nesciō -scīre	not know, be ignorant	Verb: 4th Conjugation	Education/Knowledge	525
prior prius	earlier, preceding	Adjective: 3rd Declension	Time	526
ūsque	up to; continuously	Adverb	Time	527
dubius -a -um	doubtful; (as subst.) a doubt; sine dubiō, without a doubt, certainly	Adjective: 1st and 2nd Declension	Deception	528
tendō tendere tetendī tentum	stretch, extend, direct (one’s steps or course)	Verb: 3rd Conjugation -ō	Travel	529
pecūnia -ae f.	money	Noun: 1st Declension	Business/Money	530
quemadmodum	in what manner, how	Adverb	Pronouns/Interrogatives	531
spargō spargere sparsī sparsum	scatter	Verb: 3rd Conjugation -ō	Earth and Water	532
trēs tria	three	Adjective: Numeral	Measurement	533
tangō tangere tetigī tāctum	touch	Verb: 3rd Conjugation -ō	Other Senses	534
respondeō -spondēre -spondī -spōnsum	answer	Verb: 2nd Conjugation	Speech/Oratory	535
timor -ōris m.	fear	Noun: 3rd Declension	Emotions	536
properō -āre	hasten, speed	Verb: 1st Conjugation	Motion	537
subeō -īre -iī -itum	go under; endure	Verb: Irregular	Motion	538
valeō valēre valuī	be strong, excel, be valid, prevail; valē: farewell!	Verb: 2nd Conjugation	Social Life	539
condō -dere -didī -ditum	build, found; store up; hide, conceal	Verb: 3rd Conjugation -ō	The City	540
nefās n. indecl.	impiety, wickedness	Noun: Indeclinable	Justice	541
quondam	formerly, once	Adverb	Time	542
auxilium -ī n.	support, assistance; (pl.) auxiliary forces	Noun: 2nd Declension	War and Peace	543
dēserō -ere dēseruī dēsertum	leave, desert, abandon	Verb: 3rd Conjugation -ō	Motion	544
nūdus -a -um	naked, bare	Adjective: 1st and 2nd Declension	The Body	545
auctor -ōris m.	originator, founder	Noun: 3rd Declension	Writing/Poetry	546
animal -ālis n.	a living being, an animal	Noun: 3rd Declension	Animals/Plants	547
decus decoris n.	beauty, grace; ornament, glory, honor	Noun: 3rd Declension	Personality Traits/Characteristics	548
salūs -ūtis f.	health, safety	Noun: 3rd Declension	Life and Being	549
pateō patēre patuī	lie open, extend; be evident or obvious	Verb: 2nd Conjugation	Geography	550
rogō -āre	ask	Verb: 1st Conjugation	Speech/Oratory	551
uxor uxōris f.	wife	Noun: 3rd Declension	The Household	552
abeō -īre -iī -itum	go away	Verb: Irregular	Motion	553
regō regere rēxī rēctum	guide, rule	Verb: 3rd Conjugation -ō	The City	554
adeō	(adv.) to such a degree, so	Adverb	Conjunctions/Adverbs	555
auferō auferre abstulī ablātum	take away	Verb: Irregular	Verbs of Transport	556
quantum	(adv.) how much? how greatly? how much! how greatly! as much as	Adverb	Pronouns/Interrogatives	557
senex -is m.	old man, elder; senior, older	Noun: 3rd Declension	People	558
frōns frontis f.	forehead, brow; front	Noun: 3rd Declension	The Body	559
propter	because of (+ acc.)	Preposition	Non-Directional Prepositions	560
rēgius -a -um	kingly, royal	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	561
currō currere cucurrī cursum	run	Verb: 3rd Conjugation -ō	Athletics	562
pellō pellere pepulī pulsum	strike, beat, push, drive	Verb: 3rd Conjugation -ō	Violence	563
dīves dīvitis	rich (poet. dīs, dītis)	Adjective: 3rd Declension	Business/Money	564
iūdicō -āre	judge, decide	Verb: 1st Conjugation	Justice	565
pecus -oris n.	cattle, sheep	Noun: 3rd Declension	Animals/Plants	566
potēns potentis	able, powerful	Adjective: 3rd Declension	Personality Traits/Characteristics	567
scrībō scrībere scrīpsī scrīptum	write	Verb: 3rd Conjugation -ō	Writing/Poetry	568
pulcher -chra -chrum	beautiful	Adjective: 1st and 2nd Declension	Vision	569
surgō surgere surrēxī surrēctum	rise	Verb: 3rd Conjugation -ō	Earth and Water	570
cēterum	for the rest, in addition, however that may be	Adverb	Pronouns/Interrogatives	571
careō -ēre -uī	lack (+ abl.)	Verb: 2nd Conjugation	Business/Money	572
efficiō -ficere -fēcī -fectum	bring about, complete; render (+ ut + subj.)	Verb: 3rd Conjugation -iō	Making/Doing	573
ōlim	formerly, at that time	Adverb	Time	574
sermō -ōnis m.	conversation, discourse	Noun: 3rd Declension	Speech/Oratory	575
exerceō -ercēre -ercuī -ercitum	train, exercise, carry on	Verb: 2nd Conjugation	Athletics	576
gradus -ūs m.	step, pace; grade, rank	Noun: 4th Declension	War and Peace	577
agitō -āre	drive	Verb: 1st Conjugation	Verbs of Compelling/Directing	578
forte	by chance	Adverb	Religion	579
honestus -a -um	honorable	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	580
moror morārī morātus sum	delay	Verb: Deponent	Time	581
praesidium -ī n.	garrison, protection	Noun: 2nd Declension	War and Peace	582
sonō sonāre sonuī sonitum	sound, resound	Verb: 1st Conjugation	Other Senses	583
praebeō -ēre -uī -itum	furnish, supply, render	Verb: 2nd Conjugation	Verbs of Transport	584
regiō -ōnis f.	boundary, region	Noun: 3rd Declension	Geography	585
sententia -ae f.	opinion, judgment	Noun: 1st Declension	Education/Knowledge	586
ācer ācris ācre	sharp, piercing	Adjective: 3rd Declension	Other Senses	587
suprā	above, beyond (adv. and prep. +acc.)	Preposition	Place	588
brevis -e	short, shallow, brief	Adjective: 3rd Declension	Measurement	589
citus -a -um	swift; citō swiftly	Adjective: 1st and 2nd Declension	Time	590
cornu -ūs n.	horn	Noun: 4th Declension	Animals/Plants	591
ingrātus -a -um:	unpleasant, disagreeable	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	592
moenia -ium n. pl.	walls, fortifications	Noun: 3rd Declension	The City	593
vinculum -ī n.	bond, fetter, tie	Noun: 2nd Declension	War and Peace	594
adeō -īre -iī -itum	go to	Verb: Irregular	Motion	595
cēterus -a -um	the other, the others, the rest	Adjective: 1st and 2nd Declension	Pronouns/Interrogatives	596
exeō -īre -iī -itum	go forth	Verb: Irregular	Motion	597
mālō mālle māluī	prefer	Verb: Irregular	Emotions	598
speciēs -ēī f.	aspect, appearance	Noun: 5th Declension	Vision	599
ultrā	beyond, further (adv. and prep. + acc.)	Preposition	Place	600
certē	certainly, surely	Adverb	Measurement	601
imperō -āre	command, control	Verb: 1st Conjugation	War and Peace	602
male	(adv.) badly	Adverb	Personality Traits/Characteristics	603
prohibeō -ēre -uī -itum	restrain, keep away	Verb: 2nd Conjugation	Verbs of Compelling/Directing	604
clāmor -ōris m.	outcry, shout	Noun: 3rd Declension	Speech/Oratory	605
dōnō -āre	present with a gift (+ acc. of person and abl. of thing)	Verb: 1st Conjugation	Social Life	606
officium -ī n.	service, duty	Noun: 2nd Declension	The City	607
committō -mittere -mīsī -missum	join, entrust to (+ dat.); perform, do	Verb: 3rd Conjugation -ō	Social Life	608
crēscō crēscere crēvī crētum	grow, increase	Verb: 3rd Conjugation -ō	Animals/Plants	609
aequus -a -um	equal	Adjective: 1st and 2nd Declension	Justice	610
factum -ī n.	deed, accomplishment	Noun: 2nd Declension	Making/Doing	611
caedō caedere cecīdī caesum	strike, kill, cut down	Verb: 3rd Conjugation -ō	Violence	612
exīstimō -āre	think, believe	Verb: 1st Conjugation	Education/Knowledge	613
accēdō -cēdere -cessī -cessum	approach	Verb: 3rd Conjugation -ō	Motion	614
contemnō -temnere -tempsī -temptum	despise, scorn, disdain	Verb: 3rd Conjugation -ō	Emotions	615
pudor pudōris m.	sense of shame, modesty, propriety	Noun: 3rd Declension	Personality Traits/Characteristics	616
antīquus -a -um	ancient, old-time, former	Adjective: 1st and 2nd Declension	Lengths of Time	617
ārdeō ārdēre ārsī ārsum	blaze, glow; be eager	Verb: 2nd Conjugation	Air and Fire	618
ibi	there	Adverb	Place	619
prōvincia -ae f.	province; official duty	Noun: 1st Declension	The City	620
quandō	when?; since; sī quandō: if ever	Adverb	Pronouns/Interrogatives	621
custōs custōdis m.	guardian	Noun: 3rd Declension	The Household	622
supersum -esse -fuī	remain, survive; be superfluous (to)	Verb: Irregular	Place	623
dēsinō -sinere -siī -situm	leave off, cease	Verb: 3rd Conjugation -ō	Motion	624
fessus -a -um	weary, tired	Adjective: 1st and 2nd Declension	Life and Being	625
praeda -ae f.	booty, prey	Noun: 1st Declension	War and Peace	626
memoria -ae f.	recollection, memory	Noun: 1st Declension	Education/Knowledge	627
dīvidō -ere dīvīsī dīvīsum	divide, separate	Verb: 3rd Conjugation -ō	Making/Doing	628
pretium -ī n.	price, worth, reward; pretium operae: a reward for trouble	Noun: 2nd Declension	Business/Money	629
pontus -ī m.	the open sea, the deep	Noun: 2nd Declension	Earth and Water	630
varius -a -um	changing, varied, various	Adjective: 1st and 2nd Declension	Other Senses	631
vehō vehere vēxī vectum	carry; vehor vehī vectus sum: travel, ride	Verb: 3rd Conjugation -ō	Travel	632
falsus -a -um	deceptive, false	Adjective: 1st and 2nd Declension	Deception	633
niger nigra nigrum	black	Adjective: 1st and 2nd Declension	Vision	634
oppidum -ī n.	town	Noun: 2nd Declension	The City	635
pondus ponderis n.	weight	Noun: 3rd Declension	Measurement	636
arvum -ī n.	ploughed land, field	Noun: 2nd Declension	Animals/Plants	637
arx arcis f.	citadel, castle; summit	Noun: 3rd Declension	The City	638
sors sortis f.	lot, fate, destiny; oracle	Noun: 3rd Declension	Religion	639
vīnum -ī n.	vine, wine	Noun: 2nd Declension	Animals/Plants	640
dīversus -a -um	different, diverse	Adjective: 1st and 2nd Declension	Other Senses	641
orior orīrī ortus sum	arise, begin	Verb: Deponent	Time	642
ecce	behold!	Adverb	Vision	643
quamquam	however, although	Conjunction	Conjunctions/Adverbs	644
cōnferō cōnferre contulī collātum	collect, bring to	Verb: Irregular	Verbs of Transport	645
facinus facinoris n.	deed, crime	Noun: 3rd Declension	Justice	646
retineō -tinēre -tinuī -tentum	hold back, keep	Verb: 2nd Conjugation	Verbs of Compelling/Directing	647
spērō -āre	to hope	Verb: 1st Conjugation	Emotions	648
plēbs plēbis f.	the common people	Noun: 3rd Declension	The City	649
pūgna -ae f.	fist-fight; battle	Noun: 1st Declension	Violence	650
repetō -petere -petīvī -petītum	demand, exact; revisit; call to mind, recollect; repeat	Verb: 3rd Conjugation -ō	Verbs of Compelling/Directing	651
cōnstituō -stituere -stituī -stitūtum	establish, put together	Verb: 3rd Conjugation -ō	Making/Doing	652
dēfendō -fendere -fendī -fēnsum	defend, ward off	Verb: 3rd Conjugation -ō	War and Peace	653
marītus -ī m.	husband	Noun: 2nd Declension	The Household	654
cernō cernere crēvī crētum	discern, separate	Verb: 3rd Conjugation -ō	Education/Knowledge	655
superbus -a -um	overbearing, proud, haughty	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	656
adversus -a -um	facing, opposed; unfavorable	Adjective: 1st and 2nd Declension	War and Peace	657
morbus -ī m.	sickness, disease	Noun: 2nd Declension	The Body	658
sānctus -a -um	sacred, inviolable	Adjective: 1st and 2nd Declension	Religion	659
commūnis -e	common, general	Adjective: 3rd Declension	The City	660
dēdūcō -dūcere -dūxī -ductum	launch, lead away	Verb: 3rd Conjugation -ō	Travel	661
rīpa -ae f.	bank of a river	Noun: 1st Declension	Earth and Water	662
concēdō -cēdere -cessī -cessum	yield, withdraw	Verb: 3rd Conjugation -ō	War and Peace	663
hōra -ae f.	hour	Noun: 1st Declension	Lengths of Time	664
vetō -āre vetuī vetītum	forbid	Verb: 1st Conjugation	Verbs of Compelling/Directing	665
cohors cohortis f.	cohort, band, troop	Noun: 3rd Declension	War and Peace	666
gīgnō gīgnere genuī genitum	beget, bear, bring forth	Verb: 3rd Conjugation -ō	Life and Being	667
superō -āre	overcome, surpass, defeat	Verb: 1st Conjugation	War and Peace	668
maestus -a -um	sad, sorrowful; depressing	Adjective: 1st and 2nd Declension	Emotions	669
meminī meminisse	remember, recollect	Verb: Irregular	Education/Knowledge	670
impleō -ēre -plēvī -plētum	fill in, fill up	Verb: 2nd Conjugation	Earth and Water	671
māgnitūdō -inis f.	greatness, size	Noun: 3rd Declension	Measurement	672
vacuus -a -um	empty	Adjective: 1st and 2nd Declension	Measurement	673
vagus -a -um	wandering, shifting	Adjective: 1st and 2nd Declension	Travel	674
vulgus -ī n. and m.	the common people	Noun: 2nd Declension	The City	675
deficiō -ficere -fēcī -fectum	fail, give out; revolt from	Verb: 3rd Conjugation -iō	War and Peace	676
occurrō -currere -cucurrī -cursum	run to meet; come into one’s mind	Verb: 3rd Conjugation -ō	Education/Knowledge	677
statuō -ere -uī -ūtum	set up, determine	Verb: 3rd Conjugation -ō	Justice	678
ideō	for this reason	Adverb	Conjunctions/Adverbs	679
praemium -ī n.	bounty, reward	Noun: 2nd Declension	Business/Money	680
praetereā	besides, moreover	Adverb	Conjunctions/Adverbs	681
tertius -a -um	third	Adjective: 1st and 2nd Declension	Measurement	682
supplicium -ī n.	punishment, penalty	Noun: 2nd Declension	Justice	683
vātēs -is m.	poet, bard	Noun: 3rd Declension	Writing/Poetry	684
astrum -ī n.	star; constellation	Noun: 2nd Declension	Air and Fire	685
undique	from all sides, on all sides	Adverb	Place	686
canis -is m./f.	dog	Noun: 3rd Declension	Animals/Plants	687
ēdō ēdere ēdidī ēditum	put forth, state, explain	Verb: 3rd Conjugation -ō	Speech/Oratory	688
fateor fatērī fassus sum	admit, confess; profess, declare; assent, say yes	Verb: Deponent	Justice	689
amīcitia -ae f.	friendship	Noun: 1st Declension	Social Life	690
aureus -a -um	golden; splendid	Adjective: 1st and 2nd Declension	Business/Money	691
candidus -a -um	white, fair	Adjective: 1st and 2nd Declension	Vision	692
interim	meanwhile	Adverb	Time	693
frūstrā	in vain	Adverb	Conjunctions/Adverbs	694
lateō latēre latuī	lie hidden, be hidden	Verb: 2nd Conjugation	Deception	695
os ossis n.	bone	Noun: 3rd Declension	The Body	696
sēcūrus -a -um	free from care, tranquil; careless	Adjective: 1st and 2nd Declension	Personality Traits/Characteristics	697
conveniō -venīre -vēnī -ventum	assemble, meet; agree	Verb: 4th Conjugation	Social Life	698
interficiō -ficere -fēcī -fectum	kill	Verb: 3rd Conjugation -iō	Violence	699
appellō -pellāre	call, address, name	Verb: 1st Conjugation	Social Life	700
dolus -ī m.	artifice, device, trick	Noun: 2nd Declension	Deception	701
permittō -mittere -mīsī -missum	yield, allow, permit	Verb: 3rd Conjugation -ō	Verbs of Compelling/Directing	702
spīritus -ūs m.	breath, life, spirit	Noun: 4th Declension	Life and Being	703
intrā	within (+ acc.)	Preposition	Place	704
terreō terrēre terruī territum	terrify, frighten	Verb: 2nd Conjugation	Emotions	705
fōns fontis m.	spring, fountain	Noun: 3rd Declension	Earth and Water	706
invidia -ae f.	envy, jealousy, hatred	Noun: 1st Declension	Emotions	707
pugnō -āre	fight	Verb: 1st Conjugation	Violence	708
augeō augēre auxī auctum	increase	Verb: 2nd Conjugation	Making/Doing	709
littera -ae f.	letter, (pl.) literature	Noun: 1st Declension	Writing/Poetry	710
moneō monēre monuī monitum	warn, advise	Verb: 2nd Conjugation	Speech/Oratory	711
dīvitiae -ārum f. pl.	riches, wealth	Noun: 1st Declension	Business/Money	712
experior -perīrī -pertus sum	try thoroughly, test, experience	Verb: Deponent	Education/Knowledge	713
superī -ōrum m. pl.	those above, i.e. the gods	Noun: 2nd Declension	Religion	714
ōtium -ī n.	leisure	Noun: 2nd Declension	Social Life	715
vestīgium -ī n.	footstep, footprint, track	Noun: 2nd Declension	Travel	716
sinō sinere sīvī situm	allow, let go	Verb: 3rd Conjugation -ō	Verbs of Compelling/Directing	717
decet decēre decuīt	it is right, proper, fitting (+ acc. + infin.)	Verb: Impersonal	Personality Traits/Characteristics	718
effundō -fundere -fūdī -fūsum	pour out	Verb: 3rd Conjugation -ō	Earth and Water	719
prōmittō -mittere -mīsī -missum	send forth, offer	Verb: 3rd Conjugation -ō	Verbs of Compelling/Directing	720
fingō fingere fīnxī fīctum	shape; invent	Verb: 3rd Conjugation -ō	Making/Doing	721
respicio -ere -spēxī -spectum	look back, regard, consider	Verb: 3rd Conjugation -iō	Vision	722
imperātor -ōris m.	commander	Noun: 3rd Declension	War and Peace	723
vacō vacāre	be empty, open, unoccupied	Verb: 1st Conjugation	Measurement	724
color -ōris m.	color	Noun: 3rd Declension	Vision	725
discēdō -ere -cessī -cessum	go away, depart	Verb: 3rd Conjugation -ō	Travel	726
gaudium -ī n.	delight, joy, pleasure	Noun: 2nd Declension	Emotions	727
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
]
end
