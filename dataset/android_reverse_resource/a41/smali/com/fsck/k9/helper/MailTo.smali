.class public final Lcom/fsck/k9/helper/MailTo;
.super Ljava/lang/Object;
.source "MailTo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;
    }
.end annotation


# static fields
.field private static final BCC:Ljava/lang/String; = "bcc"

.field private static final BODY:Ljava/lang/String; = "body"

.field private static final CC:Ljava/lang/String; = "cc"

.field private static final EMPTY_ADDRESS_LIST:[Lcom/fsck/k9/mail/Address;

.field private static final MAILTO_SCHEME:Ljava/lang/String; = "mailto"

.field private static final SUBJECT:Ljava/lang/String; = "subject"

.field private static final TO:Ljava/lang/String; = "to"


# instance fields
.field private final bccAddresses:[Lcom/fsck/k9/mail/Address;

.field private final body:Ljava/lang/String;

.field private final ccAddresses:[Lcom/fsck/k9/mail/Address;

.field private final subject:Ljava/lang/String;

.field private final toAddresses:[Lcom/fsck/k9/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    sput-object v0, Lcom/fsck/k9/helper/MailTo;->EMPTY_ADDRESS_LIST:[Lcom/fsck/k9/mail/Address;

    return-void
.end method

.method private constructor <init>([Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "toAddresses"    # [Lcom/fsck/k9/mail/Address;
    .param p2, "ccAddresses"    # [Lcom/fsck/k9/mail/Address;
    .param p3, "bccAddresses"    # [Lcom/fsck/k9/mail/Address;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/fsck/k9/helper/MailTo;->toAddresses:[Lcom/fsck/k9/mail/Address;

    .line 100
    iput-object p2, p0, Lcom/fsck/k9/helper/MailTo;->ccAddresses:[Lcom/fsck/k9/mail/Address;

    .line 101
    iput-object p3, p0, Lcom/fsck/k9/helper/MailTo;->bccAddresses:[Lcom/fsck/k9/mail/Address;

    .line 102
    iput-object p4, p0, Lcom/fsck/k9/helper/MailTo;->subject:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lcom/fsck/k9/helper/MailTo;->body:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private static getFirstParameterValue(Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static isMailTo(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    const-string v0, "mailto"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Landroid/net/Uri;)Lcom/fsck/k9/helper/MailTo;
    .locals 15
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v13, "Argument \'uri\' must not be null"

    invoke-direct {v0, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/helper/MailTo;->isMailTo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v13, "Not a mailto scheme"

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    .line 44
    .local v11, "schemaSpecific":Ljava/lang/String;
    const/16 v0, 0x3f

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 45
    .local v8, "end":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_3

    .line 46
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 49
    :cond_3
    new-instance v9, Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "foo://bar?"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;-><init>(Landroid/net/Uri;)V

    .line 53
    .local v9, "params":Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;
    invoke-virtual {v11, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, "recipient":Ljava/lang/String;
    const-string v0, "to"

    invoke-virtual {v9, v0}, Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 56
    .local v12, "toList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    invoke-interface {v12, v14, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    :cond_4
    const-string v0, "cc"

    invoke-virtual {v9, v0}, Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 61
    .local v7, "ccList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "bcc"

    invoke-virtual {v9, v0}, Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 63
    .local v6, "bccList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v12}, Lcom/fsck/k9/helper/MailTo;->toAddressArray(Ljava/util/List;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .line 64
    .local v1, "toAddresses":[Lcom/fsck/k9/mail/Address;
    invoke-static {v7}, Lcom/fsck/k9/helper/MailTo;->toAddressArray(Ljava/util/List;)[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    .line 65
    .local v2, "ccAddresses":[Lcom/fsck/k9/mail/Address;
    invoke-static {v6}, Lcom/fsck/k9/helper/MailTo;->toAddressArray(Ljava/util/List;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    .line 67
    .local v3, "bccAddresses":[Lcom/fsck/k9/mail/Address;
    const-string v0, "subject"

    invoke-static {v9, v0}, Lcom/fsck/k9/helper/MailTo;->getFirstParameterValue(Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "subject":Ljava/lang/String;
    const-string v0, "body"

    invoke-static {v9, v0}, Lcom/fsck/k9/helper/MailTo;->getFirstParameterValue(Lcom/fsck/k9/helper/MailTo$CaseInsensitiveParamWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "body":Ljava/lang/String;
    new-instance v0, Lcom/fsck/k9/helper/MailTo;

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/helper/MailTo;-><init>([Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static toAddressArray(Ljava/util/List;)[Lcom/fsck/k9/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/fsck/k9/mail/Address;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "recipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/fsck/k9/helper/MailTo;->EMPTY_ADDRESS_LIST:[Lcom/fsck/k9/mail/Address;

    .line 85
    :goto_0
    return-object v1

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/fsck/k9/helper/MailTo;->toCommaSeparatedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "addressList":Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    goto :goto_0
.end method

.method private static toCommaSeparatedString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getBcc()[Lcom/fsck/k9/mail/Address;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fsck/k9/helper/MailTo;->bccAddresses:[Lcom/fsck/k9/mail/Address;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fsck/k9/helper/MailTo;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCc()[Lcom/fsck/k9/mail/Address;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fsck/k9/helper/MailTo;->ccAddresses:[Lcom/fsck/k9/mail/Address;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fsck/k9/helper/MailTo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()[Lcom/fsck/k9/mail/Address;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fsck/k9/helper/MailTo;->toAddresses:[Lcom/fsck/k9/mail/Address;

    return-object v0
.end method
