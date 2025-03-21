.class public Lio/sentry/dsn/Dsn;
.super Ljava/lang/Object;
.source "Dsn.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private host:Ljava/lang/String;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private port:I

.field private projectId:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private protocolSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private publicKey:Ljava/lang/String;

.field private secretKey:Ljava/lang/String;

.field private uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lio/sentry/dsn/Dsn;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/dsn/Dsn;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dsn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/dsn/InvalidDsnException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/dsn/Dsn;-><init>(Ljava/net/URI;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 9
    .param p1, "dsn"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/dsn/InvalidDsnException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Lio/sentry/dsn/InvalidDsnException;

    const-string v1, "DSN constructed with null value!"

    invoke-direct {v0, v1}, Lio/sentry/dsn/InvalidDsnException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/dsn/Dsn;->options:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/sentry/dsn/Dsn;->protocolSettings:Ljava/util/Set;

    .line 58
    invoke-direct {p0, p1}, Lio/sentry/dsn/Dsn;->extractProtocolInfo(Ljava/net/URI;)V

    .line 59
    invoke-direct {p0, p1}, Lio/sentry/dsn/Dsn;->extractUserKeys(Ljava/net/URI;)V

    .line 60
    invoke-direct {p0, p1}, Lio/sentry/dsn/Dsn;->extractHostInfo(Ljava/net/URI;)V

    .line 61
    invoke-direct {p0, p1}, Lio/sentry/dsn/Dsn;->extractPathInfo(Ljava/net/URI;)V

    .line 62
    invoke-direct {p0, p1}, Lio/sentry/dsn/Dsn;->extractOptions(Ljava/net/URI;)V

    .line 64
    invoke-direct {p0}, Lio/sentry/dsn/Dsn;->makeOptionsImmutable()V

    .line 66
    invoke-direct {p0}, Lio/sentry/dsn/Dsn;->validate()V

    .line 69
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lio/sentry/dsn/Dsn;->protocol:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/sentry/dsn/Dsn;->host:Ljava/lang/String;

    iget v4, p0, Lio/sentry/dsn/Dsn;->port:I

    iget-object v5, p0, Lio/sentry/dsn/Dsn;->path:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/dsn/Dsn;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 70
    :catch_0
    move-exception v8

    .line 71
    .local v8, "e":Ljava/net/URISyntaxException;
    new-instance v0, Lio/sentry/dsn/InvalidDsnException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible to determine Sentry\'s URI from the DSN \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lio/sentry/dsn/InvalidDsnException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static dsnLookup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    const-string v1, "dsn"

    invoke-static {v1}, Lio/sentry/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "dsn":Ljava/lang/String;
    invoke-static {v0}, Lio/sentry/util/Util;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "dns"

    invoke-static {v1}, Lio/sentry/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    invoke-static {v0}, Lio/sentry/util/Util;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    sget-object v1, Lio/sentry/dsn/Dsn;->logger:Lorg/slf4j/Logger;

    const-string v2, "*** Couldn\'t find a suitable DSN, Sentry operations will do nothing! See documentation: https://docs.sentry.io/clients/java/ ***"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 91
    const-string v0, "noop://localhost?async=false"

    .line 94
    :cond_1
    return-object v0
.end method

.method private extractHostInfo(Ljava/net/URI;)V
    .locals 1
    .param p1, "dsnUri"    # Ljava/net/URI;

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/dsn/Dsn;->host:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lio/sentry/dsn/Dsn;->port:I

    .line 120
    return-void
.end method

.method private extractOptions(Ljava/net/URI;)V
    .locals 12
    .param p1, "dsnUri"    # Ljava/net/URI;

    .prologue
    const/4 v11, 0x1

    .line 160
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "query":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 174
    :cond_0
    return-void

    .line 164
    :cond_1
    const-string v9, "&"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 166
    .local v5, "optionPair":Ljava/lang/String;
    :try_start_0
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "pairDetails":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "key":Ljava/lang/String;
    array-length v9, v6

    if-le v9, v11, :cond_2

    const/4 v9, 0x1

    aget-object v9, v6, v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "value":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lio/sentry/dsn/Dsn;->options:Ljava/util/Map;

    invoke-interface {v9, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v8    # "value":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 170
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "pairDetails":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Impossible to decode the query parameter \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private extractPathInfo(Ljava/net/URI;)V
    .locals 3
    .param p1, "dsnUri"    # Ljava/net/URI;

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "uriPath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 108
    .local v0, "projectIdStart":I
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/dsn/Dsn;->path:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/dsn/Dsn;->projectId:Ljava/lang/String;

    goto :goto_0
.end method

.method private extractProtocolInfo(Ljava/net/URI;)V
    .locals 6
    .param p1, "dsnUri"    # Ljava/net/URI;

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "scheme":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v2, "\\+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "schemeDetails":[Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/dsn/Dsn;->protocolSettings:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 134
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lio/sentry/dsn/Dsn;->protocol:Ljava/lang/String;

    goto :goto_0
.end method

.method private extractUserKeys(Ljava/net/URI;)V
    .locals 4
    .param p1, "dsnUri"    # Ljava/net/URI;

    .prologue
    const/4 v3, 0x1

    .line 143
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "userInfo":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "userDetails":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lio/sentry/dsn/Dsn;->publicKey:Ljava/lang/String;

    .line 149
    array-length v2, v0

    if-le v2, v3, :cond_0

    .line 150
    aget-object v2, v0, v3

    iput-object v2, p0, Lio/sentry/dsn/Dsn;->secretKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private makeOptionsImmutable()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lio/sentry/dsn/Dsn;->options:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/dsn/Dsn;->options:Ljava/util/Map;

    .line 182
    iget-object v0, p0, Lio/sentry/dsn/Dsn;->protocolSettings:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/dsn/Dsn;->protocolSettings:Ljava/util/Set;

    .line 183
    return-void
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 191
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 192
    .local v0, "missingElements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lio/sentry/dsn/Dsn;->host:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 193
    const-string v1, "host"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    iget-object v1, p0, Lio/sentry/dsn/Dsn;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/sentry/dsn/Dsn;->protocol:Ljava/lang/String;

    const-string v2, "noop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lio/sentry/dsn/Dsn;->protocol:Ljava/lang/String;

    const-string v2, "out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 200
    iget-object v1, p0, Lio/sentry/dsn/Dsn;->publicKey:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 201
    const-string v1, "public key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    iget-object v1, p0, Lio/sentry/dsn/Dsn;->secretKey:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 204
    const-string v1, "secret key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_2
    iget-object v1, p0, Lio/sentry/dsn/Dsn;->projectId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/sentry/dsn/Dsn;->projectId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    :cond_3
    const-string v1, "project ID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 212
    new-instance v1, Lio/sentry/dsn/InvalidDsnException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DSN, the following properties aren\'t set \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/dsn/InvalidDsnException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    if-ne p0, p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 266
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 267
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 270
    check-cast v0, Lio/sentry/dsn/Dsn;

    .line 272
    .local v0, "dsn":Lio/sentry/dsn/Dsn;
    iget v3, p0, Lio/sentry/dsn/Dsn;->port:I

    iget v4, v0, Lio/sentry/dsn/Dsn;->port:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 273
    goto :goto_0

    .line 275
    :cond_4
    iget-object v3, p0, Lio/sentry/dsn/Dsn;->host:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/dsn/Dsn;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 276
    goto :goto_0

    .line 278
    :cond_5
    iget-object v3, p0, Lio/sentry/dsn/Dsn;->options:Ljava/util/Map;

    iget-object v4, v0, Lio/sentry/dsn/Dsn;->options:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 279
    goto :goto_0

    .line 281
    :cond_6
    iget-object v3, p0, Lio/sentry/dsn/Dsn;->path:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/dsn/Dsn;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 282
    goto :goto_0

    .line 284
    :cond_7
    iget-object v3, p0, Lio/sentry/dsn/Dsn;->projectId:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/dsn/Dsn;->projectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 285
    goto :goto_0

    .line 287
    :cond_8
    iget-object v3, p0, Lio/sentry/dsn/Dsn;->protocol:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lio/sentry/dsn/Dsn;->protocol:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/dsn/Dsn;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 288
    goto :goto_0

    .line 287
    :cond_a
    iget-object v3, v0, Lio/sentry/dsn/Dsn;->protocol:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 290
    :cond_b
    iget-object v3, p0, Lio/sentry/dsn/Dsn;->protocolSettings:Ljava/util/Set;

    iget-object v4, v0, Lio/sentry/dsn/Dsn;->protocolSettings:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 291
    goto :goto_0

    .line 293
    :cond_c
    iget-object v3, p0, Lio/sentry/dsn/Dsn;->publicKey:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/dsn/Dsn;->publicKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 294
    goto :goto_0

    .line 296
    :cond_d
    iget-object v3, p0, Lio/sentry/dsn/Dsn;->secretKey:Ljava/lang/String;

    iget-object v4, v0, Lio/sentry/dsn/Dsn;->secretKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 297
    goto/16 :goto_0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lio/sentry/dsn/Dsn;->options:Ljava/util/Map;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lio/sentry/dsn/Dsn;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lio/sentry/dsn/Dsn;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolSettings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lio/sentry/dsn/Dsn;->protocolSettings:Ljava/util/Set;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lio/sentry/dsn/Dsn;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lio/sentry/dsn/Dsn;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lio/sentry/dsn/Dsn;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Lio/sentry/dsn/Dsn;->publicKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 306
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/sentry/dsn/Dsn;->projectId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 307
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/sentry/dsn/Dsn;->host:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 308
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/sentry/dsn/Dsn;->port:I

    add-int v0, v1, v2

    .line 309
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/sentry/dsn/Dsn;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 310
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dsn{uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/dsn/Dsn;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
