.class Lcom/fsck/k9/message/html/BitcoinUriParser;
.super Ljava/lang/Object;
.source "BitcoinUriParser.java"

# interfaces
.implements Lcom/fsck/k9/message/html/UriParser;


# static fields
.field private static final BITCOIN_URI_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "bitcoin:[1-9a-km-zA-HJ-NP-Z]{27,34}(\\?[a-zA-Z0-9$\\-_.+!*\'(),%:@&=]*)?"

    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/html/BitcoinUriParser;->BITCOIN_URI_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public linkifyUri(Ljava/lang/String;ILjava/lang/StringBuffer;)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I
    .param p3, "outputBuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 14
    sget-object v2, Lcom/fsck/k9/message/html/BitcoinUriParser;->BITCOIN_URI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 16
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 27
    .end local p2    # "startPos":I
    :cond_0
    :goto_0
    return p2

    .line 20
    .restart local p2    # "startPos":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "bitcoinUri":Ljava/lang/String;
    const-string v2, "<a href=\""

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\">"

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "</a>"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    goto :goto_0
.end method
