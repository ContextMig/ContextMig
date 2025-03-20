.class public Lcom/fsck/k9/fragment/ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProgressDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/fragment/ProgressDialogFragment$CancelListener;
    }
.end annotation


# static fields
.field protected static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field protected static final ARG_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ProgressDialogFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v1, Lcom/fsck/k9/fragment/ProgressDialogFragment;

    invoke-direct {v1}, Lcom/fsck/k9/fragment/ProgressDialogFragment;-><init>()V

    .line 18
    .local v1, "fragment":Lcom/fsck/k9/fragment/ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v0}, Lcom/fsck/k9/fragment/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 23
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 44
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/fsck/k9/fragment/ProgressDialogFragment$CancelListener;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 45
    check-cast v1, Lcom/fsck/k9/fragment/ProgressDialogFragment$CancelListener;

    .line 46
    .local v1, "listener":Lcom/fsck/k9/fragment/ProgressDialogFragment$CancelListener;
    invoke-interface {v1, p0}, Lcom/fsck/k9/fragment/ProgressDialogFragment$CancelListener;->onProgressCancel(Lcom/fsck/k9/fragment/ProgressDialogFragment;)V

    .line 49
    .end local v1    # "listener":Lcom/fsck/k9/fragment/ProgressDialogFragment$CancelListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 50
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fsck/k9/fragment/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "title":Ljava/lang/String;
    const-string v4, "message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/fsck/k9/fragment/ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 34
    .local v1, "dialog":Landroid/app/ProgressDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 35
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 38
    return-object v1
.end method
