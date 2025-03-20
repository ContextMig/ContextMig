.class Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$1;
.super Ljava/lang/Object;
.source "CryptoInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$1;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$1;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->dismiss()V

    .line 88
    return-void
.end method
