.class public final Lcom/fasterxml/jackson/core/io/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field private static final sHexValues:[I

.field private static final sInputCodes:[I

.field private static final sInputCodesComment:[I

.field private static final sInputCodesJsNames:[I

.field private static final sInputCodesUTF8:[I

.field private static final sInputCodesUtf8JsNames:[I

.field private static final sInputCodesWS:[I

.field private static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/4 v11, -0x1

    const/16 v10, 0x100

    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 7
    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sput-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    .line 10
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    array-length v4, v6

    .line 11
    .local v4, "len":I
    new-array v6, v4, [B

    sput-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    .line 12
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 13
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    sget-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    aget-char v7, v7, v3

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 12
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_0
    new-array v5, v10, [I

    .line 30
    .local v5, "table":[I
    const/4 v3, 0x0

    :goto_1
    const/16 v6, 0x20

    if-ge v3, v6, :cond_1

    .line 31
    aput v11, v5, v3

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 34
    :cond_1
    const/16 v6, 0x22

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 35
    const/16 v6, 0x5c

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 36
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    .line 45
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    array-length v6, v6

    new-array v5, v6, [I

    .line 46
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    array-length v7, v5

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    const/16 v1, 0x80

    .local v1, "c":I
    :goto_2
    if-ge v1, v10, :cond_5

    .line 51
    and-int/lit16 v6, v1, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_2

    .line 52
    const/4 v2, 0x2

    .line 62
    .local v2, "code":I
    :goto_3
    aput v2, v5, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 53
    .end local v2    # "code":I
    :cond_2
    and-int/lit16 v6, v1, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_3

    .line 54
    const/4 v2, 0x3

    .restart local v2    # "code":I
    goto :goto_3

    .line 55
    .end local v2    # "code":I
    :cond_3
    and-int/lit16 v6, v1, 0xf8

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_4

    .line 57
    const/4 v2, 0x4

    .restart local v2    # "code":I
    goto :goto_3

    .line 60
    .end local v2    # "code":I
    :cond_4
    const/4 v2, -0x1

    .restart local v2    # "code":I
    goto :goto_3

    .line 64
    .end local v2    # "code":I
    :cond_5
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    .line 75
    new-array v5, v10, [I

    .line 77
    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    .line 79
    const/16 v3, 0x21

    :goto_4
    if-ge v3, v10, :cond_7

    .line 80
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 81
    aput v8, v5, v3

    .line 79
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 87
    :cond_7
    const/16 v6, 0x40

    aput v8, v5, v6

    .line 88
    const/16 v6, 0x23

    aput v8, v5, v6

    .line 89
    const/16 v6, 0x2a

    aput v8, v5, v6

    .line 90
    const/16 v6, 0x2d

    aput v8, v5, v6

    .line 91
    const/16 v6, 0x2b

    aput v8, v5, v6

    .line 92
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    .line 102
    new-array v5, v10, [I

    .line 104
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    array-length v7, v5

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-static {v5, v9, v9, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 106
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    .line 115
    new-array v0, v10, [I

    .line 117
    .local v0, "buf":[I
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    invoke-static {v6, v9, v0, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    const/16 v6, 0x20

    invoke-static {v0, v8, v6, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 121
    const/16 v6, 0x9

    aput v8, v0, v6

    .line 122
    aput v12, v0, v12

    .line 123
    const/16 v6, 0xd

    const/16 v7, 0xd

    aput v7, v0, v6

    .line 124
    const/16 v6, 0x2a

    const/16 v7, 0x2a

    aput v7, v0, v6

    .line 125
    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    .line 136
    new-array v0, v10, [I

    .line 137
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    invoke-static {v6, v9, v0, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    const/16 v6, 0x20

    invoke-static {v0, v8, v6, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 143
    const/16 v6, 0x20

    const/4 v7, 0x1

    aput v7, v0, v6

    .line 144
    const/16 v6, 0x9

    const/4 v7, 0x1

    aput v7, v0, v6

    .line 145
    aput v12, v0, v12

    .line 146
    const/16 v6, 0xd

    const/16 v7, 0xd

    aput v7, v0, v6

    .line 147
    const/16 v6, 0x2f

    const/16 v7, 0x2f

    aput v7, v0, v6

    .line 148
    const/16 v6, 0x23

    const/16 v7, 0x23

    aput v7, v0, v6

    .line 149
    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesWS:[I

    .line 158
    new-array v5, v9, [I

    .line 160
    const/4 v3, 0x0

    :goto_5
    const/16 v6, 0x20

    if-ge v3, v6, :cond_8

    .line 162
    aput v11, v5, v3

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 167
    :cond_8
    const/16 v6, 0x22

    const/16 v7, 0x22

    aput v7, v5, v6

    .line 168
    const/16 v6, 0x5c

    const/16 v7, 0x5c

    aput v7, v5, v6

    .line 170
    const/16 v6, 0x8

    const/16 v7, 0x62

    aput v7, v5, v6

    .line 171
    const/16 v6, 0x9

    const/16 v7, 0x74

    aput v7, v5, v6

    .line 172
    const/16 v6, 0xc

    const/16 v7, 0x66

    aput v7, v5, v6

    .line 173
    const/16 v6, 0x6e

    aput v6, v5, v12

    .line 174
    const/16 v6, 0xd

    const/16 v7, 0x72

    aput v7, v5, v6

    .line 175
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 183
    new-array v6, v9, [I

    sput-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    .line 185
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([II)V

    .line 186
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v12, :cond_9

    .line 187
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v7, v3, 0x30

    aput v3, v6, v7

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 189
    :cond_9
    const/4 v3, 0x0

    :goto_7
    const/4 v6, 0x6

    if-ge v3, v6, :cond_a

    .line 190
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v7, v3, 0x61

    add-int/lit8 v8, v3, 0xa

    aput v8, v6, v7

    .line 191
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v7, v3, 0x41

    add-int/lit8 v8, v3, 0xa

    aput v8, v6, v7

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 193
    :cond_a
    return-void
.end method

.method public static copyHexBytes()[B
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static copyHexChars()[C
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static get7BitOutputEscapes()[I
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0
.end method
