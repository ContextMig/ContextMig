.class public Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GroupManagementType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamcommon/GroupManagementType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 86
    :goto_0
    if-nez v1, :cond_1

    .line 87
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 82
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 83
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 84
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 89
    :cond_1
    const-string/jumbo v3, "user_managed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    sget-object v2, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->USER_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 101
    .local v2, "value":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    :goto_1
    if-nez v0, :cond_2

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 103
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 105
    :cond_2
    return-object v2

    .line 92
    .end local v2    # "value":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    :cond_3
    const-string/jumbo v3, "company_managed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    sget-object v2, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->COMPANY_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    goto :goto_1

    .line 95
    .end local v2    # "value":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    :cond_4
    const-string/jumbo v3, "system_managed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    sget-object v2, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->SYSTEM_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    goto :goto_1

    .line 99
    .end local v2    # "value":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    :cond_5
    sget-object v2, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->OTHER:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
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
    .line 47
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$1;->$SwitchMap$com$dropbox$core$v2$teamcommon$GroupManagementType:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 54
    :pswitch_0
    const-string/jumbo v0, "user_managed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_1
    const-string/jumbo v0, "company_managed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_2
    const-string/jumbo v0, "system_managed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 47
    check-cast p1, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->serialize(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
