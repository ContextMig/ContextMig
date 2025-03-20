.class public Lcom/beetstra/jutf7/CharsetProvider;
.super Ljava/nio/charset/spi/CharsetProvider;
.source "CharsetProvider.java"


# static fields
.field private static final UTF7_ALIASES:[Ljava/lang/String;

.field private static final UTF7_M_ALIASES:[Ljava/lang/String;

.field private static final UTF7_M_NAME:Ljava/lang/String; = "X-MODIFIED-UTF-7"

.field private static final UTF7_NAME:Ljava/lang/String; = "UTF-7"

.field private static final UTF7_O_ALIASES:[Ljava/lang/String;

.field private static final UTF7_O_NAME:Ljava/lang/String; = "X-UTF-7-OPTIONAL"


# instance fields
.field private charsets:Ljava/util/List;

.field private imap4charset:Ljava/nio/charset/Charset;

.field private utf7charset:Ljava/nio/charset/Charset;

.field private utf7oCharset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "UNICODE-1-1-UTF-7"

    aput-object v1, v0, v2

    const-string v1, "CSUNICODE11UTF7"

    aput-object v1, v0, v3

    const-string v1, "X-RFC2152"

    aput-object v1, v0, v4

    const-string v1, "X-RFC-2152"

    aput-object v1, v0, v5

    sput-object v0, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_ALIASES:[Ljava/lang/String;

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "X-RFC2152-OPTIONAL"

    aput-object v1, v0, v2

    const-string v1, "X-RFC-2152-OPTIONAL"

    aput-object v1, v0, v3

    sput-object v0, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_O_ALIASES:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "X-IMAP-MODIFIED-UTF-7"

    aput-object v1, v0, v2

    const-string v1, "X-IMAP4-MODIFIED-UTF7"

    aput-object v1, v0, v3

    const-string v1, "X-IMAP4-MODIFIED-UTF-7"

    aput-object v1, v0, v4

    const-string v1, "X-RFC3501"

    aput-object v1, v0, v5

    const-string v1, "X-RFC-3501"

    aput-object v1, v0, v6

    sput-object v0, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_M_ALIASES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/nio/charset/spi/CharsetProvider;-><init>()V

    .line 49
    new-instance v0, Lcom/beetstra/jutf7/UTF7Charset;

    const-string v1, "UTF-7"

    sget-object v2, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_ALIASES:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/beetstra/jutf7/UTF7Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->utf7charset:Ljava/nio/charset/Charset;

    .line 50
    new-instance v0, Lcom/beetstra/jutf7/UTF7Charset;

    const-string v1, "X-UTF-7-OPTIONAL"

    sget-object v2, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_O_ALIASES:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Lcom/beetstra/jutf7/UTF7Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->utf7oCharset:Ljava/nio/charset/Charset;

    .line 51
    new-instance v0, Lcom/beetstra/jutf7/ModifiedUTF7Charset;

    const-string v1, "X-MODIFIED-UTF-7"

    sget-object v2, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_M_ALIASES:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/beetstra/jutf7/ModifiedUTF7Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->imap4charset:Ljava/nio/charset/Charset;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/beetstra/jutf7/CharsetProvider;->utf7charset:Ljava/nio/charset/Charset;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/beetstra/jutf7/CharsetProvider;->imap4charset:Ljava/nio/charset/Charset;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/beetstra/jutf7/CharsetProvider;->utf7oCharset:Ljava/nio/charset/Charset;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 85
    invoke-static {}, Lcom/beetstra/jutf7/CharsetProvider;->showUsage()V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v2, "encode"

    aget-object v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    aget-object v2, p0, v5

    const-string v3, "UTF-7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 88
    .local v1, "encoded":[B
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v1    # "encoded":[B
    :cond_1
    const-string v2, "decode"

    aget-object v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    aget-object v2, p0, v5

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 91
    .local v0, "bytes":[B
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-7"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v0    # "bytes":[B
    :cond_2
    invoke-static {}, Lcom/beetstra/jutf7/CharsetProvider;->showUsage()V

    goto :goto_0
.end method

.method private static showUsage()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: java -jar jutf7.jar [encode|decode] <text>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 99
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Example: java -jar jutf7 encode caf\u00d4\u00f8\u03a9"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Result: caf+AOk-"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object v2, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 65
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    return-object v0

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 70
    .restart local v0    # "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 73
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public charsets()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
