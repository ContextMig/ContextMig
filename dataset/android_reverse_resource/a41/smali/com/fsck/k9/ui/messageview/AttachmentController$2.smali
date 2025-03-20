.class Lcom/fsck/k9/ui/messageview/AttachmentController$2;
.super Ljava/lang/Object;
.source "AttachmentController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/AttachmentController;->downloadAndSaveAttachmentTo(Lcom/fsck/k9/mailstore/LocalPart;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

.field final synthetic val$directory:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/AttachmentController;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$2;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$2;->val$directory:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$2;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$200(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$2;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$100(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->refreshAttachmentThumbnail(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 89
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$2;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$2;->val$directory:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$300(Lcom/fsck/k9/ui/messageview/AttachmentController;Ljava/io/File;)V

    .line 90
    return-void
.end method
