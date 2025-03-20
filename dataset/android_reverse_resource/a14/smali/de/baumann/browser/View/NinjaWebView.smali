.class public Lde/baumann/browser/View/NinjaWebView;
.super Landroid/webkit/WebView;
.source "NinjaWebView.java"

# interfaces
.implements Lde/baumann/browser/Browser/AlbumController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/baumann/browser/View/NinjaWebView$OnScrollChangeListener;
    }
.end annotation


# instance fields
.field private adBlock:Lde/baumann/browser/Browser/AdBlock;

.field private album:Lde/baumann/browser/View/Album;

.field private animTime:I

.field private browserController:Lde/baumann/browser/Browser/BrowserController;

.field private clickHandler:Lde/baumann/browser/Browser/NinjaClickHandler;

.field private context:Landroid/content/Context;

.field private cookieHosts:Lde/baumann/browser/Browser/Cookie;

.field private dimen108dp:I

.field private dimen144dp:I

.field private downloadListener:Lde/baumann/browser/Browser/NinjaDownloadListener;

.field private flag:I

.field private foreground:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private javaHosts:Lde/baumann/browser/Browser/Javascript;

.field private onScrollChangeListener:Lde/baumann/browser/View/NinjaWebView$OnScrollChangeListener;

.field private sp:Landroid/content/SharedPreferences;

.field private webChromeClient:Lde/baumann/browser/Browser/NinjaWebChromeClient;

.field private webSettings:Landroid/webkit/WebSettings;

.field private webViewClient:Lde/baumann/browser/Browser/NinjaWebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 108
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x103

    .line 67
    iput v0, p0, Lde/baumann/browser/View/NinjaWebView;->flag:I

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    .line 110
    iput-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lde/baumann/browser/View/NinjaWebView;->dimen144dp:I

    .line 112
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lde/baumann/browser/View/NinjaWebView;->dimen108dp:I

    .line 113
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lde/baumann/browser/View/NinjaWebView;->animTime:I

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lde/baumann/browser/View/NinjaWebView;->foreground:Z

    .line 116
    new-instance v0, Lde/baumann/browser/Browser/AdBlock;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/baumann/browser/Browser/AdBlock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    .line 117
    new-instance v0, Lde/baumann/browser/Browser/Javascript;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/baumann/browser/Browser/Javascript;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->javaHosts:Lde/baumann/browser/Browser/Javascript;

    .line 118
    new-instance v0, Lde/baumann/browser/Browser/Cookie;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/baumann/browser/Browser/Cookie;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->cookieHosts:Lde/baumann/browser/Browser/Cookie;

    .line 119
    new-instance v0, Lde/baumann/browser/View/Album;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    iget-object v2, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    invoke-direct {v0, v1, p0, v2}, Lde/baumann/browser/View/Album;-><init>(Landroid/content/Context;Lde/baumann/browser/Browser/AlbumController;Lde/baumann/browser/Browser/BrowserController;)V

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    .line 120
    new-instance v0, Lde/baumann/browser/Browser/NinjaWebViewClient;

    invoke-direct {v0, p0}, Lde/baumann/browser/Browser/NinjaWebViewClient;-><init>(Lde/baumann/browser/View/NinjaWebView;)V

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webViewClient:Lde/baumann/browser/Browser/NinjaWebViewClient;

    .line 121
    new-instance v0, Lde/baumann/browser/Browser/NinjaWebChromeClient;

    invoke-direct {v0, p0}, Lde/baumann/browser/Browser/NinjaWebChromeClient;-><init>(Lde/baumann/browser/View/NinjaWebView;)V

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webChromeClient:Lde/baumann/browser/Browser/NinjaWebChromeClient;

    .line 122
    new-instance v0, Lde/baumann/browser/Browser/NinjaDownloadListener;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/baumann/browser/Browser/NinjaDownloadListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->downloadListener:Lde/baumann/browser/Browser/NinjaDownloadListener;

    .line 123
    new-instance v0, Lde/baumann/browser/Browser/NinjaClickHandler;

    invoke-direct {v0, p0}, Lde/baumann/browser/Browser/NinjaClickHandler;-><init>(Lde/baumann/browser/View/NinjaWebView;)V

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->clickHandler:Lde/baumann/browser/Browser/NinjaClickHandler;

    .line 124
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lde/baumann/browser/Browser/NinjaGestureListener;

    invoke-direct {v1, p0}, Lde/baumann/browser/Browser/NinjaGestureListener;-><init>(Lde/baumann/browser/View/NinjaWebView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 126
    invoke-direct {p0}, Lde/baumann/browser/View/NinjaWebView;->initWebView()V

    .line 127
    invoke-direct {p0}, Lde/baumann/browser/View/NinjaWebView;->initWebSettings()V

    .line 128
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->initPreferences()V

    .line 129
    invoke-direct {p0}, Lde/baumann/browser/View/NinjaWebView;->initAlbum()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x103

    .line 67
    iput p1, p0, Lde/baumann/browser/View/NinjaWebView;->flag:I

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x103

    .line 67
    iput p1, p0, Lde/baumann/browser/View/NinjaWebView;->flag:I

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/View/NinjaWebView;)Landroid/view/GestureDetector;
    .locals 0

    .line 32
    iget-object p0, p0, Lde/baumann/browser/View/NinjaWebView;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lde/baumann/browser/View/NinjaWebView;)I
    .locals 0

    .line 32
    iget p0, p0, Lde/baumann/browser/View/NinjaWebView;->dimen144dp:I

    return p0
