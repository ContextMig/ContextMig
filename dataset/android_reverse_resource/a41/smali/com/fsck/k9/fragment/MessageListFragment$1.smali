.class Lcom/fsck/k9/fragment/MessageListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/fragment/MessageListFragment;->createCacheBroadcastReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/fragment/MessageListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment$1;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$1;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$000(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/MessageListAdapter;->notifyDataSetChanged()V

    .line 645
    return-void
.end method
