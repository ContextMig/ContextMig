.class public final Lcom/fsck/k9/mailstore/util/FlowedMessageUtils;
.super Ljava/lang/Object;
.source "FlowedMessageUtils.java"


# static fields
.field private static final RFC2646_CRLF:Ljava/lang/String; = "\r\n"

.field private static final RFC2646_FROM:Ljava/lang/String; = "From "

.field private static final RFC2646_QUOTE:C = '>'

.field private static final RFC2646_SIGNATURE:Ljava/lang/String; = "-- "

.field private static final RFC2646_SPACE:C = ' '

.field private static final RFC2646_WIDTH:I = 0x4e


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static deflow(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "delSp"    # Z

    .prologue
    const/16 v13, 0x20

    const/16 v12, 0x3e

    const/4 v11, 0x0

    .line 45
    const-string v9, "\r\n|\n"

    const/4 v10, -0x1

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "lines":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 47
    .local v5, "result":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v6, "resultLine":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 49
    .local v8, "resultLineQuoteDepth":I
    const/4 v7, 0x0

    .line 51
    .local v7, "resultLineFlowed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, v4

    if-gt v1, v9, :cond_f

    .line 52
    array-length v9, v4

    if-ge v1, v9, :cond_3

    aget-object v3, v4, v1

    .line 53
    .local v3, "line":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 55
    .local v0, "actualQuoteDepth":I
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 56
    const-string v9, "-- "

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 58
    const/4 v7, 0x0

    .line 73
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_1

    .line 75
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    :cond_1
    :goto_3
    if-nez v7, :cond_a

    if-lez v1, :cond_a

    .line 84
    if-lez v8, :cond_2

    invoke-virtual {v6, v11, v13}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 85
    :cond_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    if-ge v2, v8, :cond_9

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 52
    .end local v0    # "actualQuoteDepth":I
    .end local v2    # "j":I
    .end local v3    # "line":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 60
    .restart local v0    # "actualQuoteDepth":I
    .restart local v3    # "line":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_7

    .line 62
    const/4 v0, 0x1

    .line 63
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 65
    :cond_5
    if-eq v8, v0, :cond_6

    const/4 v7, 0x0

    .line 66
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 70
    :cond_7
    if-lez v8, :cond_0

    const/4 v7, 0x0

    goto :goto_2

    .line 78
    :cond_8
    if-nez v3, :cond_1

    const/4 v7, 0x0

    goto :goto_3

    .line 86
    .restart local v2    # "j":I
    :cond_9
    if-nez v5, :cond_d

    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5    # "result":Ljava/lang/StringBuffer;
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    .restart local v5    # "result":Ljava/lang/StringBuffer;
    :goto_6
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    new-instance v6, Ljava/lang/StringBuffer;

    .end local v6    # "resultLine":Ljava/lang/StringBuffer;
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .restart local v6    # "resultLine":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 92
    .end local v2    # "j":I
    :cond_a
    move v8, v0

    .line 94
    if-eqz v3, :cond_c

    .line 95
    const-string v9, "-- "

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_e

    .line 97
    if-eqz p1, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 98
    :cond_b
    const/4 v7, 0x1

    .line 103
    :goto_7
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 87
    .restart local v2    # "j":I
    :cond_d
    const-string v9, "\r\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 101
    .end local v2    # "j":I
    :cond_e
    const/4 v7, 0x0

    goto :goto_7

    .line 107
    .end local v0    # "actualQuoteDepth":I
    .end local v3    # "line":Ljava/lang/String;
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static flow(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "delSp"    # Z

    .prologue
    .line 114
    const/16 v0, 0x4e

    invoke-static {p0, p1, v0}, Lcom/fsck/k9/mailstore/util/FlowedMessageUtils;->flow(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static flow(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "delSp"    # Z
    .param p2, "width"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v12, 0x20

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v7, "result":Ljava/lang/StringBuilder;
    const-string v10, "\r\n|\n"

    const/4 v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "lines":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v4

    if-ge v1, v10, :cond_15

    .line 124
    aget-object v3, v4, v1

    .line 125
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    move v5, v8

    .line 127
    .local v5, "notempty":Z
    :goto_1
    const/4 v6, 0x0

    .line 128
    .local v6, "quoteDepth":I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3e

    if-ne v10, v11, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v5    # "notempty":Z
    .end local v6    # "quoteDepth":I
    :cond_0
    move v5, v9

    .line 125
    goto :goto_1

    .line 129
    .restart local v5    # "notempty":Z
    .restart local v6    # "quoteDepth":I
    :cond_1
    if-lez v6, :cond_2

    .line 130
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_8

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    :cond_2
    :goto_3
    if-eqz v5, :cond_12

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "extra":I
    if-nez v6, :cond_9

    .line 137
    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, ">"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "From "

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 138
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    const/4 v0, 0x1

    .line 147
    :cond_4
    :goto_4
    add-int/lit8 v2, p2, -0x1

    .line 148
    .local v2, "j":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v2, v10, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .line 158
    :cond_5
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v2, v10, :cond_7

    .line 160
    if-eqz p1, :cond_6

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    :cond_6
    const-string v10, "\r\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_7
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_11

    move v5, v8

    .line 166
    :goto_5
    goto :goto_3

    .line 131
    .end local v0    # "extra":I
    .end local v2    # "j":I
    :cond_8
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 142
    .restart local v0    # "extra":I
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_6
    if-ge v2, v6, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 144
    :cond_a
    add-int/lit8 v0, v6, 0x1

    goto :goto_4

    .line 150
    :cond_b
    :goto_7
    if-lt v2, v0, :cond_e

    if-eqz p1, :cond_c

    invoke-static {p0, v2}, Lcom/fsck/k9/mailstore/util/FlowedMessageUtils;->isAlphaChar(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_d

    :cond_c
    if-nez p1, :cond_e

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v12, :cond_e

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 151
    :cond_e
    if-ge v2, v0, :cond_5

    .line 153
    add-int/lit8 v2, p2, -0x1

    .line 154
    :goto_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v2, v10, :cond_5

    if-eqz p1, :cond_f

    invoke-static {p0, v2}, Lcom/fsck/k9/mailstore/util/FlowedMessageUtils;->isAlphaChar(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_10

    :cond_f
    if-nez p1, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v12, :cond_5

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    move v5, v9

    .line 165
    goto :goto_5

    .line 168
    .end local v0    # "extra":I
    .end local v2    # "j":I
    :cond_12
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_14

    .line 171
    :goto_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_13

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_13

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 172
    :cond_13
    const-string v10, "\r\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 176
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "notempty":Z
    .end local v6    # "quoteDepth":I
    :cond_15
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static isAlphaChar(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 187
    .local v0, "c":C
    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
