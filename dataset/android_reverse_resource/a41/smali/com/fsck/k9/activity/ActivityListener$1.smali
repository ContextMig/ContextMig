.class Lcom/fsck/k9/activity/ActivityListener$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/ActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ActivityListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ActivityListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/ActivityListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fsck/k9/activity/ActivityListener$1;->this$0:Lcom/fsck/k9/activity/ActivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fsck/k9/activity/ActivityListener$1;->this$0:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 36
    return-void
.end method
