.class Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "LinkAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/LinkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/LinkAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/LinkAction;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 102
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 110
    :goto_0
    if-nez v1, :cond_1

    .line 111
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 106
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 107
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 108
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v3, "change_access_level"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkAction;->CHANGE_ACCESS_LEVEL:Lcom/dropbox/core/v2/sharing/LinkAction;

    .line 134
    .local v2, "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    :goto_1
    if-nez v0, :cond_2

    .line 135
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 136
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 138
    :cond_2
    return-object v2

    .line 116
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    :cond_3
    const-string/jumbo v3, "change_audience"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkAction;->CHANGE_AUDIENCE:Lcom/dropbox/core/v2/sharing/LinkAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    goto :goto_1

    .line 119
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    :cond_4
    const-string/jumbo v3, "remove_expiry"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkAction;->REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    goto :goto_1

    .line 122
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    :cond_5
    const-string/jumbo v3, "remove_password"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkAction;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    goto :goto_1

    .line 125
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    :cond_6
    const-string/jumbo v3, "set_expiry"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 126
    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkAction;->SET_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    goto :goto_1

    .line 128
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    :cond_7
    const-string/jumbo v3, "set_password"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 129
    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkAction;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    goto :goto_1

    .line 132
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
    :cond_8
    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkAction;->OTHER:Lcom/dropbox/core/v2/sharing/LinkAction;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/LinkAction;
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
    .line 59
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/LinkAction;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/LinkAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/LinkAction;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction$1;->$SwitchMap$com$dropbox$core$v2$sharing$LinkAction:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/LinkAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 66
    :pswitch_0
    const-string/jumbo v0, "change_access_level"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_1
    const-string/jumbo v0, "change_audience"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_2
    const-string/jumbo v0, "remove_expiry"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_3
    const-string/jumbo v0, "remove_password"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_4
    const-string/jumbo v0, "set_expiry"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_5
    const-string/jumbo v0, "set_password"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 59
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkAction;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
