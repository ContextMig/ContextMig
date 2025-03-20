.class public Lorg/mozilla/focus/locale/LocaleAwareApplication;
.super Landroid/app/Application;
.source "LocaleAwareApplication.java"


# instance fields
.field private mInBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPause()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/focus/locale/LocaleAwareApplication;->mInBackground:Z

    .line 43
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/focus/locale/LocaleAwareApplication;->mInBackground:Z

    .line 47
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 24
    iget-boolean v0, p0, Lorg/mozilla/focus/locale/LocaleAwareApplication;->mInBackground:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lorg/mozilla/focus/locale/LocaleManager;->correctLocale(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 11
    invoke-static {p0}, Lorg/mozilla/focus/locale/Locales;->initializeLocale(Landroid/content/Context;)V

    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    return-void
.end method
