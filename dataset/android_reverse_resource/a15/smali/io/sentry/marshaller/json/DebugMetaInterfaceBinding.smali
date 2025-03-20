.class public Lio/sentry/marshaller/json/DebugMetaInterfaceBinding;
.super Ljava/lang/Object;
.source "DebugMetaInterfaceBinding.java"

# interfaces
.implements Lio/sentry/marshaller/json/InterfaceBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/marshaller/json/InterfaceBinding",
        "<",
        "Lio/sentry/event/interfaces/DebugMetaInterface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeDebugImages(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/interfaces/DebugMetaInterface;)V
    .locals 4
    .param p1, "generator"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "debugMetaInterface"    # Lio/sentry/event/interfaces/DebugMetaInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    const-string v2, "images"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lio/sentry/event/interfaces/DebugMetaInterface;->getDebugImages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/event/interfaces/DebugMetaInterface$DebugImage;

    .line 26
    .local v0, "debugImage":Lio/sentry/event/interfaces/DebugMetaInterface$DebugImage;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 27
    const-string v2, "uuid"

    invoke-virtual {v0}, Lio/sentry/event/interfaces/DebugMetaInterface$DebugImage;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v2, "type"

    invoke-virtual {v0}, Lio/sentry/event/interfaces/DebugMetaInterface$DebugImage;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 31
    .end local v0    # "debugImage":Lio/sentry/event/interfaces/DebugMetaInterface$DebugImage;
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 32
    return-void
.end method


# virtual methods
.method public writeInterface(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/interfaces/DebugMetaInterface;)V
    .locals 0
    .param p1, "generator"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "debugMetaInterface"    # Lio/sentry/event/interfaces/DebugMetaInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 19
    invoke-direct {p0, p1, p2}, Lio/sentry/marshaller/json/DebugMetaInterfaceBinding;->writeDebugImages(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/interfaces/DebugMetaInterface;)V

    .line 20
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 21
    return-void
.end method

.method public bridge synthetic writeInterface(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/interfaces/SentryInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    check-cast p2, Lio/sentry/event/interfaces/DebugMetaInterface;

    invoke-virtual {p0, p1, p2}, Lio/sentry/marshaller/json/DebugMetaInterfaceBinding;->writeInterface(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/interfaces/DebugMetaInterface;)V

    return-void
.end method
