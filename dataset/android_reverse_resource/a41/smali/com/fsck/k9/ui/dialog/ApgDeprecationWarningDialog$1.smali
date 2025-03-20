.class Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog$1;
.super Ljava/lang/Object;
.source "ApgDeprecationWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog$1;->this$0:Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog$1;->this$0:Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;->cancel()V

    .line 36
    return-void
.end method
