.class public Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ConfirmationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$ConfirmationDialogListener;
    }
.end annotation


# static fields
.field private static final KEY_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field private static final TAG:Ljava/lang/String; = "ConfirmationDialog"


# instance fields
.field private action:I

.field private listener:Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$ConfirmationDialogListener;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->action:I

    return p0
.end method

.method static synthetic access$100(Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;)Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$ConfirmationDialogListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->listener:Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$ConfirmationDialogListener;

    return-object p0
.end method

.method public static show(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;I)V
    .locals 1

    .line 52
    new-instance v0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;

    invoke-direct {v0}, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;-><init>()V

    .line 53
    iput-object p1, v0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->message:Ljava/lang/String;

    .line 54
    iput p2, v0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->action:I

    .line 55
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    sget-object p1, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 61
    check-cast p1, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$ConfirmationDialogListener;

    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->listener:Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$ConfirmationDialogListener;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    if-eqz p1, :cond_0

    const-string v0, "MESSAGE"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->message:Ljava/lang/String;

    .line 73
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0048

    new-instance v2, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$2;

    invoke-direct {v2, p0}, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$2;-><init>(Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;)V

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d002c

    new-instance v2, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$1;

    invoke-direct {v2, p0}, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog$1;-><init>(Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;)V

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MESSAGE"

    .line 94
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/ConfirmationDialog;->message:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
