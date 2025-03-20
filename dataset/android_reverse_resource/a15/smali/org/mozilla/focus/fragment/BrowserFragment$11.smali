.class Lorg/mozilla/focus/fragment/BrowserFragment$11;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment;->initialiseCustomTabUi(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/BrowserFragment;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 500
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$11;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    iput-object p2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$11;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 504
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 505
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$11;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 507
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$11;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$11;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->customTabActionButtonEvent()V

    .line 512
    return-void

    .line 508
    :catch_0
    move-exception v1

    goto :goto_0
.end method
