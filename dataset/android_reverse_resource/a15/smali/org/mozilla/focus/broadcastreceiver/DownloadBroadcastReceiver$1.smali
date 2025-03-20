.class Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "DownloadBroadcastReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;->showSnackbarForFilename(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$openFileIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver$1;->this$0:Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver;

    iput-object p2, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver$1;->val$openFileIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/mozilla/focus/broadcastreceiver/DownloadBroadcastReceiver$1;->val$openFileIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void
.end method
