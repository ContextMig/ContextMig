.class Lorg/mozilla/focus/webview/SystemWebView$2$1;
.super Ljava/lang/Object;
.source "SystemWebView.java"

# interfaces
.implements Lorg/mozilla/focus/web/IWebView$FullscreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/webview/SystemWebView$2;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/mozilla/focus/webview/SystemWebView$2;

.field final synthetic val$webviewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/webview/SystemWebView$2;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "this$1"    # Lorg/mozilla/focus/webview/SystemWebView$2;

    .prologue
    .line 303
    iput-object p1, p0, Lorg/mozilla/focus/webview/SystemWebView$2$1;->this$1:Lorg/mozilla/focus/webview/SystemWebView$2;

    iput-object p2, p0, Lorg/mozilla/focus/webview/SystemWebView$2$1;->val$webviewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fullScreenExited()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView$2$1;->val$webviewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 307
    return-void
.end method
