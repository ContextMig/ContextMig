.class public Lde/baumann/browser/Browser/NinjaClickHandler;
.super Landroid/os/Handler;
.source "NinjaClickHandler.java"


# instance fields
.field private final webView:Lde/baumann/browser/View/NinjaWebView;


# direct methods
.method public constructor <init>(Lde/baumann/browser/View/NinjaWebView;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 12
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaClickHandler;->webView:Lde/baumann/browser/View/NinjaWebView;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 18
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaClickHandler;->webView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getBrowserController()Lde/baumann/browser/Browser/BrowserController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lde/baumann/browser/Browser/BrowserController;->onLongPress(Ljava/lang/String;)V

    return-void
.end method
