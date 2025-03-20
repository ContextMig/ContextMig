.class Lcom/fsck/k9/ui/messageview/AttachmentController$1;
.super Ljava/lang/Object;
.source "AttachmentController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/AttachmentController;->downloadAndViewAttachment(Lcom/fsck/k9/mailstore/LocalPart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/AttachmentController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$1;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$1;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$000(Lcom/fsck/k9/ui/messageview/AttachmentController;)V

    .line 80
    return-void
.end method
