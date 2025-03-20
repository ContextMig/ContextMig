.class public Lorg/mozilla/focus/utils/AdjustHelper;
.super Ljava/lang/Object;
.source "AdjustHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/utils/AdjustHelper$AdjustLifecycleCallbacks;
    }
.end annotation


# direct methods
.method public static setupAdjustIfNeeded(Lorg/mozilla/focus/FocusApplication;)V
    .locals 4
    .param p0, "application"    # Lorg/mozilla/focus/FocusApplication;

    .prologue
    .line 26
    const-string v1, "6olojlf2qayo"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No adjust token defined for release build"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    invoke-static {p0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->isTelemetryEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v0, Lcom/adjust/sdk/AdjustConfig;

    const-string v1, "6olojlf2qayo"

    const-string v2, "production"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    .local v0, "config":Lcom/adjust/sdk/AdjustConfig;
    sget-object v1, Lcom/adjust/sdk/LogLevel;->SUPRESS:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    .line 41
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 43
    new-instance v1, Lorg/mozilla/focus/utils/AdjustHelper$AdjustLifecycleCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/mozilla/focus/utils/AdjustHelper$AdjustLifecycleCallbacks;-><init>(Lorg/mozilla/focus/utils/AdjustHelper$1;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/FocusApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method
