.class public Lorg/mozilla/focus/telemetry/TelemetrySessionObserver;
.super Lorg/mozilla/focus/architecture/NonNullObserver;
.source "TelemetrySessionObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/focus/architecture/NonNullObserver",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/mozilla/focus/session/Session;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/mozilla/focus/architecture/NonNullObserver;-><init>()V

    return-void
.end method

.method private addTelemetryEvent(Lorg/mozilla/focus/session/Session;)V
    .locals 4
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 28
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getSource()Lorg/mozilla/focus/session/Source;

    move-result-object v0

    .line 30
    .local v0, "source":Lorg/mozilla/focus/session/Source;
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetrySessionObserver$1;->$SwitchMap$org$mozilla$focus$session$Source:[I

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Source;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown session source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :pswitch_0
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->browseIntentEvent()V

    .line 65
    :goto_0
    :pswitch_1
    return-void

    .line 36
    :pswitch_2
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->isSearch()Z

    move-result v1

    invoke-static {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->shareIntentEvent(Z)V

    goto :goto_0

    .line 40
    :pswitch_3
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->textSelectionIntentEvent()V

    goto :goto_0

    .line 44
    :pswitch_4
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openHomescreenShortcutEvent()V

    goto :goto_0

    .line 48
    :pswitch_5
    invoke-virtual {p1}, Lorg/mozilla/focus/session/Session;->getCustomTabConfig()Lorg/mozilla/focus/customtabs/CustomTabConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/customtabs/CustomTabConfig;->getOptionsList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->customTabsIntentEvent(Ljava/util/List;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic onValueChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/telemetry/TelemetrySessionObserver;->onValueChanged(Ljava/util/List;)V

    return-void
.end method

.method protected onValueChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/session/Session;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    .line 19
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->isRecorded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    invoke-direct {p0, v0}, Lorg/mozilla/focus/telemetry/TelemetrySessionObserver;->addTelemetryEvent(Lorg/mozilla/focus/session/Session;)V

    .line 22
    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->markAsRecorded()V

    goto :goto_0

    .line 25
    .end local v0    # "session":Lorg/mozilla/focus/session/Session;
    :cond_1
    return-void
.end method
