.class public Lde/baumann/browser/Browser/NinjaWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "NinjaWebChromeClient.java"


# instance fields
.field private final ninjaWebView:Lde/baumann/browser/View/NinjaWebView;


# direct methods
.method public constructor <init>(Lde/baumann/browser/View/NinjaWebView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 14
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaWebChromeClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 19
    iget-object p2, p0, Lde/baumann/browser/Browser/NinjaWebChromeClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p2}, Lde/baumann/browser/View/NinjaWebView;->getBrowserController()Lde/baumann/browser/Browser/BrowserController;

    move-result-object p2

    invoke-interface {p2, p1, p4}, Lde/baumann/browser/Browser/BrowserController;->onCreateView(Landroid/webkit/WebView;Landroid/os/Message;)V

    return p3
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 56
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 43
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebChromeClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getBrowserController()Lde/baumann/browser/Browser/BrowserController;

    move-result-object v0

    invoke-interface {v0}, Lde/baumann/browser/Browser/BrowserController;->onHideCustomView()Z

    .line 44
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 26
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebChromeClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1, p2}, Lde/baumann/browser/View/NinjaWebView;->update(I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebChromeClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lde/baumann/browser/View/NinjaWebView;->update(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebChromeClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getBrowserController()Lde/baumann/browser/Browser/BrowserController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lde/baumann/browser/Browser/BrowserController;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 38
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 49
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebChromeClient;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->getBrowserController()Lde/baumann/browser/Browser/BrowserController;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lde/baumann/browser/Browser/BrowserController;->showFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    const/4 p1, 0x1

    return p1
.end method
