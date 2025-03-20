.class Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog$1;
.super Ljava/lang/Object;
.source "PgpEncryptDescriptionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog$1;->this$0:Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 44
    return-void
.end method
