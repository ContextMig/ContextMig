.class public Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "InvalidPropertyGroupError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 440
    const/4 v0, 0x1

    .line 441
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 449
    :goto_0
    if-nez v2, :cond_1

    .line 450
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 445
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 446
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 447
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 452
    :cond_1
    const-string/jumbo v4, "template_not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "fieldValue":Ljava/lang/String;
    const-string/jumbo v4, "template_not_found"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 455
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 456
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v3

    .line 482
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    :goto_1
    if-nez v0, :cond_2

    .line 483
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 484
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 486
    :cond_2
    return-object v3

    .line 458
    .end local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    :cond_3
    const-string/jumbo v4, "restricted_content"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 459
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    goto :goto_1

    .line 461
    .end local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    :cond_4
    const-string/jumbo v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 462
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    goto :goto_1

    .line 464
    .end local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    :cond_5
    const-string/jumbo v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, "fieldValue":Lcom/dropbox/core/v2/fileproperties/LookupError;
    const-string/jumbo v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 467
    sget-object v4, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v1

    .line 468
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v3

    .line 469
    .restart local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    goto :goto_1

    .line 470
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/fileproperties/LookupError;
    .end local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    :cond_6
    const-string/jumbo v4, "unsupported_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 471
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    goto :goto_1

    .line 473
    .end local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    :cond_7
    const-string/jumbo v4, "property_field_too_large"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 474
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    goto :goto_1

    .line 476
    .end local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    :cond_8
    const-string/jumbo v4, "does_not_fit_template"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 477
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    goto :goto_1

    .line 480
    .end local v3    # "value":Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    :cond_9
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 391
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$InvalidPropertyGroupError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->tag()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->tag()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 394
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 395
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->access$000(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 397
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 432
    :goto_0
    return-void

    .line 401
    :pswitch_1
    const-string/jumbo v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 410
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 411
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->access$100(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 413
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 417
    :pswitch_4
    const-string/jumbo v0, "unsupported_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :pswitch_5
    const-string/jumbo v0, "property_field_too_large"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :pswitch_6
    const-string/jumbo v0, "does_not_fit_template"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 386
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
