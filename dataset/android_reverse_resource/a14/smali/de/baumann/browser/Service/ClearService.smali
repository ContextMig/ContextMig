.class public Lde/baumann/browser/Service/ClearService;
.super Landroid/app/Service;
.source "ClearService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private clear()V
    .locals 6

    .line 31
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0e00d5

    .line 32
    invoke-virtual {p0, v1}, Lde/baumann/browser/Service/ClearService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const v3, 0x7f0e00d6

    .line 33
    invoke-virtual {p0, v3}, Lde/baumann/browser/Service/ClearService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const v4, 0x7f0e00d7

    .line 34
    invoke-virtual {p0, v4}, Lde/baumann/browser/Service/ClearService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const v5, 0x7f0e00d8

    .line 35
    invoke-virtual {p0, v5}, Lde/baumann/browser/Service/ClearService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_0

    .line 38
    invoke-static {p0}, Lde/baumann/browser/Unit/BrowserUnit;->clearBookmarks(Landroid/content/Context;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 41
    invoke-static {p0}, Lde/baumann/browser/Unit/BrowserUnit;->clearCache(Landroid/content/Context;)V

    :cond_1
    if-eqz v4, :cond_2

    .line 44
    invoke-static {}, Lde/baumann/browser/Unit/BrowserUnit;->clearCookie()V

    :cond_2
    if-eqz v0, :cond_3

    .line 47
    invoke-static {p0}, Lde/baumann/browser/Unit/BrowserUnit;->clearHistory(Landroid/content/Context;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 25
    invoke-direct {p0}, Lde/baumann/browser/Service/ClearService;->clear()V

    .line 26
    invoke-virtual {p0}, Lde/baumann/browser/Service/ClearService;->stopSelf()V

    const/4 p1, 0x1

    return p1
.end method
