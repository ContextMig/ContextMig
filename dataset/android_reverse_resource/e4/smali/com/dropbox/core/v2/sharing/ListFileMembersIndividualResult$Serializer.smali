.class Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListFileMembersIndividualResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 335
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 343
    :goto_0
    if-nez v2, :cond_1

    .line 344
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 339
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 340
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 341
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 346
    :cond_1
    const-string/jumbo v4, "result"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
    sget-object v4, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    move-result-object v1

    .line 349
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->result(Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    move-result-object v3

    .line 360
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    :goto_1
    if-nez v0, :cond_2

    .line 361
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 362
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 364
    :cond_2
    return-object v3

    .line 351
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    :cond_3
    const-string/jumbo v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    const-string/jumbo v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 354
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    .line 355
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    move-result-object v3

    .line 356
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    goto :goto_1

    .line 358
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
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
    .line 301
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFileMembersIndividualResult$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->tag()Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 323
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 308
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 309
    const-string/jumbo v0, "result"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 310
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->access$000(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;)Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 311
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 316
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 317
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->access$100(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 319
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 306
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
    .line 301
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
