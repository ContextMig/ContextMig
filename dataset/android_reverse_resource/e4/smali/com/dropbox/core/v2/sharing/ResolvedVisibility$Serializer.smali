.class Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ResolvedVisibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ResolvedVisibility;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 100
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 108
    :goto_0
    if-nez v1, :cond_1

    .line 109
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 104
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 105
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 106
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 111
    :cond_1
    const-string/jumbo v3, "public"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    sget-object v2, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->PUBLIC:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .line 129
    .local v2, "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    :goto_1
    if-nez v0, :cond_2

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 133
    :cond_2
    return-object v2

    .line 114
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    :cond_3
    const-string/jumbo v3, "team_only"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    sget-object v2, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    goto :goto_1

    .line 117
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    :cond_4
    const-string/jumbo v3, "password"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    sget-object v2, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->PASSWORD:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    goto :goto_1

    .line 120
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    :cond_5
    const-string/jumbo v3, "team_and_password"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 121
    sget-object v2, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->TEAM_AND_PASSWORD:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    goto :goto_1

    .line 123
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    :cond_6
    const-string/jumbo v3, "shared_folder_only"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 124
    sget-object v2, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->SHARED_FOLDER_ONLY:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    goto :goto_1

    .line 127
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    :cond_7
    sget-object v2, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->OTHER:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
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
    .line 61
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ResolvedVisibility;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$1;->$SwitchMap$com$dropbox$core$v2$sharing$ResolvedVisibility:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 68
    :pswitch_0
    const-string/jumbo v0, "public"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_1
    const-string/jumbo v0, "team_only"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_2
    const-string/jumbo v0, "password"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_3
    const-string/jumbo v0, "team_and_password"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_4
    const-string/jumbo v0, "shared_folder_only"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 61
    check-cast p1, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ResolvedVisibility;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
