.class Lorg/mozilla/focus/fragment/BrowserFragment$13$2;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;


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
    .line 581
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13$2;->this$1:Lorg/mozilla/focus/fragment/BrowserFragment$13;

    iput-object p2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13$2;->val$callback:Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$13$2;->val$callback:Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;

    invoke-interface {v0, p3, p4}, Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method
