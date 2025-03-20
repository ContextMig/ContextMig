.class public Lio/sentry/marshaller/json/StackTraceInterfaceBinding;
.super Ljava/lang/Object;
.source "StackTraceInterfaceBinding.java"

# interfaces
.implements Lio/sentry/marshaller/json/InterfaceBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/marshaller/json/InterfaceBinding",
        "<",
        "Lio/sentry/event/interfaces/StackTraceInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static inAppBlacklistRegexps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private inAppFrames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private removeCommonFramesWithEnclosing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->inAppBlacklistRegexps:Ljava/util/List;

    .line 34
    sget-object v0, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->inAppBlacklistRegexps:Ljava/util/List;

    const-string v1, "\\$\\$FastClass[a-zA-Z]*CGLIB\\$\\$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->inAppBlacklistRegexps:Ljava/util/List;

    const-string v1, "\\$\\$Enhancer[a-zA-Z]*CGLIB\\$\\$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->inAppFrames:Ljava/util/Collection;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->removeCommonFramesWithEnclosing:Z

    return-void
.end method

.method private isBlacklistedFromInApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v3, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->inAppBlacklistRegexps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 91
    .local v2, "inAppBlacklistRegexp":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 92
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 93
    const/4 v3, 0x1

    .line 97
    .end local v0    # "found":Z
    .end local v2    # "inAppBlacklistRegexp":Ljava/util/regex/Pattern;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isFrameInApp(Lio/sentry/event/interfaces/SentryStackTraceElement;)Z
    .locals 4
    .param p1, "stackTraceElement"    # Lio/sentry/event/interfaces/SentryStackTraceElement;

    .prologue
    .line 80
    iget-object v3, p0, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->inAppFrames:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    .local v2, "inAppFrame":Ljava/lang/String;
    invoke-virtual {p1}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getModule()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->isBlacklistedFromInApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    const/4 v3, 0x1

    .line 86
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "inAppFrame":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private writeFrame(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/interfaces/SentryStackTraceElement;Z)V
    .locals 5
    .param p1, "generator"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "stackTraceElement"    # Lio/sentry/event/interfaces/SentryStackTraceElement;
    .param p3, "commonWithEnclosing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 46
    const-string v3, "filename"

    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "module"

    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getModule()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-boolean v3, p0, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->removeCommonFramesWithEnclosing:Z

    if-eqz v3, :cond_0

    if-nez p3, :cond_4

    :cond_0
    invoke-direct {p0, p2}, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->isFrameInApp(Lio/sentry/event/interfaces/SentryStackTraceElement;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    .line 49
    .local v1, "inApp":Z
    :goto_0
    const-string v3, "in_app"

    invoke-virtual {p1, v3, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 50
    const-string v3, "function"

    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getFunction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "lineno"

    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getLineno()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getColno()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 55
    const-string v3, "colno"

    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getColno()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 58
    :cond_1
    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getPlatform()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 59
    const-string v3, "platform"

    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getAbsPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 63
    const-string v3, "abs_path"

    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getAbsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getLocals()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getLocals()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 67
    const-string v3, "vars"

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Lio/sentry/event/interfaces/SentryStackTraceElement;->getLocals()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    .local v2, "varEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "inApp":Z
    .end local v2    # "varEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 72
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "inApp":Z
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 75
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 76
    return-void
.end method


# virtual methods
.method public setInAppFrames(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "inAppFrames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->inAppFrames:Ljava/util/Collection;

    .line 119
    return-void
.end method

.method public setRemoveCommonFramesWithEnclosing(Z)V
    .locals 0
    .param p1, "removeCommonFramesWithEnclosing"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->removeCommonFramesWithEnclosing:Z

    .line 115
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
    .line 14
    check-cast p2, Lio/sentry/event/interfaces/StackTraceInterface;

    invoke-virtual {p0, p1, p2}, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->writeInterface(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/interfaces/StackTraceInterface;)V

    return-void
.end method

.method public writeInterface(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/interfaces/StackTraceInterface;)V
    .locals 6
    .param p1, "generator"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "stackTraceInterface"    # Lio/sentry/event/interfaces/StackTraceInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 103
    const-string v4, "frames"

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Lio/sentry/event/interfaces/StackTraceInterface;->getStackTrace()[Lio/sentry/event/interfaces/SentryStackTraceElement;

    move-result-object v3

    .line 105
    .local v3, "sentryStackTrace":[Lio/sentry/event/interfaces/SentryStackTraceElement;
    invoke-virtual {p2}, Lio/sentry/event/interfaces/StackTraceInterface;->getFramesCommonWithEnclosing()I

    move-result v0

    .line 106
    .local v0, "commonWithEnclosing":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    move v1, v0

    .end local v0    # "commonWithEnclosing":I
    .local v1, "commonWithEnclosing":I
    :goto_0
    if-ltz v2, :cond_1

    .line 107
    aget-object v5, v3, v2

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "commonWithEnclosing":I
    .restart local v0    # "commonWithEnclosing":I
    if-lez v1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, p1, v5, v4}, Lio/sentry/marshaller/json/StackTraceInterfaceBinding;->writeFrame(Lcom/fasterxml/jackson/core/JsonGenerator;Lio/sentry/event/interfaces/SentryStackTraceElement;Z)V

    .line 106
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    .end local v0    # "commonWithEnclosing":I
    .restart local v1    # "commonWithEnclosing":I
    goto :goto_0

    .line 107
    .end local v1    # "commonWithEnclosing":I
    .restart local v0    # "commonWithEnclosing":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 109
    .end local v0    # "commonWithEnclosing":I
    .restart local v1    # "commonWithEnclosing":I
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 110
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 111
    return-void
.end method
