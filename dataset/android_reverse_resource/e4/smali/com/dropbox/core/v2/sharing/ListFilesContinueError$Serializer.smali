.class Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListFilesContinueError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListFilesContinueError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 287
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 295
    :goto_0
    if-nez v2, :cond_1

    .line 296
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 291
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 292
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 293
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 298
    :cond_1
    const-string/jumbo v4, "user_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharingUserError;
    const-string/jumbo v4, "user_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 301
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    .line 302
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    move-result-object v3

    .line 310
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharingUserError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
    :goto_1
    if-nez v0, :cond_2

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 312
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 314
    :cond_2
    return-object v3

    .line 304
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
    :cond_3
    const-string/jumbo v4, "invalid_cursor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 305
    sget-object v3, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
    goto :goto_1

    .line 308
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->OTHER:Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
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
    .line 256
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListFilesContinueError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 261
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFilesContinueError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->tag()Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 263
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 264
    const-string/jumbo v0, "user_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 265
    const-string/jumbo v0, "user_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->access$000(Lcom/dropbox/core/v2/sharing/ListFilesContinueError;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 267
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 271
    :pswitch_1
    const-string/jumbo v0, "invalid_cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 261
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
    .line 256
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFilesContinueError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
