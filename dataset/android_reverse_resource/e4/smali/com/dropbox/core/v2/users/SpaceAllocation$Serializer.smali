.class Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SpaceAllocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/users/SpaceAllocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/SpaceAllocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 337
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 339
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 347
    :goto_0
    if-nez v2, :cond_1

    .line 348
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 343
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 344
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 345
    invoke-static {p1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 350
    :cond_1
    const-string/jumbo v4, "individual"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "fieldValue":Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;
    sget-object v4, Lcom/dropbox/core/v2/users/IndividualSpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/users/IndividualSpaceAllocation$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    move-result-object v1

    .line 353
    invoke-static {v1}, Lcom/dropbox/core/v2/users/SpaceAllocation;->individual(Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;

    move-result-object v3

    .line 363
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;
    .local v3, "value":Lcom/dropbox/core/v2/users/SpaceAllocation;
    :goto_1
    if-nez v0, :cond_2

    .line 364
    invoke-static {p1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 365
    invoke-static {p1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 367
    :cond_2
    return-object v3

    .line 355
    .end local v3    # "value":Lcom/dropbox/core/v2/users/SpaceAllocation;
    :cond_3
    const-string/jumbo v4, "team"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "fieldValue":Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
    sget-object v4, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;

    invoke-virtual {v4, p1, v6}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    move-result-object v1

    .line 358
    invoke-static {v1}, Lcom/dropbox/core/v2/users/SpaceAllocation;->team(Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;

    move-result-object v3

    .line 359
    .restart local v3    # "value":Lcom/dropbox/core/v2/users/SpaceAllocation;
    goto :goto_1

    .line 361
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
    .end local v3    # "value":Lcom/dropbox/core/v2/users/SpaceAllocation;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/users/SpaceAllocation;->OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation;

    .restart local v3    # "value":Lcom/dropbox/core/v2/users/SpaceAllocation;
    goto :goto_1
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
    .line 306
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/users/SpaceAllocation;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/SpaceAllocation;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/users/SpaceAllocation;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 311
    sget-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation$1;->$SwitchMap$com$dropbox$core$v2$users$SpaceAllocation$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/users/SpaceAllocation;->tag()Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 327
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 313
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 314
    const-string/jumbo v0, "individual"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 315
    sget-object v0, Lcom/dropbox/core/v2/users/IndividualSpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/users/SpaceAllocation;->access$000(Lcom/dropbox/core/v2/users/SpaceAllocation;)Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/users/IndividualSpaceAllocation$Serializer;->serialize(Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 316
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 320
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 321
    const-string/jumbo v0, "team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 322
    sget-object v0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/users/SpaceAllocation;->access$100(Lcom/dropbox/core/v2/users/SpaceAllocation;)Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$Serializer;->serialize(Lcom/dropbox/core/v2/users/TeamSpaceAllocation;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 323
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 311
    nop

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
    .line 306
    check-cast p1, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->serialize(Lcom/dropbox/core/v2/users/SpaceAllocation;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
