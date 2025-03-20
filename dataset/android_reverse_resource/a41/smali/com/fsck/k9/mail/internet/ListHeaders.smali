.class public Lcom/fsck/k9/mail/internet/ListHeaders;
.super Ljava/lang/Object;
.source "ListHeaders.java"


# static fields
.field public static final LIST_POST_HEADER:Ljava/lang/String; = "List-Post"

.field private static final MAILTO_CONTAINER_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "<(mailto:.+)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/mail/internet/ListHeaders;->MAILTO_CONTAINER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractAddress(Ljava/lang/String;)Lcom/fsck/k9/mail/Address;
    .locals 5
    .param p0, "headerValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 57
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v3

    .line 61
    :cond_1
    sget-object v4, Lcom/fsck/k9/mail/internet/ListHeaders;->MAILTO_CONTAINER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 62
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "mailToUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "emailAddress":Ljava/lang/String;
    new-instance v3, Lcom/fsck/k9/mail/Address;

    invoke-direct {v3, v0}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getListPostAddresses(Lcom/fsck/k9/mail/Message;)[Lcom/fsck/k9/mail/Address;
    .locals 7
    .param p0, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v4, 0x0

    .line 40
    const-string v5, "List-Post"

    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "headerValues":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 42
    new-array v4, v4, [Lcom/fsck/k9/mail/Address;

    .line 53
    :goto_0
    return-object v4

    .line 45
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v3, "listPostAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 47
    .local v1, "headerValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/ListHeaders;->extractAddress(Ljava/lang/String;)Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 48
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v1    # "headerValue":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/fsck/k9/mail/Address;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fsck/k9/mail/Address;

    goto :goto_0
.end method
