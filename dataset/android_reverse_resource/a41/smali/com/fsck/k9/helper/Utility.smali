.class public Lcom/fsck/k9/helper/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final IMG_PATTERN:Ljava/util/regex/Pattern;

.field private static final IMG_SRC_REGEX:Ljava/lang/String; = "(?is:<img[^>]+src\\s*=\\s*[\'\"]?([a-z]+)\\:)"

.field private static final MESSAGE_ID:Ljava/util/regex/Pattern;

.field private static final NEWLINE_REGEX:Ljava/lang/String; = "(?:\\r?\\n)"

.field private static final RESPONSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 36
    const-string v0, "((Re|Fw|Fwd|Aw|R\\u00E9f\\.)(\\[\\d+\\])?[\\u00A0 ]?: *)+"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\\[[-_a-z0-9]+\\] "

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/helper/Utility;->TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 370
    const-string v0, "(?is:<img[^>]+src\\s*=\\s*[\'\"]?([a-z]+)\\:)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/helper/Utility;->IMG_PATTERN:Ljava/util/regex/Pattern;

    .line 420
    const-string v0, "<(?:[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]+(?:\\.[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]+)*|\"(?:[^\\\\\"]|\\\\.)*\")@(?:[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]+(?:\\.[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]+)*|\\[(?:[^\\\\\\]]|\\\\.)*\\])>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/helper/Utility;->MESSAGE_ID:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 48
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 49
    .local v0, "element":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    const/4 v1, 0x1

    .line 53
    .end local v0    # "element":Ljava/lang/Object;
    :cond_0
    return v1

    .line 48
    .restart local v0    # "element":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs arrayContainsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "o"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 66
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 67
    .local v0, "element":Ljava/lang/Object;
    invoke-static {p1, v0}, Lcom/fsck/k9/helper/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    const/4 v1, 0x1

    .line 71
    .end local v0    # "element":Ljava/lang/Object;
    :cond_0
    return v1

    .line 66
    .restart local v0    # "element":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 398
    if-eqz p0, :cond_0

    .line 399
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_0
    return-void
.end method

