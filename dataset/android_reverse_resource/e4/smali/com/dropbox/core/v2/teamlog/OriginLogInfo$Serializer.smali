.class Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "OriginLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/OriginLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/OriginLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/OriginLogInfo;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v4, 0x0

    .line 239
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 240
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 241
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 243
    :cond_0
    if-nez v4, :cond_7

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "f_accessMethod":Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    const/4 v1, 0x0

    .line 246
    .local v1, "f_geoLocation":Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;
    const/4 v2, 0x0

    .line 247
    .local v2, "f_host":Lcom/dropbox/core/v2/teamlog/HostLogInfo;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 248
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 250
    const-string/jumbo v6, "access_method"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 251
    sget-object v6, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_1
    const-string/jumbo v6, "geo_location"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 254
    sget-object v6, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_geoLocation":Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;
    check-cast v1, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    .restart local v1    # "f_geoLocation":Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;
    goto :goto_0

    .line 256
    :cond_2
    const-string/jumbo v6, "host"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 257
    sget-object v6, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_host":Lcom/dropbox/core/v2/teamlog/HostLogInfo;
    check-cast v2, Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    .restart local v2    # "f_host":Lcom/dropbox/core/v2/teamlog/HostLogInfo;
    goto :goto_0

    .line 260
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 263
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_5

    .line 264
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v7, "Required field \"access_method\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 266
    :cond_5
    new-instance v5, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    invoke-direct {v5, v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;Lcom/dropbox/core/v2/teamlog/HostLogInfo;)V

    .line 271
    .local v5, "value":Lcom/dropbox/core/v2/teamlog/OriginLogInfo;
    if-nez p2, :cond_6

    .line 272
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 274
    :cond_6
    return-object v5

    .line 269
    .end local v0    # "f_accessMethod":Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .end local v1    # "f_geoLocation":Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;
    .end local v2    # "f_host":Lcom/dropbox/core/v2/teamlog/HostLogInfo;
    .end local v5    # "value":Lcom/dropbox/core/v2/teamlog/OriginLogInfo;
    :cond_7
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/OriginLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/OriginLogInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 217
    if-nez p3, :cond_0

    .line 218
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 220
    :cond_0
    const-string/jumbo v0, "access_method"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->accessMethod:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 222
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    if-eqz v0, :cond_1

    .line 223
    const-string/jumbo v0, "geo_location"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->geoLocation:Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 226
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    if-eqz v0, :cond_2

    .line 227
    const-string/jumbo v0, "host"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/HostLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;->host:Lcom/dropbox/core/v2/teamlog/HostLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 230
    :cond_2
    if-nez p3, :cond_3

    .line 231
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 233
    :cond_3
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 212
    check-cast p1, Lcom/dropbox/core/v2/teamlog/OriginLogInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/OriginLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/OriginLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
