.class public Lde/baumann/browser/Service/HolderService;
.super Landroid/app/Service;
.source "HolderService.java"

# interfaces
.implements Lde/baumann/browser/Browser/BrowserController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private updateNotification()V
    .locals 2

    .line 108
    invoke-static {p0}, Lde/baumann/browser/Unit/NotificationUnit;->getHBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x65536

    .line 109
    invoke-virtual {p0, v1, v0}, Lde/baumann/browser/Service/HolderService;->startForeground(ILandroid/app/Notification;)V

    const v0, 0x7f0e00fe

    const/4 v1, 0x1

    .line 110
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/webkit/WebView;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 95
    invoke-static {}, Lde/baumann/browser/Unit/IntentUnit;->isClear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->clear()V

    :cond_0
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Lde/baumann/browser/Service/HolderService;->stopForeground(Z)V

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onHideCustomView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "sp_background"

    const/4 p3, 0x1

    .line 67
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    invoke-static {}, Landroid/webkit/WebView;->enableSlowWholeDocumentDraw()V

    .line 69
    new-instance p1, Lde/baumann/browser/View/NinjaWebView;

    new-instance p2, Lde/baumann/browser/View/NinjaContextWrapper;

    invoke-direct {p2, p0}, Lde/baumann/browser/View/NinjaContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lde/baumann/browser/View/NinjaWebView;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p1, p0}, Lde/baumann/browser/View/NinjaWebView;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V

    const/16 p2, 0x103

    .line 72
    invoke-virtual {p1, p2}, Lde/baumann/browser/View/NinjaWebView;->setFlag(I)V

    const/4 p2, 0x0

    .line 73
    invoke-virtual {p1, p2}, Lde/baumann/browser/View/NinjaWebView;->setAlbumCover(Landroid/graphics/Bitmap;)V

    const p2, 0x7f0e0022

    .line 74
    invoke-virtual {p0, p2}, Lde/baumann/browser/Service/HolderService;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/baumann/browser/View/NinjaWebView;->setAlbumTitle(Ljava/lang/String;)V

    .line 75
    invoke-static {p0, p1}, Lde/baumann/browser/Unit/ViewUnit;->bound(Landroid/content/Context;Landroid/view/View;)V

    .line 77
    invoke-static {}, Lde/baumann/browser/Unit/RecordUnit;->getHolder()Lde/baumann/browser/Database/Record;

    move-result-object p2

    invoke-virtual {p2}, Lde/baumann/browser/Database/Record;->getURL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/baumann/browser/View/NinjaWebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->deactivate()V

    .line 80
    invoke-static {p1}, Lde/baumann/browser/Browser/BrowserContainer;->add(Lde/baumann/browser/Browser/AlbumController;)V

    .line 81
    invoke-direct {p0}, Lde/baumann/browser/Service/HolderService;->updateNotification()V

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    .line 86
    invoke-static {}, Lde/baumann/browser/Unit/RecordUnit;->getHolder()Lde/baumann/browser/Database/Record;

    move-result-object v0

    invoke-virtual {v0}, Lde/baumann/browser/Database/Record;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, p1}, Lde/baumann/browser/Service/HolderService;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return p3
.end method

.method public removeAlbum(Lde/baumann/browser/Browser/AlbumController;)V
    .locals 0

    return-void
.end method

.method public showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V
    .locals 0

    return-void
.end method

.method public showFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public updateAutoComplete()V
    .locals 0

    return-void
.end method

.method public updateBookmarks()V
    .locals 0

    return-void
.end method

.method public updateInputBox(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateProgress(I)V
    .locals 0

    return-void
.end method
