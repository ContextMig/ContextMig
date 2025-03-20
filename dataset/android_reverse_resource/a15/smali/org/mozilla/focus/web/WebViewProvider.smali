.class public Lorg/mozilla/focus/web/WebViewProvider;
.super Ljava/lang/Object;
.source "WebViewProvider.java"


# direct methods
.method public static applyAppSettings(Landroid/content/Context;Landroid/webkit/WebSettings;Landroid/webkit/WebView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Landroid/webkit/WebSettings;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-static {p0}, Lorg/mozilla/focus/utils/Settings;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/utils/Settings;->shouldBlockImages()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 130
    invoke-static {p0}, Lorg/mozilla/focus/utils/Settings;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/utils/Settings;->shouldBlockJavaScript()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 131
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 132
    invoke-static {p0}, Lorg/mozilla/focus/utils/Settings;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/utils/Settings;->shouldBlockThirdPartyCookies()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 131
    :goto_1
    invoke-virtual {v3, p2, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 133
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-static {p0}, Lorg/mozilla/focus/utils/Settings;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lorg/mozilla/focus/utils/Settings;->shouldBlockCookies()Z

    move-result v3

    if-nez v3, :cond_2

    .line 133
    :goto_2
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 135
    return-void

    :cond_0
    move v0, v2

    .line 130
    goto :goto_0

    :cond_1
    move v0, v2

    .line 132
    goto :goto_1

    :cond_2
    move v1, v2

    .line 134
    goto :goto_2
.end method

.method static buildUserAgentString(Landroid/content/Context;Landroid/webkit/WebSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Landroid/webkit/WebSettings;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v4, "uaBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Mozilla/5.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v5, " (Linux; Android "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "existingWebViewUA":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .local v0, "appVersion":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "focusToken":Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/mozilla/focus/web/WebViewProvider;->getUABrowserString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 209
    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v3    # "focusToken":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unable find package details for Focus"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static configureDefaultSettings(Landroid/content/Context;Landroid/webkit/WebSettings;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Landroid/webkit/WebSettings;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 86
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 89
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 92
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 95
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 99
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 103
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 104
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 105
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "appName":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lorg/mozilla/focus/web/WebViewProvider;->buildUserAgentString(Landroid/content/Context;Landroid/webkit/WebSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 114
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 115
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 116
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 119
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 122
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 124
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 125
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    new-instance v1, Lorg/mozilla/focus/webview/SystemWebView;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/focus/webview/SystemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    .local v1, "webkitView":Lorg/mozilla/focus/webview/SystemWebView;
    invoke-virtual {v1}, Lorg/mozilla/focus/webview/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 69
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-static {v1}, Lorg/mozilla/focus/web/WebViewProvider;->setupView(Landroid/webkit/WebView;)V

    .line 70
    invoke-static {p0, v0}, Lorg/mozilla/focus/web/WebViewProvider;->configureDefaultSettings(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    .line 71
    invoke-static {p0, v0, v1}, Lorg/mozilla/focus/web/WebViewProvider;->applyAppSettings(Landroid/content/Context;Landroid/webkit/WebSettings;Landroid/webkit/WebView;)V

    .line 73
    return-object v1
.end method

.method public static disableBlocking(Landroid/webkit/WebSettings;Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "webView"    # Landroid/webkit/WebView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 140
    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 141
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 142
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 143
    return-void
.end method

.method static getUABrowserString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "existingUAString"    # Ljava/lang/String;
    .param p1, "focusToken"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v3, "AppleWebKit"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, "start":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 169
    const-string v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, 0x2

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 189
    .end local p1    # "focusToken":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 178
    .restart local p1    # "focusToken":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 181
    aget-object v3, v2, v0

    const-string v4, "Chrome"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 184
    const-string v3, " "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 180
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static performCleanup(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p0}, Lorg/mozilla/focus/webview/SystemWebView;->deleteContentFromKnownLocations(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public static performNewBrowserSessionCleanup()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 56
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 60
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 62
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 63
    return-void
.end method

.method public static preload(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p0}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->triggerPreload(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public static requestDesktopSite(Landroid/webkit/WebSettings;)V
    .locals 2
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-static {p0, v1}, Lorg/mozilla/focus/web/WebViewProvider;->toggleDesktopUA(Landroid/webkit/WebSettings;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 148
    return-void
.end method

.method public static requestMobileSite(Landroid/content/Context;Landroid/webkit/WebSettings;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-static {p1, v1}, Lorg/mozilla/focus/web/WebViewProvider;->toggleDesktopUA(Landroid/webkit/WebSettings;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 153
    return-void
.end method

.method private static setupView(Landroid/webkit/WebView;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 79
    return-void
.end method

.method private static toggleDesktopUA(Landroid/webkit/WebSettings;Z)Ljava/lang/String;
    .locals 4
    .param p0, "settings"    # Landroid/webkit/WebSettings;
    .param p1, "requestDesktop"    # Z

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "existingUAString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 223
    const-string v1, "Mobile"

    const-string v2, "eliboM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Android"

    const-string v3, "diordnA"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "eliboM"

    const-string v2, "Mobile"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "diordnA"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
