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
end
