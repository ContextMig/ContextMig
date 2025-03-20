.class Lcom/fsck/k9/mail/internet/JisSupport;
.super Ljava/lang/Object;
.source "JisSupport.java"


# static fields
.field public static final SHIFT_JIS:Ljava/lang/String; = "shift_jis"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAddressFromReceivedHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "receivedHeader"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getJisVariantFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 39
    if-nez p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 42
    :cond_1
    const-string v1, "docomo.ne.jp"

    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "dwmail.jp"

    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "pdx.ne.jp"

    .line 43
    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "willcom.com"

    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "emnet.ne.jp"

    .line 44
    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "emobile.ne.jp"

    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    :cond_2
    const-string v0, "docomo"

    goto :goto_0

    .line 46
    :cond_3
    const-string v1, "softbank.ne.jp"

    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "vodafone.ne.jp"

    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "disney.ne.jp"

    .line 47
    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "vertuclub.ne.jp"

    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    :cond_4
    const-string v0, "softbank"

    goto :goto_0

    .line 49
    :cond_5
    const-string v1, "ezweb.ne.jp"

    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ido.ne.jp"

    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    :cond_6
    const-string v0, "kddi"

    goto :goto_0
.end method

.method private static getJisVariantFromFromHeaders(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 96
    .local v0, "addresses":[Lcom/fsck/k9/mail/Address;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 100
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->getJisVariantFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getJisVariantFromMailerHeaders(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 57
    const-string v2, "X-Mailer"

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "mailerHeaders":[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    aget-object v2, v0, v4

    const-string v3, "iPhone Mail "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v0, v4

    const-string v3, "iPad Mail "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    :cond_2
    const-string v1, "iphone"

    goto :goto_0
.end method

.method public static getJisVariantFromMessage(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 12
    if-nez p0, :cond_1

    .line 13
    const/4 v0, 0x0

    .line 30
    :cond_0
    :goto_0
    return-object v0

    .line 18
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->getJisVariantFromReceivedHeaders(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "variant":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->getJisVariantFromFromHeaders(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 30
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->getJisVariantFromMailerHeaders(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getJisVariantFromReceivedHeaders(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
    .locals 7
    .param p0, "message"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 71
    const-string v5, "Received"

    invoke-interface {p0, v5}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "receivedHeaders":[Ljava/lang/String;
    array-length v5, v2

    if-nez v5, :cond_0

    move-object v3, v4

    .line 86
    :goto_0
    return-object v3

    .line 76
    :cond_0
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, v2, v5

    .line 77
    .local v1, "receivedHeader":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->getAddressFromReceivedHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 76
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->getJisVariantFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "variant":Ljava/lang/String;
    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "receivedHeader":Ljava/lang/String;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_3
    move-object v3, v4

    .line 86
    goto :goto_0
.end method

.method private static isInDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 105
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v2

    .line 109
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    .local v0, "c":C
    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_0

    .line 114
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isShiftJis(Ljava/lang/String;)Z
    .locals 2
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    const-string v0, "x-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-shift_jis-2007"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
