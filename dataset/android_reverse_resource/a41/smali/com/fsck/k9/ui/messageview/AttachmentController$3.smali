.class Lcom/fsck/k9/ui/messageview/AttachmentController$3;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "AttachmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/AttachmentController;->downloadAttachment(Lcom/fsck/k9/mailstore/LocalPart;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

.field final synthetic val$attachmentDownloadedCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/AttachmentController;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$3;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$3;->val$attachmentDownloadedCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "part"    # Lcom/fsck/k9/mail/Part;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$3;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$200(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->hideAttachmentLoadingDialogOnMainThread()V

    .line 111
    return-void
.end method

.method public loadAttachmentFinished(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$3;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$100(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->setContentAvailable()V

    .line 104
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$3;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$200(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->hideAttachmentLoadingDialogOnMainThread()V

    .line 105
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$3;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$200(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$3;->val$attachmentDownloadedCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method
