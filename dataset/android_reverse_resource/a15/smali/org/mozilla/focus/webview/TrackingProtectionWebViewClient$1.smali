.class final Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$1;
.super Landroid/os/AsyncTask;
.source "TrackingProtectionWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->triggerPreload(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/mozilla/focus/webview/TrackingProtectionWebViewClient;->access$000(Landroid/content/Context;)Lorg/mozilla/focus/webview/matcher/UrlMatcher;

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
