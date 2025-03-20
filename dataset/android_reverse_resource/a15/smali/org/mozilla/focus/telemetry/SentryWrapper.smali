.class public final Lorg/mozilla/focus/telemetry/SentryWrapper;
.super Ljava/lang/Object;
.source "SentryWrapper.kt"


# static fields
.field public static final INSTANCE:Lorg/mozilla/focus/telemetry/SentryWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/mozilla/focus/telemetry/SentryWrapper;

    invoke-direct {v0}, Lorg/mozilla/focus/telemetry/SentryWrapper;-><init>()V

    sput-object v0, Lorg/mozilla/focus/telemetry/SentryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/SentryWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->isTelemetryEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/focus/telemetry/SentryWrapper;->onIsEnabledChanged$app_focusWebviewUniversalRelease(Landroid/content/Context;Z)V

    .line 24
    return-void
.end method

.method public final onIsEnabledChanged$app_focusWebviewUniversalRelease(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isEnabled"    # Z

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    if-eqz p2, :cond_0

    const-string v0, "https://ea605eb73734488b979fd5bd2f4a8ba1:38442a2bcc6449a4a280648ce565cf60@sentry.prod.mozaws.net/204"

    .line 37
    .local v0, "sentryDsn":Ljava/lang/String;
    :goto_0
    new-instance v1, Lio/sentry/android/AndroidSentryClientFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/android/AndroidSentryClientFactory;-><init>(Landroid/content/Context;)V

    check-cast v1, Lio/sentry/SentryClientFactory;

    invoke-static {v0, v1}, Lio/sentry/Sentry;->init(Ljava/lang/String;Lio/sentry/SentryClientFactory;)Lio/sentry/SentryClient;

    .line 38
    return-void

    .line 36
    .end local v0    # "sentryDsn":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
