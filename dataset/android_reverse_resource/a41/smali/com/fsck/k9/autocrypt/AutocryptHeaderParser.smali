.class Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;
.super Ljava/lang/Object;
.source "AutocryptHeaderParser.java"


# static fields
.field private static final INSTANCE:Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;

    invoke-direct {v0}, Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;-><init>()V

    sput-object v0, Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;->INSTANCE:Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;->INSTANCE:Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;

    return-object v0
.end method

.method private hasCriticalParameters(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "parameterName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 85
    .end local v0    # "parameterName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseAllAutocryptHeaders([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "headers"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/autocrypt/AutocryptHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "autocryptHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/autocrypt/AutocryptHeader;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p1, v3

    .line 92
    .local v2, "header":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;->parseAutocryptHeader(Ljava/lang/String;)Lcom/fsck/k9/autocrypt/AutocryptHeader;

    move-result-object v0

    .line 93
    .local v0, "autocryptHeader":Lcom/fsck/k9/autocrypt/AutocryptHeader;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "autocryptHeader":Lcom/fsck/k9/autocrypt/AutocryptHeader;
    .end local v2    # "header":Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method getValidAutocryptHeader(Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/autocrypt/AutocryptHeader;
    .locals 5
    .param p1, "currentMessage"    # Lcom/fsck/k9/mail/Message;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 30
    const-string v4, "Autocrypt"

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "headers":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;->parseAllAutocryptHeaders([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 33
    .local v0, "autocryptHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/autocrypt/AutocryptHeader;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 34
    .local v2, "isSingleValidHeader":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/autocrypt/AutocryptHeader;

    :goto_1
    return-object v3

    .end local v2    # "isSingleValidHeader":Z
    :cond_0
    move v2, v3

    .line 33
    goto :goto_0

    .line 34
    .restart local v2    # "isSingleValidHeader":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method parseAutocryptHeader(Ljava/lang/String;)Lcom/fsck/k9/autocrypt/AutocryptHeader;
    .locals 11
    .param p1, "headerValue"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 40
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getAllHeaderParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 42
    .local v3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "type"

    invoke-interface {v3, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 43
    .local v6, "type":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 44
    const-string v8, "autocrypt: unsupported type parameter %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_0
    :goto_0
    return-object v7

    .line 48
    :cond_1
    const-string v8, "keydata"

    invoke-interface {v3, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "base64KeyData":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 50
    const-string v8, "autocrypt: missing key parameter"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v0}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    .line 55
    .local v1, "byteString":Lokio/ByteString;
    if-nez v1, :cond_3

    .line 56
    const-string v8, "autocrypt: error parsing base64 data"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v8, "addr"

    invoke-interface {v3, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 61
    .local v5, "to":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 62
    const-string v8, "autocrypt: no to header!"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_4
    const/4 v2, 0x0

    .line 67
    .local v2, "isPreferEncryptMutual":Z
    const-string v8, "prefer-encrypt"

    invoke-interface {v3, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 68
    .local v4, "preferEncrypt":Ljava/lang/String;
    const-string v8, "mutual"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 69
    const/4 v2, 0x1

    .line 72
    :cond_5
    invoke-direct {p0, v3}, Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;->hasCriticalParameters(Ljava/util/Map;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 76
    new-instance v7, Lcom/fsck/k9/autocrypt/AutocryptHeader;

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v3, v5, v8, v2}, Lcom/fsck/k9/autocrypt/AutocryptHeader;-><init>(Ljava/util/Map;Ljava/lang/String;[BZ)V

    goto :goto_0
.end method
