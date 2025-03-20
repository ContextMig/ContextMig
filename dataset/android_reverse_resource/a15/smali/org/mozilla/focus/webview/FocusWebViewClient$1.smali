.class Lorg/mozilla/focus/webview/FocusWebViewClient$1;
.super Ljava/lang/Object;
.source "FocusWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/webview/FocusWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/webview/FocusWebViewClient;

.field final synthetic val$currentURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/webview/FocusWebViewClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/webview/FocusWebViewClient;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/mozilla/focus/webview/FocusWebViewClient$1;->this$0:Lorg/mozilla/focus/webview/FocusWebViewClient;

    iput-object p2, p0, Lorg/mozilla/focus/webview/FocusWebViewClient$1;->val$currentURL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient$1;->this$0:Lorg/mozilla/focus/webview/FocusWebViewClient;

    iget-object v0, v0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/mozilla/focus/webview/FocusWebViewClient$1;->this$0:Lorg/mozilla/focus/webview/FocusWebViewClient;

    iget-object v0, v0, Lorg/mozilla/focus/webview/FocusWebViewClient;->callback:Lorg/mozilla/focus/web/IWebView$Callback;

    iget-object v1, p0, Lorg/mozilla/focus/webview/FocusWebViewClient$1;->val$currentURL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/mozilla/focus/web/IWebView$Callback;->onURLChanged(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method
