.class final Lorg/mozilla/focus/webview/SystemWebView$1;
.super Ljava/lang/Object;
.source "SystemWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/webview/SystemWebView;->deleteContentFromKnownLocations(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lorg/mozilla/focus/webview/SystemWebView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/mozilla/focus/utils/FileUtils;->deleteWebViewDirectory(Landroid/content/Context;)Z

    .line 279
    iget-object v0, p0, Lorg/mozilla/focus/webview/SystemWebView$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/mozilla/focus/utils/FileUtils;->truncateCacheDirectory(Landroid/content/Context;)Z

    .line 280
    return-void
.end method
