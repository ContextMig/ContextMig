.class abstract Lcom/fsck/k9/view/K9WebViewClient;
.super Landroid/webkit/WebViewClient;
.source "K9WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/view/K9WebViewClient$LollipopWebViewClient;,
        Lcom/fsck/k9/view/K9WebViewClient$PreLollipopWebViewClient;
    }
.end annotation


# static fields
.field private static final CID_SCHEME:Ljava/lang/String; = "cid"

.field private static final RESULT_DO_NOT_INTERCEPT:Landroid/webkit/WebResourceResponse;

.field private static final RESULT_DUMMY_RESPONSE:Landroid/webkit/WebResourceResponse;


# instance fields
.field private final attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private onPageFinishedListener:Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    sput-object v1, Lcom/fsck/k9/view/K9WebViewClient;->RESULT_DO_NOT_INTERCEPT:Landroid/webkit/WebResourceResponse;

    .line 35
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v1, v1, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    sput-object v0, Lcom/fsck/k9/view/K9WebViewClient;->RESULT_DUMMY_RESPONSE:Landroid/webkit/WebResourceResponse;

    return-void
.end method

.method private constructor <init>(Lcom/fsck/k9/mailstore/AttachmentResolver;)V
    .locals 0
    .param p1, "attachmentResolver"    # Lcom/fsck/k9/mailstore/AttachmentResolver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/fsck/k9/view/K9WebViewClient;->attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/K9WebViewClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/mailstore/AttachmentResolver;
    .param p2, "x1"    # Lcom/fsck/k9/view/K9WebViewClient$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/K9WebViewClient;-><init>(Lcom/fsck/k9/mailstore/AttachmentResolver;)V

    return-void
.end method

.method private createBrowserViewIntent(Landroid/net/Uri;Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "create_new_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    return-object v0
.end method

.method public static newInstance(Lcom/fsck/k9/mailstore/AttachmentResolver;)Lcom/fsck/k9/view/K9WebViewClient;
    .locals 2
    .param p0, "attachmentResolver"    # Lcom/fsck/k9/mailstore/AttachmentResolver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 45
    new-instance v0, Lcom/fsck/k9/view/K9WebViewClient$PreLollipopWebViewClient;

    invoke-direct {v0, p0}, Lcom/fsck/k9/view/K9WebViewClient$PreLollipopWebViewClient;-><init>(Lcom/fsck/k9/mailstore/AttachmentResolver;)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fsck/k9/view/K9WebViewClient$LollipopWebViewClient;

    invoke-direct {v0, p0}, Lcom/fsck/k9/view/K9WebViewClient$LollipopWebViewClient;-><init>(Lcom/fsck/k9/mailstore/AttachmentResolver;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract addActivityFlags(Landroid/content/Intent;)V
.end method

.method protected abstract addCacheControlHeader(Landroid/webkit/WebResourceResponse;)V
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/fsck/k9/view/K9WebViewClient;->onPageFinishedListener:Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/fsck/k9/view/K9WebViewClient;->onPageFinishedListener:Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;

    invoke-interface {v0}, Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;->onPageFinished()V

    .line 134
    :cond_0
    return-void
.end method

.method public setOnPageFinishedListener(Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V
    .locals 0
    .param p1, "onPageFinishedListener"    # Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fsck/k9/view/K9WebViewClient;->onPageFinishedListener:Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;

    .line 126
    return-void
.end method

.method protected shouldInterceptRequest(Landroid/webkit/WebView;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .locals 11
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 91
    const-string v8, "cid"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 92
    sget-object v7, Lcom/fsck/k9/view/K9WebViewClient;->RESULT_DO_NOT_INTERCEPT:Landroid/webkit/WebResourceResponse;

    .line 120
    :goto_0
    return-object v7

    .line 95
    :cond_0
    iget-object v8, p0, Lcom/fsck/k9/view/K9WebViewClient;->attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    if-nez v8, :cond_1

    .line 96
    sget-object v7, Lcom/fsck/k9/view/K9WebViewClient;->RESULT_DUMMY_RESPONSE:Landroid/webkit/WebResourceResponse;

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "cid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    sget-object v7, Lcom/fsck/k9/view/K9WebViewClient;->RESULT_DUMMY_RESPONSE:Landroid/webkit/WebResourceResponse;

    goto :goto_0

    .line 104
    :cond_2
    iget-object v8, p0, Lcom/fsck/k9/view/K9WebViewClient;->attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    invoke-virtual {v8, v1}, Lcom/fsck/k9/mailstore/AttachmentResolver;->getAttachmentUriForContentId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    .local v0, "attachmentUri":Landroid/net/Uri;
    if-nez v0, :cond_3

    .line 106
    sget-object v7, Lcom/fsck/k9/view/K9WebViewClient;->RESULT_DUMMY_RESPONSE:Landroid/webkit/WebResourceResponse;

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 110
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 112
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 115
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v7, Landroid/webkit/WebResourceResponse;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 116
    .local v7, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    invoke-virtual {p0, v7}, Lcom/fsck/k9/view/K9WebViewClient;->addCacheControlHeader(Landroid/webkit/WebResourceResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :catch_0
    move-exception v4

    .line 119
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "Error while intercepting URI: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-static {v4, v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    sget-object v7, Lcom/fsck/k9/view/K9WebViewClient;->RESULT_DUMMY_RESPONSE:Landroid/webkit/WebResourceResponse;

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 59
    .local v3, "uri":Landroid/net/Uri;
    const-string v4, "cid"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    const/4 v2, 0x0

    .line 75
    :goto_0
    return v2

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v3, v0}, Lcom/fsck/k9/view/K9WebViewClient;->createBrowserViewIntent(Landroid/net/Uri;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 65
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/K9WebViewClient;->addActivityFlags(Landroid/content/Intent;)V

    .line 67
    const/4 v2, 0x0

    .line 69
    .local v2, "overridingUrlLoading":Z
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v2, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v4

    goto :goto_0
.end method
