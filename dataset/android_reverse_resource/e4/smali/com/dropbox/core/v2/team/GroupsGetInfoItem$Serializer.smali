.class Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GroupsGetInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupsGetInfoItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 305
    const/4 v0, 0x1

    .line 306
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 314
    :goto_0
    if-nez v2, :cond_1

    .line 315
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 310
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 311
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 312
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 317
    :cond_1
    const-string/jumbo v4, "id_not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "fieldValue":Ljava/lang/String;
    const-string/jumbo v4, "id_not_found"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 320
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 321
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->idNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    move-result-object v3

    .line 331
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    :goto_1
    if-nez v0, :cond_2

    .line 332
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 335
    :cond_2
    return-object v3

    .line 323
    .end local v3    # "value":Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    :cond_3
    const-string/jumbo v4, "group_info"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/GroupFullInfo;
    sget-object v4, Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupFullInfo;

    move-result-object v1

    .line 326
    invoke-static {v1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->groupInfo(Lcom/dropbox/core/v2/team/GroupFullInfo;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    move-result-object v3

    .line 327
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    goto :goto_1

    .line 329
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/GroupFullInfo;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    :cond_4
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
    .line 272
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupsGetInfoItem;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$1;->$SwitchMap$com$dropbox$core$v2$team$GroupsGetInfoItem$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->tag()Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->tag()Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 280
    const-string/jumbo v0, "id_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 281
    const-string/jumbo v0, "id_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->access$000(Lcom/dropbox/core/v2/team/GroupsGetInfoItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 283
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 297
    :goto_0
    return-void

    .line 287
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 288
    const-string/jumbo v0, "group_info"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 289
    sget-object v0, Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->access$100(Lcom/dropbox/core/v2/team/GroupsGetInfoItem;)Lcom/dropbox/core/v2/team/GroupFullInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupFullInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 290
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 272
    check-cast p1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupsGetInfoItem;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
