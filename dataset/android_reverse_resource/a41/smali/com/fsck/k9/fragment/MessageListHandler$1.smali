.class Lcom/fsck/k9/fragment/MessageListHandler$1;
.super Ljava/lang/Object;
.source "MessageListHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/fragment/MessageListHandler;->updateFooter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/fragment/MessageListHandler;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/fragment/MessageListHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/fragment/MessageListHandler;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListHandler$1;->this$0:Lcom/fsck/k9/fragment/MessageListHandler;

    iput-object p2, p0, Lcom/fsck/k9/fragment/MessageListHandler$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListHandler$1;->this$0:Lcom/fsck/k9/fragment/MessageListHandler;

    invoke-static {v1}, Lcom/fsck/k9/fragment/MessageListHandler;->access$000(Lcom/fsck/k9/fragment/MessageListHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/fragment/MessageListFragment;

    .line 62
    .local v0, "fragment":Lcom/fsck/k9/fragment/MessageListFragment;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListHandler$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->updateFooter(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
