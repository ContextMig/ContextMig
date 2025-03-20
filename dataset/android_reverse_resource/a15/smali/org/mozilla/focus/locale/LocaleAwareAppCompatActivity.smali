.class public abstract Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LocaleAwareAppCompatActivity.java"


# instance fields
.field private volatile mLastLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;Ljava/util/Locale;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 66
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 75
    :goto_0
    return-void

    .line 68
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract applyLocale()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->applyLocale()V

    .line 95
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 44
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v1

    .line 46
    .local v1, "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lorg/mozilla/focus/locale/LocaleManager;->correctLocale(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Configuration;)V

    .line 48
    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->mLastLocale:Ljava/util/Locale;

    invoke-virtual {v1, p0, v2, p1, v3}, Lorg/mozilla/focus/locale/LocaleManager;->onSystemConfigurationChanged(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Configuration;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 50
    .local v0, "changed":Ljava/util/Locale;
    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lorg/mozilla/focus/locale/LocaleManager;->updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V

    .line 52
    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->applyLocale()V

    .line 53
    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->setLayoutDirection(Landroid/view/View;Ljava/util/Locale;)V

    .line 56
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-static {p0}, Lorg/mozilla/focus/locale/Locales;->initializeLocale(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/locale/LocaleManager;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->mLastLocale:Ljava/util/Locale;

    .line 36
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->mLastLocale:Ljava/util/Locale;

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/focus/locale/LocaleManager;->updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 106
    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/locale/LocaleAwareApplication;

    invoke-virtual {v0}, Lorg/mozilla/focus/locale/LocaleAwareApplication;->onActivityPause()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 100
    invoke-virtual {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/locale/LocaleAwareApplication;

    invoke-virtual {v0}, Lorg/mozilla/focus/locale/LocaleAwareApplication;->onActivityResume()V

    .line 101
    return-void
.end method

.method public openPreferences()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mozilla/focus/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "settingsIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    return-void
.end method
