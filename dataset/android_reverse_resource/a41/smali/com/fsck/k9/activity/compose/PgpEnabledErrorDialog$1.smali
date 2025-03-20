.class Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$1;
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
    .line 46
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$1;->this$0:Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 50
    return-void
.end method
