.class Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$2;
.super Ljava/lang/Object;
.source "PgpEnabledErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$2;->this$0:Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$2;->this$0:Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 62
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 60
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    check-cast v0, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$OnOpenPgpDisableListener;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$OnOpenPgpDisableListener;->onOpenPgpClickDisable()V

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
