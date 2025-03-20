.class public abstract Lorg/mozilla/focus/locale/LocaleAwareFragment;
.super Landroid/support/v4/app/Fragment;
.source "LocaleAwareFragment.java"


# instance fields
.field private cachedLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/focus/locale/LocaleAwareFragment;->cachedLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public abstract applyLocale()V
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 23
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 25
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/mozilla/focus/locale/LocaleManager;->correctLocale(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Configuration;)V

    .line 28
    iget-object v1, p0, Lorg/mozilla/focus/locale/LocaleAwareFragment;->cachedLocale:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/focus/locale/LocaleAwareFragment;->cachedLocale:Ljava/util/Locale;

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/focus/locale/LocaleManager;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 33
    .local v0, "newLocale":Ljava/util/Locale;
    if-nez v0, :cond_2

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 37
    :cond_2
    iget-object v1, p0, Lorg/mozilla/focus/locale/LocaleAwareFragment;->cachedLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    iput-object v0, p0, Lorg/mozilla/focus/locale/LocaleAwareFragment;->cachedLocale:Ljava/util/Locale;

    .line 39
    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->applyLocale()V

    goto :goto_0
.end method
