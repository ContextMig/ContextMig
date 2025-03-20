.class Lorg/mozilla/focus/webview/LinkHandler;
.super Ljava/lang/Object;
.source "LinkHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private callback:Lorg/mozilla/focus/web/IWebView$Callback;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/focus/webview/LinkHandler;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    .line 23
    iput-object p1, p0, Lorg/mozilla/focus/webview/LinkHandler;->webView:Landroid/webkit/WebView;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/focus/webview/LinkHandler;)Lorg/mozilla/focus/web/IWebView$Callback;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/webview/LinkHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/mozilla/focus/webview/LinkHandler;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 32
    iget-object v6, p0, Lorg/mozilla/focus/webview/LinkHandler;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-nez v6, :cond_0

    .line 75
    :goto_0
    return v4

    .line 36
    :cond_0
    iget-object v6, p0, Lorg/mozilla/focus/webview/LinkHandler;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 38
    .local v0, "hitTestResult":Landroid/webkit/WebView$HitTestResult;
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "imageURL":Ljava/lang/String;
    iget-object v6, p0, Lorg/mozilla/focus/webview/LinkHandler;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    new-instance v7, Lorg/mozilla/focus/web/IWebView$HitTarget;

    invoke-direct {v7, v4, v8, v5, v1}, Lorg/mozilla/focus/web/IWebView$HitTarget;-><init>(ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/mozilla/focus/web/IWebView$Callback;->onLongPress(Lorg/mozilla/focus/web/IWebView$HitTarget;)V

    move v4, v5

    .line 47
    goto :goto_0

    .line 40
    .end local v1    # "imageURL":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "linkURL":Ljava/lang/String;
    iget-object v6, p0, Lorg/mozilla/focus/webview/LinkHandler;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    new-instance v7, Lorg/mozilla/focus/web/IWebView$HitTarget;

    invoke-direct {v7, v5, v2, v4, v8}, Lorg/mozilla/focus/web/IWebView$HitTarget;-><init>(ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/mozilla/focus/web/IWebView$Callback;->onLongPress(Lorg/mozilla/focus/web/IWebView$HitTarget;)V

    move v4, v5

    .line 42
    goto :goto_0

    .line 53
    .end local v2    # "linkURL":Ljava/lang/String;
    :pswitch_3
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 54
    .local v3, "message":Landroid/os/Message;
    new-instance v4, Lorg/mozilla/focus/webview/LinkHandler$1;

    invoke-direct {v4, p0}, Lorg/mozilla/focus/webview/LinkHandler$1;-><init>(Lorg/mozilla/focus/webview/LinkHandler;)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 71
    iget-object v4, p0, Lorg/mozilla/focus/webview/LinkHandler;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    move v4, v5

    .line 72
    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCallback(Lorg/mozilla/focus/web/IWebView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/mozilla/focus/web/IWebView$Callback;

    .prologue
    .line 27
    iput-object p1, p0, Lorg/mozilla/focus/webview/LinkHandler;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    .line 28
    return-void
.end method
