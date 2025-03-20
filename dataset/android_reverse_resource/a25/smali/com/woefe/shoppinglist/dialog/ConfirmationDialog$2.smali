.class Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$2;
.super Ljava/lang/Object;
.source "ConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$2;->this$0:Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$2;->this$0:Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;

    invoke-static {p1}, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->access$100(Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;)Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$ConfirmationDialogListener;

    move-result-object p1

    iget-object p2, p0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$2;->this$0:Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;

    invoke-static {p2}, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->access$000(Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$ConfirmationDialogListener;->onPositiveButtonClicked(I)V

    return-void
.end method
