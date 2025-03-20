.class public Lorg/mozilla/focus/activity/InstallFirefoxActivity;
.super Landroid/app/Activity;
.source "InstallFirefoxActivity.java"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static createStoreIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    iget-object v3, v3, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    return-object v0
.end method

.method public static open(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {}, Lorg/mozilla/focus/utils/AppConstants;->isKlarBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->createStoreIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    :goto_0
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->installFirefoxEvent()V

    .line 62
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mozilla/focus/activity/InstallFirefoxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static resolveAppStore(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 32
    invoke-static {}, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->createStoreIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 34
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v1

    .line 38
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_0

    .line 43
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->webView:Landroid/webkit/WebView;

    .line 70
    iget-object v0, p0, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->setContentView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "https://app.adjust.com/gs1ao4"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    iget-object v0, p0, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 93
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 79
    iget-object v0, p0, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->finish()V

    .line 84
    return-void
.end method
