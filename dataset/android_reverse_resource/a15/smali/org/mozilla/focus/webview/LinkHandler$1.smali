.class Lorg/mozilla/focus/webview/LinkHandler$1;
.super Landroid/os/Handler;
.source "LinkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/webview/LinkHandler;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/webview/LinkHandler;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/webview/LinkHandler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/webview/LinkHandler;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/mozilla/focus/webview/LinkHandler$1;->this$0:Lorg/mozilla/focus/webview/LinkHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 57
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "url":Ljava/lang/String;
    const-string v3, "src"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "src":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 62
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "WebView did not supply url or src for image link"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_1
    iget-object v3, p0, Lorg/mozilla/focus/webview/LinkHandler$1;->this$0:Lorg/mozilla/focus/webview/LinkHandler;

    invoke-static {v3}, Lorg/mozilla/focus/webview/LinkHandler;->access$000(Lorg/mozilla/focus/webview/LinkHandler;)Lorg/mozilla/focus/web/IWebView$Callback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 66
    iget-object v3, p0, Lorg/mozilla/focus/webview/LinkHandler$1;->this$0:Lorg/mozilla/focus/webview/LinkHandler;

    invoke-static {v3}, Lorg/mozilla/focus/webview/LinkHandler;->access$000(Lorg/mozilla/focus/webview/LinkHandler;)Lorg/mozilla/focus/web/IWebView$Callback;

    move-result-object v3

    new-instance v4, Lorg/mozilla/focus/web/IWebView$HitTarget;

    invoke-direct {v4, v5, v2, v5, v1}, Lorg/mozilla/focus/web/IWebView$HitTarget;-><init>(ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/mozilla/focus/web/IWebView$Callback;->onLongPress(Lorg/mozilla/focus/web/IWebView$HitTarget;)V

    .line 68
    :cond_2
    return-void
.end method
