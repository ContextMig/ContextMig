.class Lcom/fsck/k9/ui/messageview/MessageViewFragment$6;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onSaveAttachmentToUserProvidedDirectory(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

.field final synthetic val$attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$6;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$6;->val$attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 841
    return-void
.end method

.method public onPathEntered(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$6;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$6;->val$attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$800(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->saveAttachmentTo(Ljava/lang/String;)V

    .line 836
    return-void
.end method
