.class Lorg/mozilla/focus/webview/SystemWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "SystemWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/webview/SystemWebView;->createWebChromeClient()Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/webview/SystemWebView;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/webview/SystemWebView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/webview/SystemWebView;

    .prologue
    .line 285
    iput-object p1, p0, Lorg/mozilla/focus/webview/SystemWebView$2;->this$0:Lorg/mozilla/focus/webview/SystemWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView$2;->this$0:Lorg/mozilla/focus/webview/SystemWebView;

    invoke-static {v0}, Lorg/mozilla/focus/webview/SystemWebView;->access$000(Lorg/mozilla/focus/webview/SystemWebView;)Lorg/mozilla/focus/web/IWebView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView$Callback;->onExitFullScreen()V

    .line 316
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 288
    iget-object v1, p0, Lorg/mozilla/focus/webview/SystemWebView$2;->this$0:Lorg/mozilla/focus/webview/SystemWebView;

    invoke-static {v1}, Lorg/mozilla/focus/webview/SystemWebView;->access$000(Lorg/mozilla/focus/webview/SystemWebView;)Lorg/mozilla/focus/web/IWebView$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "viewURL":Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/focus/utils/UrlUtils;->isInternalErrorURL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 295
    iget-object v1, p0, Lorg/mozilla/focus/webview/SystemWebView$2;->this$0:Lorg/mozilla/focus/webview/SystemWebView;

    invoke-static {v1}, Lorg/mozilla/focus/webview/SystemWebView;->access$000(Lorg/mozilla/focus/webview/SystemWebView;)Lorg/mozilla/focus/web/IWebView$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mozilla/focus/web/IWebView$Callback;->onURLChanged(Ljava/lang/String;)V

    .line 297
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/webview/SystemWebView$2;->this$0:Lorg/mozilla/focus/webview/SystemWebView;

    invoke-static {v1}, Lorg/mozilla/focus/webview/SystemWebView;->access$000(Lorg/mozilla/focus/webview/SystemWebView;)Lorg/mozilla/focus/web/IWebView$Callback;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/mozilla/focus/web/IWebView$Callback;->onProgress(I)V

    .line 299
    .end local v0    # "viewURL":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "webviewCallback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 303
    new-instance v0, Lorg/mozilla/focus/webview/SystemWebView$2$1;

    invoke-direct {v0, p0, p2}, Lorg/mozilla/focus/webview/SystemWebView$2$1;-><init>(Lorg/mozilla/focus/webview/SystemWebView$2;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 310
    .local v0, "fullscreenCallback":Lorg/mozilla/focus/web/IWebView$FullscreenCallback;
    iget-object v1, p0, Lorg/mozilla/focus/webview/SystemWebView$2;->this$0:Lorg/mozilla/focus/webview/SystemWebView;

    invoke-static {v1}, Lorg/mozilla/focus/webview/SystemWebView;->access$000(Lorg/mozilla/focus/webview/SystemWebView;)Lorg/mozilla/focus/web/IWebView$Callback;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/mozilla/focus/web/IWebView$Callback;->onEnterFullScreen(Lorg/mozilla/focus/web/IWebView$FullscreenCallback;Landroid/view/View;)V

    .line 311
    return-void
.end method
