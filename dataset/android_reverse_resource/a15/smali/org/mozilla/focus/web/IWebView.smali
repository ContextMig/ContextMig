.class public interface abstract Lorg/mozilla/focus/web/IWebView;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;,
        Lorg/mozilla/focus/web/IWebView$FullscreenCallback;,
        Lorg/mozilla/focus/web/IWebView$Callback;,
        Lorg/mozilla/focus/web/IWebView$HitTarget;
    }
.end annotation


# virtual methods
.method public abstract canGoBack()Z
.end method

.method public abstract canGoForward()Z
.end method

.method public abstract cleanup()V
.end method

.method public abstract clearMatches()V
.end method

.method public abstract destroy()V
.end method

.method public abstract findAllAsync(Ljava/lang/String;)V
.end method

.method public abstract findNext(Z)V
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract goBack()V
.end method

.method public abstract goForward()V
.end method

.method public abstract loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract reload()V
.end method

.method public abstract restoreWebViewState(Lorg/mozilla/focus/session/Session;)V
.end method

.method public abstract saveWebViewState(Lorg/mozilla/focus/session/Session;)V
.end method

.method public abstract setBlockingEnabled(Z)V
.end method

.method public abstract setCallback(Lorg/mozilla/focus/web/IWebView$Callback;)V
.end method

.method public abstract setFindListener(Lorg/mozilla/focus/web/IFindListener;)V
.end method

.method public abstract setRequestDesktop(Z)V
.end method

.method public abstract stopLoading()V
.end method
