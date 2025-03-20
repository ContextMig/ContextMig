.class Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$2;
.super Ljava/lang/Object;
.source "TrackingProtectionWebViewClient.java"

# interfaces
.implements Lorg/mozilla/focus/web/IWebView$HttpAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;Landroid/webkit/HttpAuthHandler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$2;->this$0:Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;

    iput-object p2, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 153
    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method