.method public static combine(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static combine([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 1
    .param p0, "parts"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static domainFieldValid(Landroid/widget/EditText;)Z
    .locals 4
    .param p0, "view"    # Landroid/widget/EditText;

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 117
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "s":Ljava/lang/String;
    const-string v2, "^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)*[a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfd

    if-gt v2, v3, :cond_1

    .line 126
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 122
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    const-string v2, "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static extractMessageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 451
    sget-object v1, Lcom/fsck/k9/helper/Utility;->MESSAGE_ID:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 453
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 457
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static extractMessageIds(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v2, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/fsck/k9/helper/Utility;->MESSAGE_ID:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 440
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 441
    .local v3, "start":I
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "messageId":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 445
    goto :goto_0

    .line 447
    .end local v1    # "messageId":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 464
    sget-object v0, Lcom/fsck/k9/helper/Utility;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fsck/k9/helper/Utility;->sMainThreadHandler:Landroid/os/Handler;

    .line 469
    :cond_0
    sget-object v0, Lcom/fsck/k9/helper/Utility;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static hasConnectivity(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 407
    const-string v3, "connectivity"

    .line 408
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 409
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v2

    .line 412
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 413
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 414
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static hasExternalImages(Ljava/lang/String;)Z
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 378
    sget-object v4, Lcom/fsck/k9/helper/Utility;->IMG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 379
    .local v0, "imgMatches":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "uriScheme":Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    :cond_1
    const-string v4, "External images found"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    .end local v1    # "uriScheme":Ljava/lang/String;
    :goto_0
    return v2

    .line 387
    :cond_2
    const-string v2, "No external images."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 388
    goto :goto_0
.end method

.method public static varargs isAnyMimeType(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "o"    # Ljava/lang/String;
    .param p1, "a"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 57
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 58
    .local v0, "element":Ljava/lang/String;
    invoke-static {v0, p0}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    const/4 v1, 0x1

    .line 62
    .end local v0    # "element":Ljava/lang/String;
    :cond_0
    return v1

    .line 57
    .restart local v0    # "element":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static requiredFieldValid(Landroid/text/Editable;)Z
    .locals 1
    .param p0, "s"    # Landroid/text/Editable;

    .prologue
    .line 112
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requiredFieldValid(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "alpha"    # I

    .prologue
    .line 140
    return-void
.end method

.method public static setContactForBadge(Lcom/fsck/k9/ui/ContactBadge;Lcom/fsck/k9/mail/Address;)V
    .locals 4
    .param p0, "contactBadge"    # Lcom/fsck/k9/ui/ContactBadge;
    .param p1, "address"    # Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v3, 0x1

    .line 483
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 484
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v0, "extraContactInfo":Landroid/os/Bundle;
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v0}, Lcom/fsck/k9/ui/ContactBadge;->assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 490
    .end local v0    # "extraContactInfo":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/fsck/k9/ui/ContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static stripNewLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "multiLineString"    # Ljava/lang/String;

    .prologue
    .line 365
    const-string v0, "[\\r\\n]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, "lastPrefix":I
    sget-object v6, Lcom/fsck/k9/helper/Utility;->TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 299
    .local v3, "tagMatcher":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 301
    .local v2, "tag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 303
    .local v4, "tagPresent":Z
    const/4 v5, 0x0

    .line 304
    .local v5, "tagStripped":Z
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    const/4 v4, 0x1

    .line 306
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    if-nez v6, :cond_0

    .line 308
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 312
    const/4 v5, 0x1

    .line 316
    :cond_0
    sget-object v6, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 324
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_4

    .line 325
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 326
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    if-ne v6, v0, :cond_4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 328
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 327
    invoke-virtual {p0, v6, v2, v8, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 329
    :cond_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 331
    if-eqz v4, :cond_1

    .line 332
    const/4 v5, 0x0

    .line 333
    if-nez v2, :cond_3

    .line 335
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    if-ne v6, v0, :cond_1

    .line 336
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v0, v6

    .line 338
    const/4 v5, 0x1

    goto :goto_0

    .line 340
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v0, v6

    .line 348
    const/4 v5, 0x1

    goto :goto_0

    .line 353
    :cond_4
    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 355
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v0, v6

    .line 357
    :cond_5
    const/4 v6, -0x1

    if-le v0, v6, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_6

    .line 358
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 360
    :goto_1
    return-object v6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "(?:\\r?\\n)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 184
    .local v0, "piece":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v0, p1, v6, v3}, Lcom/fsck/k9/helper/Utility;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "piece":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I
    .param p2, "newLineStr"    # Ljava/lang/String;
    .param p3, "wrapLongWords"    # Z

    .prologue
    const/16 v5, 0x20

    .line 229
    if-nez p0, :cond_0

    .line 230
    const/4 v4, 0x0

    .line 279
    :goto_0
    return-object v4

    .line 232
    :cond_0
    if-nez p2, :cond_1

    .line 233
    const-string p2, "\r\n"

    .line 235
    :cond_1
    const/4 v4, 0x1

    if-ge p1, v4, :cond_2

    .line 236
    const/4 p1, 0x1

    .line 238
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 239
    .local v0, "inputLineLength":I
    const/4 v1, 0x0

    .line 240
    .local v1, "offset":I
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    .local v3, "wrappedLine":Ljava/lang/StringBuilder;
    :goto_1
    sub-int v4, v0, v1

    if-le v4, p1, :cond_7

    .line 243
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 245
    goto :goto_1

    .line 247
    :cond_3
    add-int v4, p1, v1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 249
    .local v2, "spaceToWrapAt":I
    if-lt v2, v1, :cond_4

    .line 251
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 256
    :cond_4
    if-eqz p3, :cond_5

    .line 258
    add-int v4, p1, v1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    add-int/2addr v1, p1

    goto :goto_1

    .line 263
    :cond_5
    add-int v4, p1, v1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 264
    if-ltz v2, :cond_6

    .line 265
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 269
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    move v1, v0

    goto :goto_1

    .line 277
    .end local v2    # "spaceToWrapAt":I
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
