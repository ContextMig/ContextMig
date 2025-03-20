.class public Lcom/fsck/k9/autocrypt/AutocryptOperations;
.super Ljava/lang/Object;
.source "AutocryptOperations.java"


# instance fields
.field private final autocryptHeaderParser:Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;)V
    .locals 0
    .param p1, "autocryptHeaderParser"    # Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/fsck/k9/autocrypt/AutocryptOperations;->autocryptHeaderParser:Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/fsck/k9/autocrypt/AutocryptOperations;
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;->getInstance()Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;

    move-result-object v0

    .line 20
    .local v0, "autocryptHeaderParser":Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;
    new-instance v1, Lcom/fsck/k9/autocrypt/AutocryptOperations;

    invoke-direct {v1, v0}, Lcom/fsck/k9/autocrypt/AutocryptOperations;-><init>(Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;)V

    return-object v1
.end method


# virtual methods
.method public addAutocryptHeaderToMessage(Lcom/fsck/k9/mail/Message;[BLjava/lang/String;Z)V
    .locals 3
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "keyData"    # [B
    .param p3, "autocryptAddress"    # Ljava/lang/String;
    .param p4, "preferEncryptMutual"    # Z

    .prologue
    .line 56
    new-instance v0, Lcom/fsck/k9/autocrypt/AutocryptHeader;

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2, p3, p2, p4}, Lcom/fsck/k9/autocrypt/AutocryptHeader;-><init>(Ljava/util/Map;Ljava/lang/String;[BZ)V

    .line 58
    .local v0, "autocryptHeader":Lcom/fsck/k9/autocrypt/AutocryptHeader;
    invoke-virtual {v0}, Lcom/fsck/k9/autocrypt/AutocryptHeader;->toRawHeaderString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "rawAutocryptHeader":Ljava/lang/String;
    const-string v2, "Autocrypt"

    invoke-virtual {p1, v2, v1}, Lcom/fsck/k9/mail/Message;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public addAutocryptPeerUpdateToIntentIfPresent(Lcom/fsck/k9/mail/Message;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "currentMessage"    # Lcom/fsck/k9/mail/Message;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 29
    iget-object v7, p0, Lcom/fsck/k9/autocrypt/AutocryptOperations;->autocryptHeaderParser:Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;

    invoke-virtual {v7, p1}, Lcom/fsck/k9/autocrypt/AutocryptHeaderParser;->getValidAutocryptHeader(Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/autocrypt/AutocryptHeader;

    move-result-object v0

    .line 30
    .local v0, "autocryptHeader":Lcom/fsck/k9/autocrypt/AutocryptHeader;
    if-nez v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v6

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, "messageFromAddress":Ljava/lang/String;
    iget-object v7, v0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->addr:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v4

    .line 40
    .local v4, "messageDate":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v3

    .line 41
    .local v3, "internalDate":Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, v4

    .line 43
    .local v2, "effectiveDate":Ljava/util/Date;
    :goto_1
    iget-object v6, v0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->keyData:[B

    iget-boolean v7, v0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->isPreferEncryptMutual:Z

    invoke-static {v6, v2, v7}, Lorg/openintents/openpgp/AutocryptPeerUpdate;->create([BLjava/util/Date;Z)Lorg/openintents/openpgp/AutocryptPeerUpdate;

    move-result-object v1

    .line 45
    .local v1, "data":Lorg/openintents/openpgp/AutocryptPeerUpdate;
    const-string v6, "autocrypt_peer_id"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v6, "autocrypt_peer_update"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    const/4 v6, 0x1

    goto :goto_0

    .end local v1    # "data":Lorg/openintents/openpgp/AutocryptPeerUpdate;
    .end local v2    # "effectiveDate":Ljava/util/Date;
    :cond_2
    move-object v2, v3

    .line 41
    goto :goto_1
.end method

.method public hasAutocryptHeader(Lcom/fsck/k9/mail/Message;)Z
    .locals 1
    .param p1, "currentMessage"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 51
    const-string v0, "Autocrypt"

    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
