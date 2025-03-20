.class public Lcom/fsck/k9/view/MessageWebView;
.super Lcom/fsck/k9/view/RigidWebView;
.source "MessageWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/RigidWebView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/view/RigidWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/view/RigidWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private disableDisplayZoomControls()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 110
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "android.hardware.touchscreen.multitouch"

    .line 111
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.hardware.faketouch.multitouch.distinct"

    .line 112
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v3

    .line 114
    .local v1, "supportsMultiTouch":Z
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 115
    return-void

    .end local v1    # "supportsMultiTouch":Z
    :cond_1
    move v1, v2

    .line 112
    goto :goto_0

    .restart local v1    # "supportsMultiTouch":Z
    :cond_2
    move v3, v2

    .line 114
    goto :goto_1
.end method

.method private setHtmlContent(Ljava/lang/String;)V
    .locals 6
    .param p1, "htmlText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    const-string v1, "about:blank"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/view/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageWebView;->resumeTimers()V

    .line 135
    return-void
.end method

.method private setWebViewClient(Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V
    .locals 1
    .param p1, "attachmentResolver"    # Lcom/fsck/k9/mailstore/AttachmentResolver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "onPageFinishedListener"    # Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-static {p1}, Lcom/fsck/k9/view/K9WebViewClient;->newInstance(Lcom/fsck/k9/mailstore/AttachmentResolver;)Lcom/fsck/k9/view/K9WebViewClient;

    move-result-object v0

    .line 126
    .local v0, "webViewClient":Lcom/fsck/k9/view/K9WebViewClient;
    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {v0, p2}, Lcom/fsck/k9/view/K9WebViewClient;->setOnPageFinishedListener(Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 130
    return-void
.end method


# virtual methods
.method public blockNetworkData(Z)V
    .locals 1
    .param p1, "shouldBlockNetworkData"    # Z

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 51
    return-void
.end method

.method public configure()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 60
    invoke-virtual {p0, v3}, Lcom/fsck/k9/view/MessageWebView;->setVerticalScrollBarEnabled(Z)V

    .line 61
    invoke-virtual {p0, v3}, Lcom/fsck/k9/view/MessageWebView;->setVerticalScrollbarOverlay(Z)V

    .line 62
    invoke-virtual {p0, v4}, Lcom/fsck/k9/view/MessageWebView;->setScrollBarStyle(I)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/fsck/k9/view/MessageWebView;->setLongClickable(Z)V

    .line 65
    invoke-static {}, Lcom/fsck/k9/K9;->getK9MessageViewTheme()Lcom/fsck/k9/K9$Theme;

    move-result-object v1

    sget-object v2, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    if-ne v1, v2, :cond_0

    .line 68
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/MessageWebView;->setBackgroundColor(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 73
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 81
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 83
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 84
    invoke-static {}, Lcom/fsck/k9/K9;->autofitWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/view/MessageWebView;->disableDisplayZoomControls()V

    .line 90
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 91
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 92
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 95
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 97
    invoke-virtual {p0, v5}, Lcom/fsck/k9/view/MessageWebView;->setOverScrollMode(I)V

    .line 99
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/FontSizes;->getMessageViewContentAsPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/fsck/k9/view/MessageWebView;->blockNetworkData(Z)V

    .line 103
    return-void
.end method

.method public displayHtmlContentWithInlineAttachments(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V
    .locals 0
    .param p1, "htmlText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attachmentResolver"    # Lcom/fsck/k9/mailstore/AttachmentResolver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "onPageFinishedListener"    # Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    invoke-direct {p0, p2, p3}, Lcom/fsck/k9/view/MessageWebView;->setWebViewClient(Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/MessageWebView;->setHtmlContent(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 144
    :try_start_0
    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3b

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 146
    .local v1, "shiftPressEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07033d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "shiftPressEvent":Landroid/view/KeyEvent;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception in emulateShiftHeld()"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
