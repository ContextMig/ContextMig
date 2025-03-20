.class Lcom/fsck/k9/ui/messageview/MessageViewFragment$3;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/MessageViewFragment;->hideAttachmentLoadingDialogOnMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$3;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$3;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    const v1, 0x7f0c0001

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$200(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V

    .line 668
    return-void
.end method