.end method

.method static synthetic access$200(Lde/baumann/browser/View/NinjaWebView;)I
    .locals 0

    .line 32
    iget p0, p0, Lde/baumann/browser/View/NinjaWebView;->dimen108dp:I

    return p0
.end method

.method private declared-synchronized initAlbum()V
    .locals 3

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/Album;->setAlbumCover(Landroid/graphics/Bitmap;)V

    .line 203
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v2, 0x7f0e0022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/Album;->setAlbumTitle(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/Album;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 201
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initWebSettings()V
    .locals 3

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    .line 149
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 150
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 152
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 153
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 154
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 156
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 157
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 159
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 160
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 161
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 146
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initWebView()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 133
    :try_start_0
    invoke-virtual {p0, v0}, Lde/baumann/browser/View/NinjaWebView;->setDrawingCacheEnabled(Z)V

    .line 134
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webViewClient:Lde/baumann/browser/Browser/NinjaWebViewClient;

    invoke-virtual {p0, v0}, Lde/baumann/browser/View/NinjaWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 135
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webChromeClient:Lde/baumann/browser/Browser/NinjaWebChromeClient;

    invoke-virtual {p0, v0}, Lde/baumann/browser/View/NinjaWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 136
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->downloadListener:Lde/baumann/browser/Browser/NinjaDownloadListener;

    invoke-virtual {p0, v0}, Lde/baumann/browser/View/NinjaWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 137
    new-instance v0, Lde/baumann/browser/View/NinjaWebView$1;

    invoke-direct {v0, p0}, Lde/baumann/browser/View/NinjaWebView$1;-><init>(Lde/baumann/browser/View/NinjaWebView;)V

    invoke-virtual {p0, v0}, Lde/baumann/browser/View/NinjaWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 132
    monitor-exit p0

    throw v0
.end method

.method private prepareRecord()Z
    .locals 2

    .line 406
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "about:"

    .line 413
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mailto:"

    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "intent://"

    .line 415
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized activate()V
    .locals 1

    monitor-enter p0

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->requestFocus()Z

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lde/baumann/browser/View/NinjaWebView;->foreground:Z

    .line 337
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0}, Lde/baumann/browser/View/Album;->activate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 334
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deactivate()V
    .locals 1

    monitor-enter p0

    .line 342
    :try_start_0
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->clearFocus()V

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lde/baumann/browser/View/NinjaWebView;->foreground:Z

    .line 344
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0}, Lde/baumann/browser/View/Album;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 341
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->stopLoading()V

    .line 385
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->onPause()V

    .line 386
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->clearHistory()V

    const/16 v0, 0x8

    .line 387
    invoke-virtual {p0, v0}, Lde/baumann/browser/View/NinjaWebView;->setVisibility(I)V

    .line 388
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->removeAllViews()V

    .line 389
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->destroyDrawingCache()V

    .line 390
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 383
    monitor-exit p0

    throw v0
.end method

