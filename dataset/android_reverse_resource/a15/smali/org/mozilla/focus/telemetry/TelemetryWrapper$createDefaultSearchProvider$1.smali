.class final Lorg/mozilla/focus/telemetry/TelemetryWrapper$createDefaultSearchProvider$1;
.super Ljava/lang/Object;
.source "TelemetryWrapper.kt"

# interfaces
.implements Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/telemetry/TelemetryWrapper;->createDefaultSearchProvider(Landroid/content/Context;)Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$createDefaultSearchProvider$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultSearchEngineIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    new-instance v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$createDefaultSearchProvider$1$1;

    invoke-direct {v0, p0, v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$createDefaultSearchProvider$1$1;-><init>(Lorg/mozilla/focus/telemetry/TelemetryWrapper$createDefaultSearchProvider$1;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    invoke-static {v2, v0, v1, v2}, Lkotlinx/coroutines/experimental/BuildersKt;->runBlocking$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    return-object v0
.end method
