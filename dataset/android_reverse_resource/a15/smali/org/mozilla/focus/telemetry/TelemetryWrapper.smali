.class public final Lorg/mozilla/focus/telemetry/TelemetryWrapper;
.super Ljava/lang/Object;
.source "TelemetryWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;,
        Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;,
        Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;,
        Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;,
        Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;,
        Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;,
        Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelemetryWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelemetryWrapper.kt\norg/mozilla/focus/telemetry/TelemetryWrapper\n*L\n1#1,822:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

.field private static averageTime:D

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static numLoads:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    invoke-direct {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;-><init>()V

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefaultSearchEngineIdentifierForTelemetry(Lorg/mozilla/focus/telemetry/TelemetryWrapper;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/telemetry/TelemetryWrapper;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->getDefaultSearchEngineIdentifierForTelemetry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final addLoadToAverage(J)V
    .locals 6
    .param p0, "newLoadTime"    # J

    .prologue
    .line 295
    sget v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->numLoads:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->numLoads:I

    .line 296
    sget-wide v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->averageTime:D

    long-to-double v2, p0

    sget-wide v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->averageTime:D

    sub-double/2addr v2, v4

    sget v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->numLoads:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    sput-wide v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->averageTime:D

    .line 297
    return-void
.end method

.method public static final addSearchEngineLearnMoreEvent()V
    .locals 3

    .prologue
    .line 798
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getADD_SEARCH_ENGINE_LEARN_MORE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 799
    return-void
.end method

.method public static final addToHomescreenShortcutEvent()V
    .locals 4

    .prologue
    .line 506
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    .line 508
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    .line 509
    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getADD_TO_HOMESCREEN_DIALOG()Ljava/lang/String;

    move-result-object v2

    .line 510
    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getADD_TO_HOMESCREEN()Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 512
    return-void
.end method

.method public static final autofillPerformedEvent()V
    .locals 3

    .prologue
    .line 752
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAUTOFILL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 753
    return-void
.end method

.method public static final blockingSwitchEvent(Z)V
    .locals 4
    .param p0, "isBlockingEnabled"    # Z

    .prologue
    .line 624
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    .line 626
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    .line 627
    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBLOCKING_SWITCH()Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 624
    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 630
    return-void
.end method

.method private final browseEvent(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;)V
    .locals 4
    .param p1, "autocompleteResult"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    .prologue
    .line 349
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getTYPE_URL()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getSEARCH_BAR()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v2

    .line 350
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getAUTOCOMPLETE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 352
    .local v0, "event":Lorg/mozilla/telemetry/event/TelemetryEvent;
    invoke-virtual {p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getTOTAL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->getTotalItems()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    .line 354
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getSOURCE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    .line 357
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 358
    return-void

    .line 350
    .end local v0    # "event":Lorg/mozilla/telemetry/event/TelemetryEvent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final browseIntentEvent()V
    .locals 3

    .prologue
    .line 362
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getINTENT_URL()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAPP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 363
    return-void
.end method

.method public static final cancelAddToHomescreenShortcutEvent()V
    .locals 4

    .prologue
    .line 516
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getADD_TO_HOMESCREEN_DIALOG()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getCANCEL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 517
    return-void
.end method

.method public static final cancelWebContextMenuEvent(Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;)V
    .locals 4
    .param p0, "value"    # Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    .prologue
    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCANCEL()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER_CONTEXTMENU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 582
    return-void
.end method

.method public static final closeCustomTabEvent()V
    .locals 4

    .prologue
    .line 406
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getCUSTOM_TAB_CLOSE_BUTTON()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(Ca\u2026.CUSTOM_TAB_CLOSE_BUTTON)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 408
    return-void
.end method

.method public static final closeTabsTrayEvent()V
    .locals 3

    .prologue
    .line 676
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getHIDE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getTABS_TRAY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 677
    return-void
.end method

.method public static final copyImageEvent()V
    .locals 4

    .prologue
    .line 565
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCOPY()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER_CONTEXTMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getIMAGE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 566
    return-void
.end method

.method public static final copyLinkEvent()V
    .locals 4

    .prologue
    .line 560
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCOPY()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER_CONTEXTMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getLINK()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 561
    return-void
.end method

.method private final createDefaultSearchProvider(Landroid/content/Context;)Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    new-instance v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$createDefaultSearchProvider$1;

    invoke-direct {v0, p1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$createDefaultSearchProvider$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;

    return-object v0
.end method

.method public static final customTabActionButtonEvent()V
    .locals 3

    .prologue
    .line 412
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getCUSTOM_TAB_ACTION_BUTTON()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 413
    return-void
.end method

.method public static final customTabMenuEvent()V
    .locals 4

    .prologue
    .line 417
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getOPEN()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getCUSTOM_TAB()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 418
    return-void
.end method

.method public static final customTabsIntentEvent(Ljava/util/List;)V
    .locals 6
    .param p0, "options"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0xa

    const-string v3, "options"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getINTENT_CUSTOM_TAB()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v5}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAPP()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 382
    .local v0, "event":Lorg/mozilla/telemetry/event/TelemetryEvent;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 388
    .local v1, "extrasCount":I
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 389
    .local v2, "option":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v0, v2, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    goto :goto_1

    .line 385
    .end local v1    # "extrasCount":I
    .end local v2    # "option":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 392
    .restart local v1    # "extrasCount":I
    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 393
    return-void
.end method

.method public static final desktopRequestCheckEvent(Z)V
    .locals 4
    .param p0, "shouldRequestDesktop"    # Z

    .prologue
    .line 634
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    .line 636
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    .line 637
    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getDESKTOP_REQUEST_CHECK()Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 640
    return-void
.end method

.method public static final downloadDialogDownloadEvent(Z)V
    .locals 4
    .param p0, "sentToDownload"    # Z

    .prologue
    .line 397
    if-eqz p0, :cond_0

    .line 398
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getDOWNLOAD_DIALOG()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getDOWNLOAD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 401
    :goto_0
    return-void

    .line 400
    :cond_0
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getDOWNLOAD_DIALOG()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getCANCEL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    goto :goto_0
.end method

.method public static final eraseAndOpenNotificationActionEvent()V
    .locals 5

    .prologue
    .line 486
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    .line 487
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    .line 488
    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v2

    .line 489
    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getNOTIFICATION_ACTION()Ljava/lang/String;

    move-result-object v3

    .line 490
    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getERASE_AND_OPEN()Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(\n \u2026    Value.ERASE_AND_OPEN)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 492
    return-void
.end method

.method public static final eraseBackToAppEvent()V
    .locals 5

    .prologue
    .line 474
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBACK_BUTTON()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getERASE_TO_APP()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(Ca\u2026TTON, Value.ERASE_TO_APP)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 476
    return-void
.end method

.method public static final eraseBackToHomeEvent()V
    .locals 5

    .prologue
    .line 468
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBACK_BUTTON()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getERASE_TO_HOME()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(Ca\u2026TON, Value.ERASE_TO_HOME)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 470
    return-void
.end method

.method public static final eraseEvent()V
    .locals 4

    .prologue
    .line 462
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getERASE_BUTTON()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(Ca\u2026ICK, Object.ERASE_BUTTON)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 464
    return-void
.end method

.method public static final eraseInTabsTrayEvent()V
    .locals 5

    .prologue
    .line 687
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getTABS_TRAY()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getERASE()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(Ca\u2026t.TABS_TRAY, Value.ERASE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 689
    return-void
.end method

.method public static final eraseNotificationEvent()V
    .locals 5

    .prologue
    .line 480
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getNOTIFICATION()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getERASE()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(Ca\u2026OTIFICATION, Value.ERASE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 482
    return-void
.end method

.method public static final eraseShortcutEvent()V
    .locals 5

    .prologue
    .line 521
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getSHORTCUT()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getERASE()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(Ca\u2026ct.SHORTCUT, Value.ERASE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 523
    return-void
.end method

.method public static final eraseTaskRemoved()V
    .locals 5

    .prologue
    .line 527
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getRECENT_APPS()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getERASE()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(Ca\u2026RECENT_APPS, Value.ERASE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 529
    return-void
.end method

.method public static final findInPageMenuEvent()V
    .locals 4

    .prologue
    .line 671
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getOPEN()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getFIND_IN_PAGE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 672
    return-void
.end method

.method public static final finishFirstRunEvent()V
    .locals 4

    .prologue
    .line 654
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getFIRSTRUN()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getFINISH()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 655
    return-void
.end method

.method private final getDefaultSearchEngineIdentifierForTelemetry(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    sget-object v1, Lorg/mozilla/focus/Components;->INSTANCE:Lorg/mozilla/focus/Components;

    invoke-virtual {v1}, Lorg/mozilla/focus/Components;->getSearchEngineManager()Lmozilla/components/browser/search/SearchEngineManager;

    move-result-object v1

    .line 449
    sget-object v2, Lorg/mozilla/focus/utils/Settings;->Companion:Lorg/mozilla/focus/utils/Settings$Companion;

    invoke-virtual {v2, p1}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/utils/Settings;->getDefaultSearchEngineName()Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-virtual {v1, p1, v2}, Lmozilla/components/browser/search/SearchEngineManager;->getDefaultSearchEngine(Landroid/content/Context;Ljava/lang/String;)Lmozilla/components/browser/search/SearchEngine;

    move-result-object v1

    invoke-virtual {v1}, Lmozilla/components/browser/search/SearchEngine;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "searchEngine":Ljava/lang/String;
    sget-object v1, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->isCustomSearchEngine(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    const-string v0, "custom"

    .line 452
    .end local v0    # "searchEngine":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v8, "context"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 217
    .local v7, "threadPolicy":Landroid/os/StrictMode$ThreadPolicy;
    nop

    .line 218
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 220
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-static {p0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->isTelemetryEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 222
    .local v6, "telemetryEnabled":Z
    new-instance v8, Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-direct {v8, p0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;-><init>(Landroid/content/Context;)V

    .line 223
    const-string v9, "https://incoming.telemetry.mozilla.org"

    invoke-virtual {v8, v9}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setServerEndpoint(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v9

    .line 224
    invoke-static {}, Lorg/mozilla/focus/utils/AppConstants;->isKlarBuild()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "Klar"

    :goto_0
    invoke-virtual {v9, v8}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setAppName(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v8

    .line 225
    const-string v9, "release"

    invoke-virtual {v8, v9}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setUpdateChannel(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v8

    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/String;

    .line 227
    const/4 v10, 0x0

    const v11, 0x7f0f00ba

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 228
    const/4 v10, 0x1

    const v11, 0x7f0f00b0

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 229
    const/4 v10, 0x2

    const v11, 0x7f0f00b1

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 230
    const/4 v10, 0x3

    const v11, 0x7f0f00b3

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 231
    const/4 v10, 0x4

    const v11, 0x7f0f00b2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 232
    const/4 v10, 0x5

    const v11, 0x7f0f00ad

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 233
    const/4 v10, 0x6

    const v11, 0x7f0f00af

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 234
    const/4 v10, 0x7

    const v11, 0x7f0f00ae

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 235
    const/16 v10, 0x8

    const v11, 0x7f0f00a8

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 236
    const/16 v10, 0x9

    const v11, 0x7f0f00bc

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 237
    const/16 v10, 0xa

    const v11, 0x7f0f00a6

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 238
    const/16 v10, 0xb

    const v11, 0x7f0f00a5

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 239
    const/16 v10, 0xc

    const v11, 0x7f0f00a4

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 226
    invoke-virtual {v8, v9}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setPreferencesImportantForTelemetry([Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v9

    .line 240
    new-instance v8, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;

    invoke-direct {v8, p0}, Lorg/mozilla/focus/telemetry/TelemetrySettingsProvider;-><init>(Landroid/content/Context;)V

    check-cast v8, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;

    invoke-virtual {v9, v8}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setSettingsProvider(Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v8

    .line 241
    invoke-virtual {v8, v6}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setCollectionEnabled(Z)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v8

    .line 242
    invoke-virtual {v8, v6}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setUploadEnabled(Z)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v9

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-direct {v10, p0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getBuildId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 244
    invoke-static {}, Lorg/mozilla/focus/utils/AppConstants;->isGeckoBuild()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 245
    const-string v8, "-GeckoView"

    .line 244
    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 243
    invoke-virtual {v9, v8}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setBuildId(Ljava/lang/String;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v1

    .line 247
    .local v1, "configuration":Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    new-instance v4, Lorg/mozilla/telemetry/serialize/JSONPingSerializer;

    invoke-direct {v4}, Lorg/mozilla/telemetry/serialize/JSONPingSerializer;-><init>()V

    .line 248
    .local v4, "serializer":Lorg/mozilla/telemetry/serialize/JSONPingSerializer;
    new-instance v5, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;

    check-cast v4, Lorg/mozilla/telemetry/serialize/TelemetryPingSerializer;

    .end local v4    # "serializer":Lorg/mozilla/telemetry/serialize/JSONPingSerializer;
    invoke-direct {v5, v1, v4}, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Lorg/mozilla/telemetry/serialize/TelemetryPingSerializer;)V

    .line 249
    .local v5, "storage":Lorg/mozilla/telemetry/storage/FileTelemetryStorage;
    new-instance v0, Lorg/mozilla/telemetry/net/HttpURLConnectionTelemetryClient;

    invoke-direct {v0}, Lorg/mozilla/telemetry/net/HttpURLConnectionTelemetryClient;-><init>()V

    .line 250
    .local v0, "client":Lorg/mozilla/telemetry/net/HttpURLConnectionTelemetryClient;
    new-instance v3, Lorg/mozilla/telemetry/schedule/jobscheduler/JobSchedulerTelemetryScheduler;

    invoke-direct {v3}, Lorg/mozilla/telemetry/schedule/jobscheduler/JobSchedulerTelemetryScheduler;-><init>()V

    .line 252
    .local v3, "scheduler":Lorg/mozilla/telemetry/schedule/jobscheduler/JobSchedulerTelemetryScheduler;
    new-instance v9, Lorg/mozilla/telemetry/Telemetry;

    check-cast v5, Lorg/mozilla/telemetry/storage/TelemetryStorage;

    .end local v5    # "storage":Lorg/mozilla/telemetry/storage/FileTelemetryStorage;
    check-cast v0, Lorg/mozilla/telemetry/net/TelemetryClient;

    .end local v0    # "client":Lorg/mozilla/telemetry/net/HttpURLConnectionTelemetryClient;
    check-cast v3, Lorg/mozilla/telemetry/schedule/TelemetryScheduler;

    .end local v3    # "scheduler":Lorg/mozilla/telemetry/schedule/jobscheduler/JobSchedulerTelemetryScheduler;
    invoke-direct {v9, v1, v5, v0, v3}, Lorg/mozilla/telemetry/Telemetry;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Lorg/mozilla/telemetry/storage/TelemetryStorage;Lorg/mozilla/telemetry/net/TelemetryClient;Lorg/mozilla/telemetry/schedule/TelemetryScheduler;)V

    .line 253
    new-instance v8, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;

    invoke-direct {v8, v1}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    check-cast v8, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;

    invoke-virtual {v9, v8}, Lorg/mozilla/telemetry/Telemetry;->addPingBuilder(Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;)Lorg/mozilla/telemetry/Telemetry;

    move-result-object v9

    .line 254
    new-instance v8, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;

    invoke-direct {v8, v1}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    check-cast v8, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;

    invoke-virtual {v9, v8}, Lorg/mozilla/telemetry/Telemetry;->addPingBuilder(Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;)Lorg/mozilla/telemetry/Telemetry;

    move-result-object v8

    .line 255
    sget-object v9, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    invoke-direct {v9, p0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->createDefaultSearchProvider(Landroid/content/Context;)Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/mozilla/telemetry/Telemetry;->setDefaultSearchProvider(Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;)Lorg/mozilla/telemetry/Telemetry;

    move-result-object v8

    .line 252
    invoke-static {v8}, Lorg/mozilla/telemetry/TelemetryHolder;->set(Lorg/mozilla/telemetry/Telemetry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 258
    return-void

    .line 224
    .end local v1    # "configuration":Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    :cond_0
    :try_start_1
    const-string v8, "Focus"

    goto/16 :goto_0

    .line 245
    :cond_1
    const-string v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 257
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v6    # "telemetryEnabled":Z
    :catchall_0
    move-exception v8

    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8
.end method

.method public static final installFirefoxEvent()V
    .locals 4

    .prologue
    .line 614
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getINSTALL()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAPP()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getFIREFOX()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 615
    return-void
.end method

.method private final isDeviceWithTelemetryDisabled()Z
    .locals 3

    .prologue
    .line 816
    const-string v0, "blackberry"

    .line 817
    .local v0, "brand":Ljava/lang/String;
    const-string v1, "bbf100"

    .line 819
    .local v1, "device":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final isEnabledByDefault()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lorg/mozilla/focus/utils/AppConstants;->isKlarBuild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isTelemetryEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-string v4, "context"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    invoke-direct {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->isDeviceWithTelemetryDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    :goto_0
    return v3

    .line 186
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 187
    .local v2, "threadPolicy":Landroid/os/StrictMode$ThreadPolicy;
    nop

    .line 188
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 189
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const v4, 0x7f0f00bd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    invoke-direct {v5}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->isEnabledByDefault()Z

    move-result v5

    .line 191
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    invoke-static {}, Lorg/mozilla/focus/utils/AppConstants;->isDevBuild()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    .line 194
    :cond_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method

.method public static final menuAddSearchEngineEvent()V
    .locals 3

    .prologue
    .line 779
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSHOW()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getCUSTOM_SEARCH_ENGINE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 780
    return-void
.end method

.method public static final menuReloadEvent()V
    .locals 4

    .prologue
    .line 698
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getRELOAD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 699
    return-void
.end method

.method public static final menuRemoveEnginesEvent()V
    .locals 3

    .prologue
    .line 769
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getREMOVE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getSEARCH_ENGINE_SETTING()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 770
    return-void
.end method

.method public static final menuRestoreEnginesEvent()V
    .locals 3

    .prologue
    .line 774
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getRESTORE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getSEARCH_ENGINE_SETTING()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 775
    return-void
.end method

.method public static final openDefaultAppEvent()V
    .locals 4

    .prologue
    .line 586
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getOPEN()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getDEFAULT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 587
    return-void
.end method

.method public static final openFirefoxEvent()V
    .locals 4

    .prologue
    .line 609
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getOPEN()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getFIREFOX()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 610
    return-void
.end method

.method public static final openFromIconEvent()V
    .locals 4

    .prologue
    .line 599
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAPP_ICON()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getOPEN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 600
    return-void
.end method

.method public static final openFullBrowser()V
    .locals 4

    .prologue
    .line 594
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getOPEN()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getFULL_BROWSER()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 595
    return-void
.end method

.method public static final openHomescreenShortcutEvent()V
    .locals 4

    .prologue
    .line 501
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getHOMESCREEN_SHORTCUT()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getOPEN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 502
    return-void
.end method

.method public static final openLinkInNewTabEvent()V
    .locals 5

    .prologue
    .line 570
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getOPEN()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER_CONTEXTMENU()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getTAB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(Ca\u2026R_CONTEXTMENU, Value.TAB)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 572
    return-void
.end method

.method public static final openNotificationActionEvent()V
    .locals 4

    .prologue
    .line 496
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getNOTIFICATION_ACTION()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getOPEN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 497
    return-void
.end method

.method public static final openSearchSettingsEvent()V
    .locals 3

    .prologue
    .line 764
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getOPEN()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getSEARCH_ENGINE_SETTING()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 765
    return-void
.end method

.method public static final openSelectionEvent()V
    .locals 4

    .prologue
    .line 619
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getOPEN()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getSELECTION()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 620
    return-void
.end method

.method public static final openTabsTrayEvent()V
    .locals 3

    .prologue
    .line 659
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSHOW()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getTABS_TRAY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 660
    return-void
.end method

.method public static final openWebContextMenuEvent()V
    .locals 3

    .prologue
    .line 576
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getLONG_PRESS()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 577
    return-void
.end method

.method public static final openWhatsNewEvent(Z)V
    .locals 4
    .param p0, "highlighted"    # Z

    .prologue
    .line 664
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getWHATS_NEW()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 665
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getHIGHLIGHTED()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 667
    return-void
.end method

.method public static final removeSearchEnginesEvent(I)V
    .locals 3
    .param p0, "selected"    # I

    .prologue
    .line 791
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getREMOVE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getREMOVE_SEARCH_ENGINES()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 792
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getSELECTED()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 794
    return-void
.end method

.method public static final reportSiteIssueEvent()V
    .locals 4

    .prologue
    .line 803
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getREPORT_ISSUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 804
    return-void
.end method

.method private static final resetAverageLoad()V
    .locals 2

    .prologue
    .line 301
    const/4 v0, 0x0

    sput v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->numLoads:I

    .line 302
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->averageTime:D

    .line 303
    return-void
.end method

.method public static final resumeFromIconEvent()V
    .locals 4

    .prologue
    .line 604
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAPP_ICON()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getRESUME()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 605
    return-void
.end method

.method public static final saveCustomSearchEngineEvent(Z)V
    .locals 3
    .param p0, "success"    # Z

    .prologue
    .line 784
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSAVE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getCUSTOM_SEARCH_ENGINE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 785
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getSUCCESS()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 787
    return-void
.end method

.method public static final saveImageEvent()V
    .locals 4

    .prologue
    .line 555
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSAVE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER_CONTEXTMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getIMAGE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 556
    return-void
.end method

.method private final searchEnterEvent()V
    .locals 5

    .prologue
    .line 426
    invoke-static {}, Lorg/mozilla/telemetry/TelemetryHolder;->get()Lorg/mozilla/telemetry/Telemetry;

    move-result-object v1

    .line 428
    .local v1, "telemetry":Lorg/mozilla/telemetry/Telemetry;
    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getTYPE_QUERY()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getSEARCH_BAR()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 430
    const-string v2, "telemetry"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/mozilla/telemetry/Telemetry;->getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v2

    const-string v3, "telemetry.configuration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "telemetry.configuration.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->getDefaultSearchEngineIdentifierForTelemetry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "searchEngine":Ljava/lang/String;
    const-string v2, "actionbar"

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/telemetry/Telemetry;->recordSearch(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/Telemetry;

    .line 433
    return-void
.end method

.method public static final searchSelectEvent()V
    .locals 5

    .prologue
    .line 437
    invoke-static {}, Lorg/mozilla/telemetry/TelemetryHolder;->get()Lorg/mozilla/telemetry/Telemetry;

    move-result-object v1

    .line 439
    .local v1, "telemetry":Lorg/mozilla/telemetry/Telemetry;
    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getTYPE_SELECT_QUERY()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getSEARCH_BAR()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 441
    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    const-string v3, "telemetry"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/mozilla/telemetry/Telemetry;->getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v3

    const-string v4, "telemetry.configuration"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "telemetry.configuration.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->getDefaultSearchEngineIdentifierForTelemetry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "searchEngineIdentifier":Ljava/lang/String;
    const-string v2, "suggestion"

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/telemetry/Telemetry;->recordSearch(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/Telemetry;

    .line 444
    return-void
.end method

.method public static final setDefaultSearchEngineEvent(Ljava/lang/String;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSAVE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getSEARCH_ENGINE_SETTING()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 758
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getSOURCE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 760
    return-void
.end method

.method public static final setTelemetryEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 201
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 204
    const v3, 0x7f0f00bd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 205
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    invoke-static {}, Lorg/mozilla/telemetry/TelemetryHolder;->get()Lorg/mozilla/telemetry/Telemetry;

    move-result-object v2

    const-string v3, "TelemetryHolder.get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mozilla/telemetry/Telemetry;->getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v2

    .line 209
    invoke-virtual {v2, p1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setUploadEnabled(Z)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v2

    const-string v3, "TelemetryHolder.get()\n  \u2026setUploadEnabled(enabled)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->setCollectionEnabled(Z)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 210
    return-void
.end method

.method public static final settingsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCHANGE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getSETTING()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 534
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getTO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 536
    return-void
.end method

.method public static final shareEvent()V
    .locals 3

    .prologue
    .line 540
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSHARE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getMENU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 541
    return-void
.end method

.method public static final shareImageEvent()V
    .locals 4

    .prologue
    .line 550
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSHARE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER_CONTEXTMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getIMAGE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 551
    return-void
.end method

.method public static final shareIntentEvent(Z)V
    .locals 4
    .param p0, "isSearch"    # Z

    .prologue
    .line 367
    if-eqz p0, :cond_0

    .line 368
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSHARE_INTENT()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAPP()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getSEARCH()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSHARE_INTENT()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAPP()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    goto :goto_0
.end method

.method public static final shareLinkEvent()V
    .locals 4

    .prologue
    .line 545
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSHARE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER_CONTEXTMENU()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getLINK()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 546
    return-void
.end method

.method public static final showFirstRunPageEvent(I)V
    .locals 4
    .param p0, "page"    # I

    .prologue
    .line 644
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSHOW()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getFIRSTRUN()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 645
    return-void
.end method

.method public static final skipFirstRunEvent()V
    .locals 4

    .prologue
    .line 649
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getFIRSTRUN()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getSKIP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 650
    return-void
.end method

.method public static final sslErrorEvent(ZLandroid/net/http/SslError;)V
    .locals 4
    .param p0, "fromPage"    # Z
    .param p1, "error"    # Landroid/net/http/SslError;

    .prologue
    const-string v1, "error"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    invoke-virtual {p1}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 711
    const-string v0, "Undefined SSL Error"

    .line 713
    .local v0, "primaryErrorMessage":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getERROR()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getPAGE()Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    .line 714
    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getERROR_CODE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    .line 715
    invoke-virtual {v1}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 716
    return-void

    .line 705
    .end local v0    # "primaryErrorMessage":Ljava/lang/String;
    :pswitch_0
    const-string v0, "SSL_DATE_INVALID"

    goto :goto_0

    .line 706
    :pswitch_1
    const-string v0, "SSL_EXPIRED"

    goto :goto_0

    .line 707
    :pswitch_2
    const-string v0, "SSL_IDMISMATCH"

    goto :goto_0

    .line 708
    :pswitch_3
    const-string v0, "SSL_NOTYETVALID"

    goto :goto_0

    .line 709
    :pswitch_4
    const-string v0, "SSL_UNTRUSTED"

    goto :goto_0

    .line 710
    :pswitch_5
    const-string v0, "SSL_INVALID"

    goto :goto_0

    .line 713
    .restart local v0    # "primaryErrorMessage":Ljava/lang/String;
    :cond_0
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getRESOURCE()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static final startSession()V
    .locals 3

    .prologue
    .line 285
    invoke-static {}, Lorg/mozilla/telemetry/TelemetryHolder;->get()Lorg/mozilla/telemetry/Telemetry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/Telemetry;->recordSessionStart()V

    .line 287
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getFOREGROUND()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAPP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 288
    return-void
.end method

.method public static final stopMainActivity()V
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lorg/mozilla/telemetry/TelemetryHolder;->get()Lorg/mozilla/telemetry/Telemetry;

    move-result-object v0

    .line 334
    const-string v1, "core"

    invoke-virtual {v0, v1}, Lorg/mozilla/telemetry/Telemetry;->queuePing(Ljava/lang/String;)Lorg/mozilla/telemetry/Telemetry;

    move-result-object v0

    .line 335
    const-string v1, "focus-event"

    invoke-virtual {v0, v1}, Lorg/mozilla/telemetry/Telemetry;->queuePing(Ljava/lang/String;)Lorg/mozilla/telemetry/Telemetry;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lorg/mozilla/telemetry/Telemetry;->scheduleUpload()Lorg/mozilla/telemetry/Telemetry;

    .line 337
    return-void
.end method

.method public static final stopSession()V
    .locals 4

    .prologue
    .line 320
    invoke-static {}, Lorg/mozilla/telemetry/TelemetryHolder;->get()Lorg/mozilla/telemetry/Telemetry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/Telemetry;->recordSessionEnd()Lorg/mozilla/telemetry/Telemetry;

    .line 322
    sget v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->numLoads:I

    if-lez v0, :cond_0

    .line 323
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getFOREGROUND()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 324
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getAVERAGE()Ljava/lang/String;

    move-result-object v1

    sget-wide v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->averageTime:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 325
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->resetAverageLoad()V

    .line 328
    :cond_0
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getBACKGROUND()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAPP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 329
    return-void
.end method

.method public static final swipeReloadEvent()V
    .locals 4

    .prologue
    .line 693
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSWIPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getBROWSER()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getRELOAD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 694
    return-void
.end method

.method public static final switchTabInTabsTrayEvent()V
    .locals 5

    .prologue
    .line 681
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getCLICK()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getTABS_TRAY()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getTAB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    const-string v2, "TelemetryEvent.create(Ca\u2026ect.TABS_TRAY, Value.TAB)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 683
    return-void
.end method

.method public static final textSelectionIntentEvent()V
    .locals 3

    .prologue
    .line 422
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getTEXT_SELECTION_INTENT()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAPP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 423
    return-void
.end method

.method public static final urlBarEvent(ZLmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;)V
    .locals 1
    .param p0, "isUrl"    # Z
    .param p1, "autocompleteResult"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    .prologue
    const-string v0, "autocompleteResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    if-eqz p0, :cond_0

    .line 342
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    invoke-direct {v0, p1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->browseEvent(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;)V

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    invoke-direct {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->searchEnterEvent()V

    goto :goto_0
.end method

.method private final withSessionCounts(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/event/TelemetryEvent;
    .locals 3
    .param p1, "event"    # Lorg/mozilla/telemetry/event/TelemetryEvent;

    .prologue
    .line 275
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    .line 277
    .local v0, "sessionManager":Lorg/mozilla/focus/session/SessionManager;
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getSELECTED()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sessionManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->getPositionOfCurrentSession()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    .line 278
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getTOTAL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->getNumberOfSessions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    .line 280
    return-object p1
.end method


# virtual methods
.method public final autofillShownEvent()V
    .locals 3

    .prologue
    .line 747
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSHOW()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAUTOFILL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 748
    return-void
.end method

.method public final removeAutocompleteDomainsEvent(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 734
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getREMOVE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAUTOCOMPLETE_DOMAIN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 735
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getTOTAL()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 737
    return-void
.end method

.method public final reorderAutocompleteDomainEvent(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 740
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getREORDER()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAUTOCOMPLETE_DOMAIN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 741
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getFROM()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 742
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getTO()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 744
    return-void
.end method

.method public final saveAutocompleteDomainEvent(Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;)V
    .locals 4
    .param p1, "eventSource"    # Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    .prologue
    const-string v1, "eventSource"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 725
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 724
    :pswitch_0
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getSETTINGS()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "source":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->getACTION()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Method;->getSAVE()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;

    invoke-virtual {v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Object;->getAUTOCOMPLETE_DOMAIN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/mozilla/telemetry/event/TelemetryEvent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    .line 729
    sget-object v2, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-virtual {v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->getSOURCE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/telemetry/event/TelemetryEvent;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;

    move-result-object v1

    .line 730
    invoke-virtual {v1}, Lorg/mozilla/telemetry/event/TelemetryEvent;->queue()V

    .line 731
    return-void

    .line 725
    .end local v0    # "source":Ljava/lang/String;
    :pswitch_1
    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getQUICK_ADD()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
