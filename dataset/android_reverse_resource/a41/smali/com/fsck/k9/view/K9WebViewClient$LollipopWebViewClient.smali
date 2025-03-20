.class Lcom/fsck/k9/view/K9WebViewClient$LollipopWebViewClient;
.super Lcom/fsck/k9/view/K9WebViewClient;
.source "K9WebViewClient.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/view/K9WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LollipopWebViewClient"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/fsck/k9/mailstore/AttachmentResolver;)V
    .locals 1
    .param p1, "attachmentResolver"    # Lcom/fsck/k9/mailstore/AttachmentResolver;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/view/K9WebViewClient;-><init>(Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/K9WebViewClient$1;)V

    .line 162
    return-void
.end method


# virtual methods
.method protected addActivityFlags(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    return-void
.end method

.method protected addCacheControlHeader(Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .param p1, "response"    # Landroid/webkit/WebResourceResponse;

    .prologue
    .line 176
    const-string v1, "Cache-Control"

    const-string v2, "no-store"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 177
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 178
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 166
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/view/K9WebViewClient$LollipopWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
