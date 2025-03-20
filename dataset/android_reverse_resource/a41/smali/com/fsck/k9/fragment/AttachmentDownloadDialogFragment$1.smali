.class Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "AttachmentDownloadDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;->this$0:Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;

    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;->this$0:Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->access$000(Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 47
    return-void
.end method
