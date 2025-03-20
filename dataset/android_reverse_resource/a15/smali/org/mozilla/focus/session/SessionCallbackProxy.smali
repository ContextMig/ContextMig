.class public Lorg/mozilla/focus/session/SessionCallbackProxy;
.super Ljava/lang/Object;
.source "SessionCallbackProxy.java"

# interfaces
.implements Lorg/mozilla/focus/web/IWebView$Callback;


# instance fields
.field private final delegate:Lorg/mozilla/focus/web/IWebView$Callback;

.field private final session:Lorg/mozilla/focus/session/Session;


# direct methods
.method public constructor <init>(Lorg/mozilla/focus/session/Session;Lorg/mozilla/focus/web/IWebView$Callback;)V
    .locals 0
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;
    .param p2, "delegate"    # Lorg/mozilla/focus/web/IWebView$Callback;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    .line 22
    iput-object p2, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->delegate:Lorg/mozilla/focus/web/IWebView$Callback;

    .line 23
    return-void
.end method


# virtual methods
.method public countBlockedTracker()V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getBlockedTrackers()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/mozilla/focus/session/Session;->setTrackersBlocked(I)V

    .line 81
    return-void
.end method

.method public onBlockingStateChanged(Z)V
    .locals 1
    .param p1, "isBlockingEnabled"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/session/Session;->setBlockingEnabled(Z)V

    .line 91
    return-void
.end method

.method public onDownloadStart(Lorg/mozilla/focus/web/Download;)V
    .locals 1
    .param p1, "download"    # Lorg/mozilla/focus/web/Download;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->delegate:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v0, p1}, Lorg/mozilla/focus/web/IWebView$Callback;->onDownloadStart(Lorg/mozilla/focus/web/Download;)V

    .line 107
    return-void
.end method

.method public onEnterFullScreen(Lorg/mozilla/focus/web/IWebView$FullscreenCallback;Landroid/view/View;)V
    .locals 1
    .param p1, "callback"    # Lorg/mozilla/focus/web/IWebView$FullscreenCallback;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->delegate:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/focus/web/IWebView$Callback;->onEnterFullScreen(Lorg/mozilla/focus/web/IWebView$FullscreenCallback;Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public onExitFullScreen()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->delegate:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView$Callback;->onExitFullScreen()V

    .line 125
    return-void
.end method

.method public onHttpAuthRequest(Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callback"    # Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->delegate:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/focus/web/IWebView$Callback;->onHttpAuthRequest(Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onLongPress(Lorg/mozilla/focus/web/IWebView$HitTarget;)V
    .locals 1
    .param p1, "hitTarget"    # Lorg/mozilla/focus/web/IWebView$HitTarget;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->delegate:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v0, p1}, Lorg/mozilla/focus/web/IWebView$Callback;->onLongPress(Lorg/mozilla/focus/web/IWebView$HitTarget;)V

    .line 113
    return-void
.end method

.method public onPageFinished(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/session/Session;->setLoading(Z)V

    .line 41
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/session/Session;->setSecure(Z)V

    .line 42
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/session/Session;->setLoading(Z)V

    .line 28
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/session/Session;->setSecure(Z)V

    .line 33
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/session/Session;->setProgress(I)V

    .line 35
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/session/Session;->setUrl(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 54
    const/4 v0, 0x5

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 58
    const/16 v0, 0x63

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 60
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/session/Session;->setProgress(I)V

    .line 61
    return-void
.end method

.method public onRequest(Z)V
    .locals 1
    .param p1, "isTriggeredByUserGesture"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->clearSearchTerms()V

    .line 75
    :cond_0
    return-void
.end method

.method public onRequestDesktopStateChanged(Z)V
    .locals 1
    .param p1, "shouldRequestDesktop"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/session/Session;->setRequestDesktopSite(Z)V

    .line 101
    return-void
.end method

.method public onSecurityChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "isSecure"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "organization"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/session/Session;->setSecure(Z)V

    .line 47
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0, p2}, Lorg/mozilla/focus/session/Session;->setSecurityOrigin(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0, p3}, Lorg/mozilla/focus/session/Session;->setSecurityVerifier(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onURLChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/session/Session;->setUrl(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public resetBlockedTrackers()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/mozilla/focus/session/SessionCallbackProxy;->session:Lorg/mozilla/focus/session/Session;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/session/Session;->setTrackersBlocked(I)V

    .line 86
    return-void
.end method
