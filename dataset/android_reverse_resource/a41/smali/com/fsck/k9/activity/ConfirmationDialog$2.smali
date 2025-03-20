.class final Lcom/fsck/k9/activity/ConfirmationDialog$2;
.super Ljava/lang/Object;
.source "ConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ConfirmationDialog;->create(Landroid/app/Activity;IILjava/lang/String;IILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialogId:I

.field final synthetic val$negativeAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;ILjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fsck/k9/activity/ConfirmationDialog$2;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/fsck/k9/activity/ConfirmationDialog$2;->val$dialogId:I

    iput-object p3, p0, Lcom/fsck/k9/activity/ConfirmationDialog$2;->val$negativeAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/activity/ConfirmationDialog$2;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/fsck/k9/activity/ConfirmationDialog$2;->val$dialogId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 62
    iget-object v0, p0, Lcom/fsck/k9/activity/ConfirmationDialog$2;->val$negativeAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/fsck/k9/activity/ConfirmationDialog$2;->val$negativeAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_0
    return-void
.end method
