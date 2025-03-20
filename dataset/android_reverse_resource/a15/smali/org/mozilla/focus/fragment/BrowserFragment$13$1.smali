.class Lorg/mozilla/focus/fragment/BrowserFragment$13$1;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment$13;->onHttpAuthRequest(Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/mozilla/focus/fragment/BrowserFragment$13;

.field final synthetic val$callback:Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/BrowserFragment$13;Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;)V
    .locals 0
    .param p1, "this$1"    # Lorg/mozilla/focus/fragment/BrowserFragment$13;

    .prologue
    .line 587
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13$1;->this$1:Lorg/mozilla/focus/fragment/BrowserFragment$13;

    iput-object p2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13$1;->val$callback:Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13$1;->val$callback:Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;

    invoke-interface {v0}, Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;->cancel()V

    .line 591
    return-void
.end method
