.class public interface abstract Lorg/mozilla/focus/web/IWebView$Callback;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/web/IWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract countBlockedTracker()V
.end method

.method public abstract onBlockingStateChanged(Z)V
.end method

.method public abstract onDownloadStart(Lorg/mozilla/focus/web/Download;)V
.end method

.method public abstract onEnterFullScreen(Lorg/mozilla/focus/web/IWebView$FullscreenCallback;Landroid/view/View;)V
.end method

.method public abstract onExitFullScreen()V
.end method

.method public abstract onHttpAuthRequest(Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLongPress(Lorg/mozilla/focus/web/IWebView$HitTarget;)V
.end method

.method public abstract onPageFinished(Z)V
.end method

.method public abstract onPageStarted(Ljava/lang/String;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onRequest(Z)V
.end method

.method public abstract onRequestDesktopStateChanged(Z)V
.end method

.method public abstract onSecurityChanged(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onURLChanged(Ljava/lang/String;)V
.end method

.method public abstract resetBlockedTrackers()V
.end method
