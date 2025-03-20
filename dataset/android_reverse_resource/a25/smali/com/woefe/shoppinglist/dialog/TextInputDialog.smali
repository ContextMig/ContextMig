.class public Lcom/woefe/shoppinglist/dialog/TextInputDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/dialog/TextInputDialog$Builder;,
        Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;
    }
.end annotation


# static fields
.field private static final KEY_HINT:Ljava/lang/String; = "INPUT"

.field private static final KEY_INPUT:Ljava/lang/String; = "INPUT"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private action:I

.field private hint:Ljava/lang/String;

.field private inputField:Landroid/widget/EditText;

.field private listener:Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/woefe/shoppinglist/dialog/TextInputDialog;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->onInputComplete()V

    return-void
.end method

.method static synthetic access$102(Lcom/woefe/shoppinglist/dialog/TextInputDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/woefe/shoppinglist/dialog/TextInputDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->hint:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/woefe/shoppinglist/dialog/TextInputDialog;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->action:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onInputComplete()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->onValidateInput(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->listener:Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;

    iget v2, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->action:I

    invoke-interface {v1, v0, v2}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;->onInputComplete(Ljava/lang/String;I)V

    .line 123
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 62
    instance-of v1, p1, Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;

    if-eqz v1, :cond_0

    .line 63
    check-cast p1, Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;

    iput-object p1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->listener:Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;

    goto :goto_0

    .line 64
    :cond_0
    instance-of p1, v0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;

    if-eqz p1, :cond_1

    .line 65
    check-cast v0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;

    iput-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->listener:Lcom/woefe/shoppinglist/dialog/TextInputDialog$TextInputDialogListener;

    goto :goto_0

    .line 67
    :cond_1
    sget-object p1, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->TAG:Ljava/lang/String;

    const-string v0, "Dialog not attached"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const-string v0, ""

    if-eqz p3, :cond_0

    const-string v0, "MESSAGE"

    .line 78
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->message:Ljava/lang/String;

    const-string v0, "INPUT"

    .line 79
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->hint:Ljava/lang/String;

    const-string v0, "INPUT"

    .line 80
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const p3, 0x7f0a002c

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080049

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f080031

    .line 85
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const v1, 0x7f080032

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 87
    iget-object v2, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->message:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f08004a

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->inputField:Landroid/widget/EditText;

    .line 90
    iget-object p2, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->inputField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->hint:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p2, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p2, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 94
    iget-object p2, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->inputField:Landroid/widget/EditText;

    new-instance v0, Lcom/woefe/shoppinglist/dialog/TextInputDialog$1;

    invoke-direct {v0, p0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$1;-><init>(Lcom/woefe/shoppinglist/dialog/TextInputDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 102
    new-instance p2, Lcom/woefe/shoppinglist/dialog/TextInputDialog$2;

    invoke-direct {p2, p0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$2;-><init>(Lcom/woefe/shoppinglist/dialog/TextInputDialog;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    new-instance p2, Lcom/woefe/shoppinglist/dialog/TextInputDialog$3;

    invoke-direct {p2, p0}, Lcom/woefe/shoppinglist/dialog/TextInputDialog$3;-><init>(Lcom/woefe/shoppinglist/dialog/TextInputDialog;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MESSAGE"

    .line 134
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->message:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INPUT"

    .line 135
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->hint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INPUT"

    .line 136
    iget-object v1, p0, Lcom/woefe/shoppinglist/dialog/TextInputDialog;->inputField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onValidateInput(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
