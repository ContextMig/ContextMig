.class Lcom/fsck/k9/message/html/HttpUriParser;
.super Ljava/lang/Object;
.source "HttpUriParser.java"

# interfaces
.implements Lcom/fsck/k9/message/html/UriParser;


# static fields
.field private static final DOMAIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPv4_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUB_DELIM:Ljava/lang/String; = "!$&\'()*+,;="


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "[\\da-z](?:[\\da-z-]*[\\da-z])*(?:\\.[\\da-z](?:[\\da-z-]*[\\da-z])*)*(?::(\\d{0,5}))?"

    const/4 v1, 0x2

    .line 20
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/html/HttpUriParser;->DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    .line 22
    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})(:(\\d{0,5}))?"

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/html/HttpUriParser;->IPv4_PATTERN:Ljava/util/regex/Pattern;

    .line 22
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isHexDigit(I)Z
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 300
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p1, v0, :cond_3

    const/16 v0, 0x39

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchUnreservedPCTEncodedSubDelimClassesGreedy(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I
    .param p3, "additionalCharacters"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!$&\'()*+,;=-._~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "allowedCharacters":Ljava/lang/String;
    const/4 v3, 0x0

    .line 278
    .local v3, "shouldBeHex":I
    move v2, p2

    .local v2, "currentPos":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 279
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 281
    .local v1, "c":I
    invoke-direct {p0, v1}, Lcom/fsck/k9/message/html/HttpUriParser;->isHexDigit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 278
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_1
    if-nez v3, :cond_2

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 286
    const/16 v4, 0x25

    if-ne v1, v4, :cond_2

    .line 287
    const/4 v3, 0x2

    goto :goto_1

    .line 296
    .end local v1    # "c":I
    :cond_2
    return v2
.end method

.method private parse16BitHexSegment(Ljava/lang/String;II)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I

    .prologue
    .line 266
    move v0, p2

    .line 267
    .local v0, "currentPos":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/message/html/HttpUriParser;->isHexDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ge v0, p3, :cond_0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    return v0
.end method

.method private tryMatchAuthority(Ljava/lang/String;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 76
    const/16 v3, 0x2f

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 77
    .local v1, "authorityLimit":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 80
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/fsck/k9/message/html/HttpUriParser;->tryMatchUserInfo(Ljava/lang/String;II)I

    move-result v2

    .line 82
    .local v2, "authorityStart":I
    invoke-direct {p0, p1, v2}, Lcom/fsck/k9/message/html/HttpUriParser;->tryMatchDomainName(Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "authorityEnd":I
    if-eq v0, v2, :cond_2

    move p2, v0

    .line 97
    .end local p2    # "startPos":I
    :cond_1
    :goto_0
    return p2

    .line 87
    .restart local p2    # "startPos":I
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/fsck/k9/message/html/HttpUriParser;->tryMatchIpv4Address(Ljava/lang/String;IZ)I

    move-result v0

    .line 88
    if-eq v0, v2, :cond_3

    move p2, v0

    .line 89
    goto :goto_0

    .line 92
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/fsck/k9/message/html/HttpUriParser;->tryMatchIpv6Address(Ljava/lang/String;I)I

    move-result v0

    .line 93
    if-eq v0, v2, :cond_1

    move p2, v0

    .line 94
    goto :goto_0
.end method

.method private tryMatchDomainName(Ljava/lang/String;I)I
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 114
    :try_start_0
    sget-object v4, Lcom/fsck/k9/message/html/HttpUriParser;->DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 115
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-eq v4, p2, :cond_1

    .line 129
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local p2    # "startPos":I
    :cond_0
    :goto_0
    return p2

    .line 119
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local p2    # "startPos":I
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "portString":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, "port":I
    const v4, 0xffff

    if-gt v2, v4, :cond_0

    .line 127
    .end local v2    # "port":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 128
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "portString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private tryMatchIpv4Address(Ljava/lang/String;IZ)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I
    .param p3, "portAllowed"    # Z

    .prologue
    .line 134
    sget-object v5, Lcom/fsck/k9/message/html/HttpUriParser;->IPv4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 135
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 158
    .end local p2    # "startPos":I
    :cond_0
    :goto_0
    return p2

    .line 139
    .restart local p2    # "startPos":I
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v5, 0x4

    if-gt v0, v5, :cond_2

    .line 140
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 141
    .local v4, "segment":I
    const/16 v5, 0xff

    if-gt v4, v5, :cond_0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v4    # "segment":I
    :cond_2
    if-nez p3, :cond_3

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 150
    :cond_3
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "portString":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, "port":I
    const v5, 0xffff

    if-gt v2, v5, :cond_0

    .line 158
    .end local v2    # "port":I
    :cond_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    goto :goto_0
.end method

.method private tryMatchIpv6Address(Ljava/lang/String;I)I
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-eq p2, v10, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    const/16 v11, 0x5b

    if-eq v10, v11, :cond_1

    .line 262
    .end local p2    # "startPos":I
    :cond_0
    :goto_0
    return p2

    .line 166
    .restart local p2    # "startPos":I
    :cond_1
    const/16 v10, 0x5d

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 167
    .local v0, "addressEnd":I
    const/4 v10, -0x1

    if-eq v0, v10, :cond_0

    .line 172
    add-int/lit8 v5, p2, 0x1

    .line 173
    .local v5, "currentPos":I
    const/4 v1, 0x0

    .line 174
    .local v1, "beginSegmentsCount":I
    const/4 v6, 0x0

    .line 177
    .local v6, "endSegmentsCount":I
    const-string v10, "::"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 178
    .local v4, "compressionPos":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_3

    if-ge v4, v0, :cond_3

    const/4 v3, 0x1

    .line 179
    .local v3, "compressionEnabled":Z
    :goto_1
    if-eqz v3, :cond_5

    .line 180
    :goto_2
    if-ge v5, v4, :cond_4

    .line 182
    if-lez v1, :cond_2

    .line 183
    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_0

    .line 186
    add-int/lit8 v5, v5, 0x1

    .line 191
    :cond_2
    add-int/lit8 v10, v5, 0x4

    .line 192
    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-direct {p0, p1, v5, v10}, Lcom/fsck/k9/message/html/HttpUriParser;->parse16BitHexSegment(Ljava/lang/String;II)I

    move-result v9

    .line 193
    .local v9, "possibleSegmentEnd":I
    if-eq v9, v5, :cond_0

    .line 196
    move v5, v9

    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 198
    goto :goto_2

    .line 178
    .end local v3    # "compressionEnabled":Z
    .end local v9    # "possibleSegmentEnd":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 200
    .restart local v3    # "compressionEnabled":Z
    :cond_4
    add-int/lit8 v5, v5, 0x2

    .line 204
    :cond_5
    :goto_3
    if-ge v5, v0, :cond_8

    add-int v10, v1, v6

    const/16 v11, 0x8

    if-ge v10, v11, :cond_8

    .line 206
    if-lez v6, :cond_6

    .line 207
    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_0

    .line 210
    add-int/lit8 v5, v5, 0x1

    .line 215
    :cond_6
    const/16 v10, 0x3a

    invoke-virtual {p1, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 216
    .local v7, "nextColon":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_7

    if-le v7, v0, :cond_c

    :cond_7
    sub-int v10, v0, v5

    const/4 v11, 0x7

    if-lt v10, v11, :cond_c

    .line 230
    .end local v7    # "nextColon":I
    :cond_8
    if-ne v5, v0, :cond_d

    .line 233
    if-nez v3, :cond_9

    add-int v10, v1, v6

    const/16 v11, 0x8

    if-eq v10, v11, :cond_a

    :cond_9
    if-eqz v3, :cond_0

    add-int v10, v1, v6

    const/16 v11, 0x8

    if-ge v10, v11, :cond_0

    .line 236
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 249
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v5, v10, :cond_b

    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_e

    :cond_b
    move p2, v5

    .line 250
    goto/16 :goto_0

    .line 221
    .restart local v7    # "nextColon":I
    :cond_c
    add-int/lit8 v10, v5, 0x4

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-direct {p0, p1, v5, v10}, Lcom/fsck/k9/message/html/HttpUriParser;->parse16BitHexSegment(Ljava/lang/String;II)I

    move-result v9

    .line 222
    .restart local v9    # "possibleSegmentEnd":I
    if-eq v9, v5, :cond_0

    .line 225
    move v5, v9

    .line 226
    add-int/lit8 v6, v6, 0x1

    .line 227
    goto :goto_3

    .line 242
    .end local v7    # "nextColon":I
    .end local v9    # "possibleSegmentEnd":I
    :cond_d
    const/4 v10, 0x0

    invoke-direct {p0, p1, v5, v10}, Lcom/fsck/k9/message/html/HttpUriParser;->tryMatchIpv4Address(Ljava/lang/String;IZ)I

    move-result v10

    if-ne v10, v0, :cond_0

    .line 245
    add-int/lit8 v5, v0, 0x1

    goto :goto_4

    .line 252
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 254
    const/4 v8, 0x0

    .line 255
    .local v8, "port":I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_f

    .line 256
    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 257
    .local v2, "c":I
    const/16 v10, 0x30

    if-lt v2, v10, :cond_f

    const/16 v10, 0x39

    if-le v2, v10, :cond_10

    .line 262
    .end local v2    # "c":I
    :cond_f
    const v10, 0xffff

    if-gt v8, v10, :cond_11

    .end local v5    # "currentPos":I
    :goto_6
    move p2, v5

    goto/16 :goto_0

    .line 260
    .restart local v2    # "c":I
    .restart local v5    # "currentPos":I
    :cond_10
    mul-int/lit8 v10, v8, 0xa

    add-int/2addr v10, v2

    add-int/lit8 v8, v10, -0x30

    .line 255
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .end local v2    # "c":I
    :cond_11
    move v5, p2

    .line 262
    goto :goto_6
.end method

.method private tryMatchUserInfo(Ljava/lang/String;II)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 101
    const/16 v1, 0x40

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 102
    .local v0, "userInfoEnd":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ge v0, p3, :cond_0

    .line 103
    const-string v1, ":"

    invoke-direct {p0, p1, p2, v1}, Lcom/fsck/k9/message/html/HttpUriParser;->matchUnreservedPCTEncodedSubDelimClassesGreedy(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 109
    .end local p2    # "startPos":I
    :cond_0
    :goto_0
    return p2

    .line 107
    .restart local p2    # "startPos":I
    :cond_1
    add-int/lit8 p2, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public linkifyUri(Ljava/lang/String;ILjava/lang/StringBuffer;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I
    .param p3, "outputBuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 28
    move v0, p2

    .line 31
    .local v0, "currentPos":I
    add-int/lit8 v5, v0, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "shortScheme":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "longScheme":Ljava/lang/String;
    const-string v5, "https://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    const-string v5, "https://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    .line 44
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/message/html/HttpUriParser;->tryMatchAuthority(Ljava/lang/String;I)I

    move-result v3

    .line 45
    .local v3, "matchedAuthorityEnd":I
    if-ne v3, v0, :cond_3

    .line 72
    .end local v3    # "matchedAuthorityEnd":I
    .end local p2    # "startPos":I
    :cond_0
    :goto_1
    return p2

    .line 35
    .restart local p2    # "startPos":I
    :cond_1
    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 36
    const-string v5, "http://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 37
    :cond_2
    const-string v5, "rtsp://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    const-string v5, "rtsp://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 48
    .restart local v3    # "matchedAuthorityEnd":I
    :cond_3
    move v0, v3

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_4

    .line 52
    add-int/lit8 v5, v0, 0x1

    const-string v6, "/:@"

    invoke-direct {p0, p1, v5, v6}, Lcom/fsck/k9/message/html/HttpUriParser;->matchUnreservedPCTEncodedSubDelimClassesGreedy(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 56
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_5

    .line 57
    add-int/lit8 v5, v0, 0x1

    const-string v6, ":@/?"

    invoke-direct {p0, p1, v5, v6}, Lcom/fsck/k9/message/html/HttpUriParser;->matchUnreservedPCTEncodedSubDelimClassesGreedy(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 61
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_6

    .line 62
    add-int/lit8 v5, v0, 0x1

    const-string v6, ":@/?"

    invoke-direct {p0, p1, v5, v6}, Lcom/fsck/k9/message/html/HttpUriParser;->matchUnreservedPCTEncodedSubDelimClassesGreedy(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 65
    :cond_6
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "httpUri":Ljava/lang/String;
    const-string v5, "<a href=\""

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 67
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\">"

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 69
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</a>"

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .line 72
    goto/16 :goto_1
.end method
