.class public Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$ApgDeprecationDialogFragment;
.super Landroid/app/DialogFragment;
.source "OpenPgpAppSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApgDeprecationDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    new-instance v0, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$ApgDeprecationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 228
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$ApgDeprecationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->onDismissApgDialog()V

    .line 229
    return-void
.end method
