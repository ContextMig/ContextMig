.class Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TokenGetAuthenticatedAdminError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 73
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 81
    :goto_0
    if-nez v1, :cond_1

    .line 82
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 77
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 78
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 79
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 84
    :cond_1
    const-string/jumbo v3, "mapping_not_found"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    sget-object v2, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;->MAPPING_NOT_FOUND:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;

    .line 93
    .local v2, "value":Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;
    :goto_1
    if-nez v0, :cond_2

    .line 94
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 95
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 97
    :cond_2
    return-object v2

    .line 87
    .end local v2    # "value":Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;
    :cond_3
    const-string/jumbo v3, "admin_not_active"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    sget-object v2, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;->ADMIN_NOT_ACTIVE:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;
    goto :goto_1

    .line 91
    .end local v2    # "value":Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;
    :cond_4
    sget-object v2, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;->OTHER:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;
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
    .line 46
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$1;->$SwitchMap$com$dropbox$core$v2$team$TokenGetAuthenticatedAdminError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 61
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 53
    :pswitch_0
    const-string/jumbo v0, "mapping_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_1
    const-string/jumbo v0, "admin_not_active"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
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
    .line 46
    check-cast p1, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
