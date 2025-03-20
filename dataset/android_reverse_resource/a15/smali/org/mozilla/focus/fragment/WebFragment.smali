.class public abstract Lorg/mozilla/focus/fragment/WebFragment;
.super Lorg/mozilla/focus/locale/LocaleAwareFragment;
.source "WebFragment.java"


# instance fields
.field private isWebViewAvailable:Z

.field private webView:Lorg/mozilla/focus/web/IWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public applyLocale()V
    .locals 8

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/WebFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v3

    .line 89
    .local v3, "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    invoke-virtual {v3, v1}, Lorg/mozilla/focus/locale/LocaleManager;->isMirroringSystemLocale(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 90
    invoke-virtual {v3, v1}, Lorg/mozilla/focus/locale/LocaleManager;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    .line 91
    .local v2, "currentLocale":Ljava/util/Locale;
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 93
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 94
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 99
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "currentLocale":Ljava/util/Locale;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_0
    new-instance v5, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/WebFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 100
    .local v5, "unneeded":Landroid/webkit/WebView;
    invoke-virtual {v5}, Landroid/webkit/WebView;->destroy()V

    .line 101
    return-void
.end method

.method public abstract createCallback()Lorg/mozilla/focus/web/IWebView$Callback;
.end method

.method public abstract getInitialUrl()Ljava/lang/String;
.end method

.method public abstract getSession()Lorg/mozilla/focus/session/Session;
.end method

.method protected getWebView()Lorg/mozilla/focus/web/IWebView;
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/mozilla/focus/fragment/WebFragment;->isWebViewAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract inflateLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/focus/fragment/WebFragment;->inflateLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f090135

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/mozilla/focus/web/IWebView;

    iput-object v3, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    .line 62
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/mozilla/focus/fragment/WebFragment;->isWebViewAvailable:Z

    .line 63
    iget-object v3, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/WebFragment;->createCallback()Lorg/mozilla/focus/web/IWebView$Callback;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mozilla/focus/web/IWebView;->setCallback(Lorg/mozilla/focus/web/IWebView$Callback;)V

    .line 65
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/WebFragment;->getSession()Lorg/mozilla/focus/session/Session;

    move-result-object v0

    .line 67
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    if-eqz v0, :cond_0

    .line 68
    iget-object v3, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->isBlockingEnabled()Z

    move-result v4

    invoke-interface {v3, v4}, Lorg/mozilla/focus/web/IWebView;->setBlockingEnabled(Z)V

    .line 69
    iget-object v3, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->shouldRequestDesktopSite()Z

    move-result v4

    invoke-interface {v3, v4}, Lorg/mozilla/focus/web/IWebView;->setRequestDesktop(Z)V

    .line 72
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->hasWebViewState()Z

    move-result v3

    if-nez v3, :cond_3

    .line 73
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/WebFragment;->getInitialUrl()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    iget-object v3, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    invoke-interface {v3, v1}, Lorg/mozilla/focus/web/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/WebFragment;->onCreateViewCalled()V

    .line 82
    return-object v2

    .line 78
    :cond_3
    iget-object v3, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    invoke-interface {v3, v0}, Lorg/mozilla/focus/web/IWebView;->restoreWebViewState(Lorg/mozilla/focus/session/Session;)V

    goto :goto_0
.end method

.method public abstract onCreateViewCalled()V
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    invoke-interface {v0, v1}, Lorg/mozilla/focus/web/IWebView;->setCallback(Lorg/mozilla/focus/web/IWebView$Callback;)V

    .line 126
    iget-object v0, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView;->destroy()V

    .line 127
    iput-object v1, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    .line 130
    :cond_0
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->onDestroy()V

    .line 131
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/focus/fragment/WebFragment;->isWebViewAvailable:Z

    .line 137
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->onDestroyView()V

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/WebFragment;->getSession()Lorg/mozilla/focus/session/Session;

    move-result-object v0

    .line 106
    .local v0, "session":Lorg/mozilla/focus/session/Session;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    invoke-interface {v1, v0}, Lorg/mozilla/focus/web/IWebView;->saveWebViewState(Lorg/mozilla/focus/session/Session;)V

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    invoke-interface {v1}, Lorg/mozilla/focus/web/IWebView;->onPause()V

    .line 112
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->onPause()V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/mozilla/focus/fragment/WebFragment;->webView:Lorg/mozilla/focus/web/IWebView;

    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView;->onResume()V

    .line 119
    invoke-super {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;->onResume()V

    .line 120
    return-void
.end method
