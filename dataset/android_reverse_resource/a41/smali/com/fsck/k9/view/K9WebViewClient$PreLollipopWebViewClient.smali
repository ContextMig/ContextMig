.class Lcom/fsck/k9/view/K9WebViewClient$PreLollipopWebViewClient;
.super Lcom/fsck/k9/view/K9WebViewClient;
.source "K9WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/view/K9WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreLollipopWebViewClient"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/fsck/k9/mailstore/AttachmentResolver;)V
    .locals 1
    .param p1, "attachmentResolver"    # Lcom/fsck/k9/mailstore/AttachmentResolver;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/view/K9WebViewClient;-><init>(Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/K9WebViewClient$1;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected addActivityFlags(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method protected addCacheControlHeader(Landroid/webkit/WebResourceResponse;)V
    .locals 0
    .param p1, "response"    # Landroid/webkit/WebResourceResponse;

    .prologue
    .line 155
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/view/K9WebViewClient$PreLollipopWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
