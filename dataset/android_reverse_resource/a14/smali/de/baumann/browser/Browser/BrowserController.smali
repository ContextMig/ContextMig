.class public interface abstract Lde/baumann/browser/Browser/BrowserController;
.super Ljava/lang/Object;
.source "BrowserController.java"


# virtual methods
.method public abstract onCreateView(Landroid/webkit/WebView;Landroid/os/Message;)V
.end method

.method public abstract onHideCustomView()Z
.end method

.method public abstract onLongPress(Ljava/lang/String;)V
.end method

.method public abstract onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end method

.method public abstract removeAlbum(Lde/baumann/browser/Browser/AlbumController;)V
.end method

.method public abstract showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V
.end method

.method public abstract showFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V
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
.end method

.method public abstract updateAutoComplete()V
.end method

.method public abstract updateBookmarks()V
.end method

.method public abstract updateInputBox(Ljava/lang/String;)V
.end method

.method public abstract updateProgress(I)V
.end method
