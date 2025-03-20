.class Lorg/mozilla/focus/webview/SystemWebView$3;
.super Ljava/lang/Object;
.source "SystemWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/webview/SystemWebView;->createDownloadListener()Landroid/webkit/DownloadListener;
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
    .line 321
    iput-object p1, p0, Lorg/mozilla/focus/webview/SystemWebView$3;->this$0:Lorg/mozilla/focus/webview/SystemWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 324
    invoke-static {}, Lorg/mozilla/focus/utils/AppConstants;->supportsDownloadingFiles()Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 333
    :cond_2
    const-string v2, "WebkitView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring download from non http(s) URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_3
    iget-object v2, p0, Lorg/mozilla/focus/webview/SystemWebView$3;->this$0:Lorg/mozilla/focus/webview/SystemWebView;

    invoke-static {v2}, Lorg/mozilla/focus/webview/SystemWebView;->access$000(Lorg/mozilla/focus/webview/SystemWebView;)Lorg/mozilla/focus/web/IWebView$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 338
    new-instance v1, Lorg/mozilla/focus/web/Download;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/mozilla/focus/web/Download;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 339
    .local v1, "download":Lorg/mozilla/focus/web/Download;
    iget-object v2, p0, Lorg/mozilla/focus/webview/SystemWebView$3;->this$0:Lorg/mozilla/focus/webview/SystemWebView;

    invoke-static {v2}, Lorg/mozilla/focus/webview/SystemWebView;->access$000(Lorg/mozilla/focus/webview/SystemWebView;)Lorg/mozilla/focus/web/IWebView$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/mozilla/focus/web/IWebView$Callback;->onDownloadStart(Lorg/mozilla/focus/web/Download;)V

    goto :goto_0
.end method
