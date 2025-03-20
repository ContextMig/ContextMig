.class public Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TrackingProtectionWebViewClient.java"


# static fields
.field private static volatile MATCHER:Lorg/mozilla/focus/webview/matcher/UrlMatcher;


# instance fields
.field private blockingEnabled:Z

.field protected callback:Lorg/mozilla/focus/web/IWebView$Callback;

.field currentPageURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 55
    invoke-static {p1}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->triggerPreload(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->blockingEnabled:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lorg/mozilla/focus/webview/matcher/UrlMatcher;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-static {p0}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->getMatcher(Landroid/content/Context;)Lorg/mozilla/focus/webview/matcher/UrlMatcher;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getMatcher(Landroid/content/Context;)Lorg/mozilla/focus/webview/matcher/UrlMatcher;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-class v1, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->MATCHER:Lorg/mozilla/focus/webview/matcher/UrlMatcher;

    if-nez v0, :cond_0

    .line 43
    const v0, 0x7f0e0001

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0e0005

    aput v4, v2, v3

    const v3, 0x7f0e0002

    invoke-static {p0, v0, v2, v3}, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->loadMatcher(Landroid/content/Context;I[II)Lorg/mozilla/focus/webview/matcher/UrlMatcher;

    move-result-object v0

    sput-object v0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->MATCHER:Lorg/mozilla/focus/webview/matcher/UrlMatcher;

    .line 45
    :cond_0
    sget-object v0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->MATCHER:Lorg/mozilla/focus/webview/matcher/UrlMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static triggerPreload(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->MATCHER:Lorg/mozilla/focus/webview/matcher/UrlMatcher;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$1;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$1;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 37
    invoke-virtual {v0, v1}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyCurrentURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->currentPageURL:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView$Callback;->resetBlockedTrackers()V

    .line 137
    :cond_0
    iput-object p2, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->currentPageURL:Ljava/lang/String;

    .line 139
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 140
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$2;

    invoke-direct {v0, p0, p2}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$2;-><init>(Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;Landroid/webkit/HttpAuthHandler;)V

    .line 156
    .local v0, "httpAuthCallback":Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;
    iget-object v1, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v1, v0, p3, p4}, Lorg/mozilla/focus/web/IWebView$Callback;->onHttpAuthRequest(Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public setBlockingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->blockingEnabled:Z

    .line 66
    return-void
.end method

.method public setCallback(Lorg/mozilla/focus/web/IWebView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/mozilla/focus/web/IWebView$Callback;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    .line 62
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-boolean v4, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->blockingEnabled:Z

    if-nez v4, :cond_0

    .line 75
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v4

    .line 117
    :goto_0
    return-object v4

    .line 78
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    .line 83
    .local v2, "resourceUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "scheme":Ljava/lang/String;
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "http"

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v5, v5, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v4, "/favicon.ico"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v5, v5, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->getMatcher(Landroid/content/Context;)Lorg/mozilla/focus/webview/matcher/UrlMatcher;

    move-result-object v0

    .line 107
    .local v0, "matcher":Lorg/mozilla/focus/webview/matcher/UrlMatcher;
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->currentPageURL:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->currentPageURL:Ljava/lang/String;

    .line 109
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->matches(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    iget-object v4, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v4, :cond_3

    .line 112
    iget-object v4, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v4}, Lorg/mozilla/focus/web/IWebView$Callback;->countBlockedTracker()V

    .line 114
    :cond_3
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-direct {v4, v5, v5, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 117
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v4

    goto :goto_0
.end method
