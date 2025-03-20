.class public Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;
.super Landroid/app/DialogFragment;
.source "AttachmentDownloadDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$AttachmentDownloadCancelListener;
    }
.end annotation


# static fields
.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARG_SIZE:Ljava/lang/String; = "size"


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private messagingController:Lcom/fsck/k9/controller/MessagingController;

.field private messagingListener:Lcom/fsck/k9/controller/MessagingListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;
    .locals 3
    .param p0, "size"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v1, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;

    invoke-direct {v1}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;-><init>()V

    .line 29
    .local v1, "fragment":Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "size"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v0}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 72
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$AttachmentDownloadCancelListener;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 73
    check-cast v1, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$AttachmentDownloadCancelListener;

    .line 74
    .local v1, "listener":Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$AttachmentDownloadCancelListener;
    invoke-interface {v1, p0}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$AttachmentDownloadCancelListener;->onProgressCancel(Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;)V

    .line 77
    .end local v1    # "listener":Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$AttachmentDownloadCancelListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 78
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "size"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    .local v2, "size":I
    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;-><init>(Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;)V

    iput-object v3, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingListener:Lcom/fsck/k9/controller/MessagingListener;

    .line 50
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 51
    iget-object v3, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingListener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 53
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->dialog:Landroid/app/ProgressDialog;

    .line 54
    iget-object v3, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v3, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 56
    iget-object v3, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->dialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 57
    iget-object v3, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->dialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 58
    iget-object v3, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 60
    iget-object v3, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->dialog:Landroid/app/ProgressDialog;

    return-object v3
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->messagingListener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 66
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 67
    return-void
.end method
