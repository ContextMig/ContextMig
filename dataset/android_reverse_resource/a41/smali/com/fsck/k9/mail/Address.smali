.class public Lcom/fsck/k9/mail/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ATOM:Ljava/util/regex/Pattern;

.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mPersonal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "^(?:[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]|\\s)+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    sput-object v0, Lcom/fsck/k9/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/Address;)V
    .locals 1
    .param p1, "address"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    iput-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .param p3, "parse"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p3, :cond_3

    .line 50
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 51
    .local v2, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 52
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 53
    .local v1, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    iput-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    .line 73
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "token":Landroid/text/util/Rfc822Token;
    .end local v2    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "token":Landroid/text/util/Rfc822Token;
    .restart local v2    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    if-nez p2, :cond_2

    const/4 v3, 0x0

    :goto_1
    iput-object v3, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 70
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "token":Landroid/text/util/Rfc822Token;
    .end local v2    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_3
    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    goto :goto_0
.end method

.method public static pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .locals 7
    .param p0, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 274
    const/4 v5, 0x0

    .line 291
    :goto_0
    return-object v5

    .line 276
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v1, p0

    .local v1, "count":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 278
    aget-object v0, p0, v2

    .line 279
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "personal":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 282
    const-string v5, ";\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_1
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_2

    .line 288
    const-string v5, ",\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v3    # "personal":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .locals 11
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    sget-object v6, Lcom/fsck/k9/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;

    .line 157
    :goto_0
    return-object v6

    .line 144
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    :try_start_0
    sget-object v6, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->DEFAULT:Lorg/apache/james/mime4j/field/address/DefaultAddressParser;

    sget-object v7, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v6, p0, v7}, Lorg/apache/james/mime4j/field/address/DefaultAddressParser;->parseAddressList(Ljava/lang/CharSequence;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/AddressList;->flatten()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v4

    .line 148
    .local v4, "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v4}, Lorg/apache/james/mime4j/dom/address/MailboxList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 149
    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/dom/address/MailboxList;->get(I)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v3

    .line 150
    .local v3, "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    new-instance v6, Lcom/fsck/k9/mail/Address;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .end local v4    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :catch_0
    move-exception v5

    .line 153
    .local v5, "pe":Lorg/apache/james/mime4j/MimeException;
    const-string v6, "MimeException in Address.parse()"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v6, Lcom/fsck/k9/mail/Address;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p0, v10}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v5    # "pe":Lorg/apache/james/mime4j/MimeException;
    :cond_1
    sget-object v6, Lcom/fsck/k9/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/fsck/k9/mail/Address;

    goto :goto_0
.end method

.method public static parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .locals 10
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 123
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v3, v4

    .line 124
    .local v2, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 126
    new-instance v7, Lcom/fsck/k9/mail/Address;

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v5}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "token":Landroid/text/util/Rfc822Token;
    .end local v3    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    sget-object v4, Lcom/fsck/k9/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fsck/k9/mail/Address;

    return-object v4
.end method

.method public static quoteAtoms(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 302
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/fsck/k9/mail/Address;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 326
    if-nez p0, :cond_1

    .line 327
    const/4 p0, 0x0

    .line 332
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 329
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const-string v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .locals 3
    .param p0, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 216
    if-nez p0, :cond_0

    .line 217
    const/4 v2, 0x0

    .line 226
    :goto_0
    return-object v2

    .line 219
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 221
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 223
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ", "

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .locals 10
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 236
    if-nez p0, :cond_0

    .line 237
    new-array v7, v9, [Lcom/fsck/k9/mail/Address;

    .line 261
    :goto_0
    return-object v7

    .line 239
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 241
    .local v3, "length":I
    const/4 v5, 0x0

    .line 242
    .local v5, "pairStartIndex":I
    const/4 v4, 0x0

    .line 243
    .local v4, "pairEndIndex":I
    const/4 v1, 0x0

    .line 244
    .local v1, "addressEndIndex":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 245
    const-string v7, ",\u0000"

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 246
    if-ne v4, v8, :cond_1

    .line 247
    move v4, v3

    .line 249
    :cond_1
    const-string v7, ";\u0000"

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "address":Ljava/lang/String;
    const/4 v6, 0x0

    .line 252
    .local v6, "personal":Ljava/lang/String;
    if-eq v1, v8, :cond_2

    if-le v1, v4, :cond_3

    .line 253
    :cond_2
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_2
    new-instance v7, Lcom/fsck/k9/mail/Address;

    invoke-direct {v7, v0, v6, v9}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v5, v4, 0x2

    .line 260
    goto :goto_1

    .line 255
    :cond_3
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 256
    add-int/lit8 v7, v1, 0x2

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 261
    .end local v0    # "address":Ljava/lang/String;
    .end local v6    # "personal":Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/fsck/k9/mail/Address;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/fsck/k9/mail/Address;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    if-ne p0, p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 167
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 170
    check-cast v0, Lcom/fsck/k9/mail/Address;

    .line 172
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    iget-object v3, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 173
    goto :goto_0

    .line 172
    :cond_5
    iget-object v3, v0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 176
    :cond_6
    iget-object v3, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    iget-object v2, v0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "hostIdx":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "hash":I
    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 188
    :cond_1
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 2
    .param p1, "newPersonal"    # Ljava/lang/String;

    .prologue
    .line 102
    move-object v0, p1

    .line 103
    .local v0, "personal":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :cond_0
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_1
    iput-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/mail/Address;->quoteAtoms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
