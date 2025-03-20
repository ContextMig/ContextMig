.class public Lio/sentry/marshaller/json/SentryJsonGenerator;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source "SentryJsonGenerator.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private generator:Lcom/fasterxml/jackson/core/JsonGenerator;

.field private maxLengthList:I

.field private maxLengthString:I

.field private maxNesting:I

.field private maxSizeMap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lio/sentry/util/Util;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/marshaller/json/SentryJsonGenerator;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    .line 45
    iput-object p1, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    .line 48
    const/16 v0, 0x190

    iput v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthString:I

    .line 49
    const/16 v0, 0x32

    iput v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxSizeMap:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxNesting:I

    .line 51
    return-void
.end method

.method private writeArray(Ljava/lang/Object;I)V
    .locals 14
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "recursionLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    instance-of v10, p1, [B

    if-eqz v10, :cond_2

    .line 124
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [B

    .line 125
    .local v1, "byteArray":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v10, v1

    if-ge v5, v10, :cond_0

    iget v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-ge v5, v10, :cond_0

    .line 126
    iget-object v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    aget-byte v11, v1, v5

    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 128
    :cond_0
    array-length v10, v1

    iget v11, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-le v10, v11, :cond_1

    .line 129
    invoke-direct {p0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeElided()V

    .line 196
    .end local v1    # "byteArray":[B
    :cond_1
    :goto_1
    return-void

    .line 131
    .end local v5    # "i":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v10, p1, [S

    if-eqz v10, :cond_4

    .line 132
    check-cast p1, [S

    .end local p1    # "value":Ljava/lang/Object;
    move-object v9, p1

    check-cast v9, [S

    .line 133
    .local v9, "shortArray":[S
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    array-length v10, v9

    if-ge v5, v10, :cond_3

    iget v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-ge v5, v10, :cond_3

    .line 134
    iget-object v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    aget-short v11, v9, v5

    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 136
    :cond_3
    array-length v10, v9

    iget v11, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-le v10, v11, :cond_1

    .line 137
    invoke-direct {p0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeElided()V

    goto :goto_1

    .line 139
    .end local v5    # "i":I
    .end local v9    # "shortArray":[S
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v10, p1, [I

    if-eqz v10, :cond_6

    .line 140
    check-cast p1, [I

    .end local p1    # "value":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, [I

    .line 141
    .local v6, "intArray":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    array-length v10, v6

    if-ge v5, v10, :cond_5

    iget v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-ge v5, v10, :cond_5

    .line 142
    iget-object v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    aget v11, v6, v5

    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 141
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 144
    :cond_5
    array-length v10, v6

    iget v11, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-le v10, v11, :cond_1

    .line 145
    invoke-direct {p0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeElided()V

    goto :goto_1

    .line 147
    .end local v5    # "i":I
    .end local v6    # "intArray":[I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v10, p1, [J

    if-eqz v10, :cond_8

    .line 148
    check-cast p1, [J

    .end local p1    # "value":Ljava/lang/Object;
    move-object v7, p1

    check-cast v7, [J

    .line 149
    .local v7, "longArray":[J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    array-length v10, v7

    if-ge v5, v10, :cond_7

    iget v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-ge v5, v10, :cond_7

    .line 150
    iget-object v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    aget-wide v12, v7, v5

    invoke-virtual {v10, v12, v13}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 149
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 152
    :cond_7
    array-length v10, v7

    iget v11, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-le v10, v11, :cond_1

    .line 153
    invoke-direct {p0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeElided()V

    goto :goto_1

    .line 155
    .end local v5    # "i":I
    .end local v7    # "longArray":[J
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v10, p1, [F

    if-eqz v10, :cond_a

    .line 156
    check-cast p1, [F

    .end local p1    # "value":Ljava/lang/Object;
    move-object v4, p1

    check-cast v4, [F

    .line 157
    .local v4, "floatArray":[F
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    array-length v10, v4

    if-ge v5, v10, :cond_9

    iget v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-ge v5, v10, :cond_9

    .line 158
    iget-object v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    aget v11, v4, v5

    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 160
    :cond_9
    array-length v10, v4

    iget v11, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-le v10, v11, :cond_1

    .line 161
    invoke-direct {p0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeElided()V

    goto/16 :goto_1

    .line 163
    .end local v4    # "floatArray":[F
    .end local v5    # "i":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v10, p1, [D

    if-eqz v10, :cond_c

    .line 164
    check-cast p1, [D

    .end local p1    # "value":Ljava/lang/Object;
    move-object v3, p1

    check-cast v3, [D

    .line 165
    .local v3, "doubleArray":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    array-length v10, v3

    if-ge v5, v10, :cond_b

    iget v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-ge v5, v10, :cond_b

    .line 166
    iget-object v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    aget-wide v12, v3, v5

    invoke-virtual {v10, v12, v13}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    .line 165
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 168
    :cond_b
    array-length v10, v3

    iget v11, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-le v10, v11, :cond_1

    .line 169
    invoke-direct {p0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeElided()V

    goto/16 :goto_1

    .line 171
    .end local v3    # "doubleArray":[D
    .end local v5    # "i":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v10, p1, [C

    if-eqz v10, :cond_e

    .line 172
    check-cast p1, [C

    .end local p1    # "value":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [C

    .line 173
    .local v2, "charArray":[C
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    array-length v10, v2

    if-ge v5, v10, :cond_d

    iget v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-ge v5, v10, :cond_d

    .line 174
    iget-object v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    aget-char v11, v2, v5

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 176
    :cond_d
    array-length v10, v2

    iget v11, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-le v10, v11, :cond_1

    .line 177
    invoke-direct {p0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeElided()V

    goto/16 :goto_1

    .line 179
    .end local v2    # "charArray":[C
    .end local v5    # "i":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_e
    instance-of v10, p1, [Z

    if-eqz v10, :cond_10

    .line 180
    check-cast p1, [Z

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Z

    .line 181
    .local v0, "boolArray":[Z
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8
    array-length v10, v0

    if-ge v5, v10, :cond_f

    iget v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-ge v5, v10, :cond_f

    .line 182
    iget-object v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    aget-boolean v11, v0, v5

    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 184
    :cond_f
    array-length v10, v0

    iget v11, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-le v10, v11, :cond_1

    .line 185
    invoke-direct {p0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeElided()V

    goto/16 :goto_1

    .line 188
    .end local v0    # "boolArray":[Z
    .end local v5    # "i":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_10
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "value":Ljava/lang/Object;
    move-object v8, p1

    check-cast v8, [Ljava/lang/Object;

    .line 189
    .local v8, "objArray":[Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9
    array-length v10, v8

    if-ge v5, v10, :cond_11

    iget v10, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-ge v5, v10, :cond_11

    .line 190
    aget-object v10, v8, v5

    add-int/lit8 v11, p2, 0x1

    invoke-direct {p0, v10, v11}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeObject(Ljava/lang/Object;I)V

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 192
    :cond_11
    array-length v10, v8

    iget v11, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-le v10, v11, :cond_1

    .line 193
    invoke-direct {p0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeElided()V

    goto/16 :goto_1
.end method

.method private writeElided()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private writeObject(Ljava/lang/Object;I)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "recursionLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxNesting:I

    if-lt p2, v5, :cond_0

    .line 65
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    const-string v6, "<recursion limit hit>"

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 119
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 69
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    .line 70
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 73
    invoke-direct {p0, p1, p2}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeArray(Ljava/lang/Object;I)V

    .line 74
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 75
    :cond_2
    instance-of v5, p1, Ljava/util/Map;

    if-eqz v5, :cond_6

    .line 76
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "i":I
    check-cast p1, Ljava/util/Map;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxSizeMap:I

    if-lt v2, v5, :cond_4

    .line 92
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_3
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 83
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 84
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 88
    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-direct {p0, v5, v6}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeObject(Ljava/lang/Object;I)V

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_1

    .line 86
    :cond_5
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthString:I

    invoke-static {v6, v7}, Lio/sentry/util/Util;->trimString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_2

    .line 93
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v5, p1, Ljava/util/Collection;

    if-eqz v5, :cond_9

    .line 94
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 95
    const/4 v2, 0x0

    .line 96
    .restart local v2    # "i":I
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 97
    .local v4, "subValue":Ljava/lang/Object;
    iget v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthList:I

    if-lt v2, v5, :cond_8

    .line 98
    invoke-direct {p0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeElided()V

    .line 106
    .end local v4    # "subValue":Ljava/lang/Object;
    :cond_7
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    goto/16 :goto_0

    .line 102
    .restart local v4    # "subValue":Ljava/lang/Object;
    :cond_8
    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v4, v5}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeObject(Ljava/lang/Object;I)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    goto :goto_3

    .line 107
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "subValue":Ljava/lang/Object;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 108
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    iget v6, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthString:I

    invoke-static {p1, v6}, Lio/sentry/util/Util;->trimString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_a
    :try_start_0
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lio/sentry/marshaller/json/SentryJsonGenerator;->logger:Lorg/slf4j/Logger;

    const-string v6, "Couldn\'t marshal \'{}\' of type \'{}\', had to be converted into a String"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v5, v6, p1, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    iget-object v5, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->maxLengthString:I

    invoke-static {v6, v7}, Lio/sentry/util/Util;->trimString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 431
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 421
    return-void
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 1
    .param p1, "bv"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 356
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    .line 401
    return-void
.end method

.method public writeEndArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 271
    return-void
.end method

.method public writeEndObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 281
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 406
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    .line 381
    return-void
.end method

.method public writeNumber(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 386
    return-void
.end method

.method public writeNumber(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 366
    return-void
.end method

.method public writeNumber(J)V
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 371
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "v"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    .line 391
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "v"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    .line 376
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/sentry/marshaller/json/SentryJsonGenerator;->writeObject(Ljava/lang/Object;I)V

    .line 61
    return-void
.end method

.method public writeRaw(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 336
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 266
    return-void
.end method

.method public writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 276
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lio/sentry/marshaller/json/SentryJsonGenerator;->generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 296
    return-void
.end method
