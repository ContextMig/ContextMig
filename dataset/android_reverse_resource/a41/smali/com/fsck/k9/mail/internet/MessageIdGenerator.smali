.class public Lcom/fsck/k9/mail/internet/MessageIdGenerator;
.super Ljava/lang/Object;
.source "MessageIdGenerator.java"


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/fsck/k9/mail/internet/MessageIdGenerator;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/fsck/k9/mail/internet/MessageIdGenerator;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MessageIdGenerator;-><init>()V

    return-object v0
.end method


# virtual methods
.method public generateMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 7
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 23
    const/4 v1, 0x0

    .line 25
    .local v1, "hostname":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 26
    .local v0, "from":[Lcom/fsck/k9/mail/Address;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lt v4, v6, :cond_0

    .line 27
    aget-object v4, v0, v5

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Address;->getHostname()Ljava/lang/String;

    move-result-object v1

    .line 30
    :cond_0
    if-nez v1, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    .line 32
    .local v2, "replyTo":[Lcom/fsck/k9/mail/Address;
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lt v4, v6, :cond_1

    .line 33
    aget-object v4, v2, v5

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Address;->getHostname()Ljava/lang/String;

    move-result-object v1

    .line 37
    .end local v2    # "replyTo":[Lcom/fsck/k9/mail/Address;
    :cond_1
    if-nez v1, :cond_2

    .line 38
    const-string v1, "email.android.com"

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdGenerator;->generateUuid()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "uuid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected generateUuid()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
