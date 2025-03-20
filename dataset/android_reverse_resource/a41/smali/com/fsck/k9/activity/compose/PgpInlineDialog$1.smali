.class Lcom/fsck/k9/activity/compose/PgpInlineDialog$1;
.super Ljava/lang/Object;
.source "PgpInlineDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/compose/PgpInlineDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/PgpInlineDialog;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/compose/PgpInlineDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/PgpInlineDialog;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/PgpInlineDialog$1;->this$0:Lcom/fsck/k9/activity/compose/PgpInlineDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 48
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 49
    return-void
.end method
