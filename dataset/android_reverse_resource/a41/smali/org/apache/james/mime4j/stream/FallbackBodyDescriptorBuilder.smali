.class Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;
.super Ljava/lang/Object;
.source "FallbackBodyDescriptorBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;


# static fields
.field private static final DEFAULT_MEDIA_TYPE:Ljava/lang/String; = "text"

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field private static final DEFAULT_SUB_TYPE:Ljava/lang/String; = "plain"

.field private static final EMAIL_MESSAGE_MIME_TYPE:Ljava/lang/String; = "message/rfc822"

.field private static final MEDIA_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field private static final MEDIA_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final SUB_TYPE_EMAIL:Ljava/lang/String; = "rfc822"

.field private static final US_ASCII:Ljava/lang/String; = "us-ascii"


# instance fields
.field private boundary:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private contentLength:J

.field private mediaType:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private final parentMimeType:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0, v0}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0
    .param p1, "parentMimeType"    # Ljava/lang/String;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    .line 70
    if-eqz p2, :cond_0

    .end local p2    # "monitor":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    :goto_0
    iput-object p2, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 71
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->reset()V

    .line 72
    return-void

    .line 70
    .restart local p2    # "monitor":Lorg/apache/james/mime4j/codec/DecodeMonitor;
    :cond_0
    sget-object p2, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_0
.end method

.method private parseContentType(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 17
    .param p1, "field"    # Lorg/apache/james/mime4j/stream/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 151
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/apache/james/mime4j/stream/RawField;

    if-eqz v14, :cond_0

    move-object/from16 v10, p1

    .line 152
    check-cast v10, Lorg/apache/james/mime4j/stream/RawField;

    .line 156
    .local v10, "rawfield":Lorg/apache/james/mime4j/stream/RawField;
    :goto_0
    sget-object v14, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v14, v10}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseRawBody(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/RawBody;

    move-result-object v2

    .line 157
    .local v2, "body":Lorg/apache/james/mime4j/stream/RawBody;
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/RawBody;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "main":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/RawBody;->getParams()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 160
    .local v8, "nmp":Lorg/apache/james/mime4j/stream/NameValuePair;
    invoke-virtual {v8}, Lorg/apache/james/mime4j/stream/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/apache/james/mime4j/stream/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 154
    .end local v2    # "body":Lorg/apache/james/mime4j/stream/RawBody;
    .end local v5    # "main":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "nmp":Lorg/apache/james/mime4j/stream/NameValuePair;
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "rawfield":Lorg/apache/james/mime4j/stream/RawField;
    :cond_0
    new-instance v10, Lorg/apache/james/mime4j/stream/RawField;

    invoke-interface/range {p1 .. p1}, Lorg/apache/james/mime4j/stream/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/apache/james/mime4j/stream/Field;->getBody()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v14, v15}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v10    # "rawfield":Lorg/apache/james/mime4j/stream/RawField;
    goto :goto_0

    .line 164
    .restart local v2    # "body":Lorg/apache/james/mime4j/stream/RawBody;
    .restart local v5    # "main":Ljava/lang/String;
    .restart local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v12, 0x0

    .line 165
    .local v12, "type":Ljava/lang/String;
    const/4 v11, 0x0

    .line 166
    .local v11, "subtype":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 167
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 168
    const/16 v14, 0x2f

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 169
    .local v4, "index":I
    const/4 v13, 0x0

    .line 170
    .local v13, "valid":Z
    const/4 v14, -0x1

    if-eq v4, v14, :cond_2

    .line 171
    const/4 v14, 0x0

    invoke-virtual {v5, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 172
    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 173
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 174
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    const/4 v13, 0x1

    .line 179
    :cond_2
    if-nez v13, :cond_3

    .line 180
    const/4 v5, 0x0

    .line 181
    const/4 v12, 0x0

    .line 182
    const/4 v11, 0x0

    .line 185
    .end local v4    # "index":I
    .end local v13    # "valid":Z
    :cond_3
    const-string v14, "boundary"

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "b":Ljava/lang/String;
    if-eqz v5, :cond_9

    const-string v14, "multipart/"

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v6, 0x1

    .line 188
    .local v6, "multipart":Z
    :goto_2
    if-eqz v6, :cond_4

    if-nez v1, :cond_5

    :cond_4
    if-nez v6, :cond_6

    .line 189
    :cond_5
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 190
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mediaType:Ljava/lang/String;

    .line 191
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->subType:Ljava/lang/String;

    .line 194
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    invoke-static {v14}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 195
    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->boundary:Ljava/lang/String;

    .line 198
    :cond_7
    const-string v14, "charset"

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 199
    .local v3, "c":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    .line 200
    if-eqz v3, :cond_8

    .line 201
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    .line 203
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    .line 206
    :cond_8
    return-void

    .line 187
    .end local v3    # "c":Ljava/lang/String;
    .end local v6    # "multipart":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/Field;
    .locals 8
    .param p1, "field"    # Lorg/apache/james/mime4j/stream/RawField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "name":Ljava/lang/String;
    const-string v3, "content-transfer-encoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 123
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 127
    iput-object v2, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    .line 146
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 130
    :cond_1
    const-string v3, "content-length"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 131
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 132
    .restart local v2    # "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 135
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid content length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ignoring Content-Length header"

    invoke-virtual {v3, v4, v5}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    new-instance v3, Lorg/apache/james/mime4j/MimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Content-Length header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    const-string v3, "content-type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->parseContentType(Lorg/apache/james/mime4j/stream/Field;)V

    goto :goto_0
.end method

.method public build()Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .locals 10

    .prologue
    .line 89
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 90
    .local v2, "actualMimeType":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mediaType:Ljava/lang/String;

    .line 91
    .local v3, "actualMediaType":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->subType:Ljava/lang/String;

    .line 92
    .local v4, "actualSubType":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    .line 93
    .local v6, "actualCharset":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 94
    const-string v0, "multipart/digest"

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const-string v2, "message/rfc822"

    .line 96
    const-string v3, "message"

    .line 97
    const-string v4, "rfc822"

    .line 104
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    const-string v0, "text"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v6, "us-ascii"

    .line 107
    :cond_1
    new-instance v1, Lorg/apache/james/mime4j/stream/BasicBodyDescriptor;

    iget-object v5, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->boundary:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v7, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    :goto_1
    iget-wide v8, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J

    invoke-direct/range {v1 .. v9}, Lorg/apache/james/mime4j/stream/BasicBodyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1

    .line 99
    :cond_2
    const-string v2, "text/plain"

    .line 100
    const-string v3, "text"

    .line 101
    const-string v4, "plain"

    goto :goto_0

    .line 107
    :cond_3
    const-string v7, "7bit"

    goto :goto_1
.end method

.method public newChild()Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->subType:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mediaType:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->boundary:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J

    .line 82
    return-void
.end method