.method public getAdBlock()Lde/baumann/browser/Browser/AdBlock;
    .locals 1

    .line 81
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0}, Lde/baumann/browser/View/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumView()Landroid/view/View;
    .locals 1

    .line 315
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0}, Lde/baumann/browser/View/Album;->getAlbumView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBrowserController()Lde/baumann/browser/Browser/BrowserController;
    .locals 1

    .line 100
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    return-object v0
.end method

.method public getCookieHosts()Lde/baumann/browser/Browser/Cookie;
    .locals 1

    .line 87
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->cookieHosts:Lde/baumann/browser/Browser/Cookie;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 305
    iget v0, p0, Lde/baumann/browser/View/NinjaWebView;->flag:I

    return v0
.end method

.method public declared-synchronized initPreferences()V
    .locals 5

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    .line 167
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webViewClient:Lde/baumann/browser/Browser/NinjaWebViewClient;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v3, 0x7f0e00d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/baumann/browser/Browser/NinjaWebViewClient;->enableAdBlock(Z)V

    .line 169
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    .line 170
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    const-string v2, "sp_fontSize"

    const-string v4, "100"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 172
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    const-string v2, "sp_remote"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 173
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    const-string v2, "sp_remote"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 175
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v4, 0x7f0e00db

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 176
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v4, 0x7f0e00dc

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 177
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 179
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sp_remote"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v2, 0x7f0e00dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 185
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 188
    invoke-static {v0}, Lde/baumann/browser/Unit/HelperUnit;->grantPermissionsLoc(Landroid/app/Activity;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 197
    :cond_3
    :goto_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v4, 0x7f0e00da

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 164
    monitor-exit p0

    throw v0
.end method

.method public isForeground()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lde/baumann/browser/View/NinjaWebView;->foreground:Z

    return v0
.end method

.method public isLoadFinish()Z
    .locals 2

    .line 394
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_9

    .line 209
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "://"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lde/baumann/browser/Unit/BrowserUnit;->queryWrapper(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "mailto:"

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    invoke-static {p1}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object p1

    invoke-static {p1}, Lde/baumann/browser/Unit/IntentUnit;->getEmailIntent(Landroid/net/MailTo;)Landroid/content/Intent;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->reload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v0, "intent://"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 227
    :try_start_2
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 228
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    const-string p1, "Browser"

    const-string v0, "Error parsing URL"

    .line 230
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    :goto_0
    monitor-exit p0

    return-void

    .line 235
    :cond_3
    :try_start_4
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v3, 0x7f0e00dc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 237
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->javaHosts:Lde/baumann/browser/Browser/Javascript;

    invoke-virtual {v0, p1}, Lde/baumann/browser/Browser/Javascript;->isWhite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    .line 239
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 240
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_1

    .line 242
    :cond_4
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    .line 243
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 244
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 248
    :cond_5
    :goto_1
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v4, 0x7f0e00da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 250
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->cookieHosts:Lde/baumann/browser/Browser/Cookie;

    invoke-virtual {v0, p1}, Lde/baumann/browser/Browser/Cookie;->isWhite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 252
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    goto :goto_2

    .line 255
    :cond_6
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 256
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 260
    :cond_7
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DNT"

    const-string v2, "1"

    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->webViewClient:Lde/baumann/browser/Browser/NinjaWebViewClient;

    iget-object v2, p0, Lde/baumann/browser/View/NinjaWebView;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    invoke-virtual {v2, p1}, Lde/baumann/browser/Browser/AdBlock;->isWhite(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/baumann/browser/Browser/NinjaWebViewClient;->updateWhite(Z)V

    .line 264
    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    iget-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lde/baumann/browser/View/NinjaWebView;->foreground:Z

    if-eqz p1, :cond_8

    .line 267
    iget-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    invoke-interface {p1}, Lde/baumann/browser/Browser/BrowserController;->updateBookmarks()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 269
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 210
    :cond_9
    :goto_3
    :try_start_5
    iget-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v0, 0x7f0e00fd

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 208
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public onLongPress()V
    .locals 2

    .line 398
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->clickHandler:Lde/baumann/browser/Browser/NinjaClickHandler;

    invoke-virtual {v0}, Lde/baumann/browser/Browser/NinjaClickHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->clickHandler:Lde/baumann/browser/Browser/NinjaClickHandler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 402
    :cond_0
    invoke-virtual {p0, v0}, Lde/baumann/browser/View/NinjaWebView;->requestFocusNodeHref(Landroid/os/Message;)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 48
    iget-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->onScrollChangeListener:Lde/baumann/browser/View/NinjaWebView$OnScrollChangeListener;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->onScrollChangeListener:Lde/baumann/browser/View/NinjaWebView$OnScrollChangeListener;

    invoke-interface {p1, p2, p4}, Lde/baumann/browser/View/NinjaWebView$OnScrollChangeListener;->onScrollChange(II)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 5

    .line 273
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webViewClient:Lde/baumann/browser/Browser/NinjaWebViewClient;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/baumann/browser/Browser/AdBlock;->isWhite(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/baumann/browser/Browser/NinjaWebViewClient;->updateWhite(Z)V

    .line 275
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v2, 0x7f0e00dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->javaHosts:Lde/baumann/browser/Browser/Javascript;

    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/baumann/browser/Browser/Javascript;->isWhite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    .line 279
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 280
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    .line 283
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 284
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 288
    :cond_1
    :goto_0
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->sp:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lde/baumann/browser/View/NinjaWebView;->context:Landroid/content/Context;

    const v4, 0x7f0e00da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 290
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->cookieHosts:Lde/baumann/browser/Browser/Cookie;

    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/baumann/browser/Browser/Cookie;->isWhite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    goto :goto_1

    .line 295
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 300
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public setAlbumCover(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/Album;->setAlbumCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/Album;->setAlbumTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V
    .locals 1

    .line 103
    iput-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    .line 104
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/Album;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 310
    iput p1, p0, Lde/baumann/browser/View/NinjaWebView;->flag:I

    return-void
.end method

.method public setOnScrollChangeListener(Lde/baumann/browser/View/NinjaWebView$OnScrollChangeListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->onScrollChangeListener:Lde/baumann/browser/View/NinjaWebView$OnScrollChangeListener;

    return-void
.end method

.method public declared-synchronized update(I)V
    .locals 3

    monitor-enter p0

    .line 348
    :try_start_0
    iget-boolean v0, p0, Lde/baumann/browser/View/NinjaWebView;->foreground:Z

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    invoke-interface {v0, p1}, Lde/baumann/browser/Browser/BrowserController;->updateProgress(I)V

    .line 352
    :cond_0
    iget p1, p0, Lde/baumann/browser/View/NinjaWebView;->dimen144dp:I

    int-to-float p1, p1

    iget v0, p0, Lde/baumann/browser/View/NinjaWebView;->dimen108dp:I

    int-to-float v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0, v1}, Lde/baumann/browser/Unit/ViewUnit;->capture(Landroid/view/View;FFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/baumann/browser/View/NinjaWebView;->setAlbumCover(Landroid/graphics/Bitmap;)V

    .line 353
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->isLoadFinish()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 354
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lde/baumann/browser/View/NinjaWebView$2;

    invoke-direct {v0, p0}, Lde/baumann/browser/View/NinjaWebView$2;-><init>(Lde/baumann/browser/View/NinjaWebView;)V

    iget v1, p0, Lde/baumann/browser/View/NinjaWebView;->animTime:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    invoke-direct {p0}, Lde/baumann/browser/View/NinjaWebView;->prepareRecord()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 362
    iget-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    invoke-interface {p1}, Lde/baumann/browser/Browser/BrowserController;->updateAutoComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 347
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/Album;->setAlbumTitle(Ljava/lang/String;)V

    .line 369
    iget-boolean p1, p0, Lde/baumann/browser/View/NinjaWebView;->foreground:Z

    if-eqz p1, :cond_0

    .line 370
    iget-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    invoke-interface {p1}, Lde/baumann/browser/Browser/BrowserController;->updateBookmarks()V

    .line 371
    iget-object p1, p0, Lde/baumann/browser/View/NinjaWebView;->browserController:Lde/baumann/browser/Browser/BrowserController;

    invoke-interface {p1, p2}, Lde/baumann/browser/Browser/BrowserController;->updateInputBox(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getRootView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 376
    invoke-virtual {p0}, Lde/baumann/browser/View/NinjaWebView;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "Browser"

    const-string p2, "Error updating"

    .line 378
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 367
    monitor-exit p0

    throw p1
.end method
