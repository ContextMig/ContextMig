.class Lcom/fsck/k9/activity/MessageCompose$12$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageCompose$12;->addAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageCompose$12;

.field final synthetic val$attachment:Lcom/fsck/k9/activity/misc/Attachment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose$12;Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/MessageCompose$12;

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$12$1;->this$1:Lcom/fsck/k9/activity/MessageCompose$12;

    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$12$1;->val$attachment:Lcom/fsck/k9/activity/misc/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$12$1;->this$1:Lcom/fsck/k9/activity/MessageCompose$12;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$1000(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$12$1;->val$attachment:Lcom/fsck/k9/activity/misc/Attachment;

    iget-object v1, v1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->onClickRemoveAttachment(Landroid/net/Uri;)V

    .line 1729
    return-void
.end method
