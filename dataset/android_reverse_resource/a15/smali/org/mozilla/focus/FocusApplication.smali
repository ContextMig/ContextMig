.class public final Lorg/mozilla/focus/FocusApplication;
.super Lorg/mozilla/focus/locale/LocaleAwareApplication;
.source "FocusApplication.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusApplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusApplication.kt\norg/mozilla/focus/FocusApplication\n*L\n1#1,73:1\n*E\n"
.end annotation


# instance fields
.field private visibilityLifeCycleCallback:Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/mozilla/focus/locale/LocaleAwareApplication;-><init>()V

    return-void
.end method

.method private final enableStrictMode()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lorg/mozilla/focus/utils/AppConstants;->isReleaseBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 64
    .local v0, "threadPolicyBuilder":Landroid/os/StrictMode$ThreadPolicy$Builder;
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 66
    .local v1, "vmPolicyBuilder":Landroid/os/StrictMode$VmPolicy$Builder;
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 67
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 70
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_0
.end method


# virtual methods
.method public final getVisibilityLifeCycleCallback()Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/mozilla/focus/FocusApplication;->visibilityLifeCycleCallback:Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareApplication;->onCreate()V

    move-object v0, p0

    .line 29
    check-cast v0, Landroid/content/Context;

    const v2, 0x7f130008

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 31
    invoke-direct {p0}, Lorg/mozilla/focus/FocusApplication;->enableStrictMode()V

    .line 33
    sget-object v0, Lorg/mozilla/focus/Components;->INSTANCE:Lorg/mozilla/focus/Components;

    invoke-virtual {v0}, Lorg/mozilla/focus/Components;->getSearchEngineManager()Lmozilla/components/browser/search/SearchEngineManager;

    move-result-object v6

    .line 34
    .local v6, "$receiver":Lmozilla/components/browser/search/SearchEngineManager;
    sget-object v0, Lkotlinx/coroutines/experimental/CommonPool;->INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;

    invoke-direct {v3, v6, v1, p0}, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;-><init>(Lmozilla/components/browser/search/SearchEngineManager;Lkotlin/coroutines/experimental/Continuation;Lorg/mozilla/focus/FocusApplication;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x6

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    move-object v0, p0

    .line 38
    check-cast v0, Landroid/content/Context;

    invoke-virtual {v6, v0}, Lmozilla/components/browser/search/SearchEngineManager;->registerForLocaleUpdates(Landroid/content/Context;)V

    .line 39
    nop

    .line 33
    nop

    move-object v0, p0

    .line 41
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->init(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lorg/mozilla/focus/utils/AdjustHelper;->setupAdjustIfNeeded(Lorg/mozilla/focus/FocusApplication;)V

    .line 44
    new-instance v1, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/mozilla/focus/FocusApplication;->visibilityLifeCycleCallback:Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;

    .line 45
    iget-object v0, p0, Lorg/mozilla/focus/FocusApplication;->visibilityLifeCycleCallback:Lorg/mozilla/focus/session/VisibilityLifeCycleCallback;

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/FocusApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 47
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    const-string v1, "SessionManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->getSessions()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v8

    .line 48
    .local v8, "sessions":Lorg/mozilla/focus/architecture/NonNullLiveData;
    new-instance v1, Lorg/mozilla/focus/session/NotificationSessionObserver;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/mozilla/focus/session/NotificationSessionObserver;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v8, v0}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    .line 49
    new-instance v0, Lorg/mozilla/focus/telemetry/TelemetrySessionObserver;

    invoke-direct {v0}, Lorg/mozilla/focus/telemetry/TelemetrySessionObserver;-><init>()V

    check-cast v0, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v8, v0}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    .line 50
    new-instance v0, Lorg/mozilla/focus/web/CleanupSessionObserver;

    check-cast p0, Landroid/content/Context;

    .end local p0    # "this":Lorg/mozilla/focus/FocusApplication;
    invoke-direct {v0, p0}, Lorg/mozilla/focus/web/CleanupSessionObserver;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v8, v0}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    .line 52
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    const-string v1, "SessionManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mozilla/focus/session/SessionManager;->getCustomTabSessions()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v7

    .line 53
    .local v7, "customTabSessions":Lorg/mozilla/focus/architecture/NonNullLiveData;
    new-instance v0, Lorg/mozilla/focus/telemetry/TelemetrySessionObserver;

    invoke-direct {v0}, Lorg/mozilla/focus/telemetry/TelemetrySessionObserver;-><init>()V

    check-cast v0, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v7, v0}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    .line 54
    return-void
.end method
