.class Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$3;
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
    .line 103
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$3;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$3;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-virtual {v1}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 107
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$OnClickShowCryptoKeyListener;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Displaying activity must implement OnClickShowCryptoKeyListener!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 110
    :cond_0
    check-cast v0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$OnClickShowCryptoKeyListener;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$OnClickShowCryptoKeyListener;->onClickShowCryptoKey()V

    .line 111
    return-void
.end method
