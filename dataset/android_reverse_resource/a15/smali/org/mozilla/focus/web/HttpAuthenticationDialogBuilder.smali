.class public Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;
.super Ljava/lang/Object;
.source "HttpAuthenticationDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;,
        Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;,
        Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;
    }
.end annotation


# instance fields
.field private cancelListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;

.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/AlertDialog;

.field private final host:Ljava/lang/String;

.field private okListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;

.field private passwordTextView:Landroid/widget/TextView;

.field private final realm:Ljava/lang/String;

.field private usernameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->access$000(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->context:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->access$100(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->host:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->access$200(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->realm:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->access$300(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->okListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;

    .line 68
    invoke-static {p1}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;->access$400(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$Builder;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->cancelListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;

    .line 69
    return-void
.end method

.method static synthetic access$1000(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->cancelListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$CancelListener;

    return-object v0
.end method

.method static synthetic access$700(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->okListener:Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$OkListener;

    return-object v0
.end method

.method static synthetic access$800(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->realm:Ljava/lang/String;

    return-object v0
.end method

.method private buildDialog(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    .line 110
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0025

    new-instance v2, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$4;

    invoke-direct {v2, p0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$4;-><init>(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)V

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0024

    new-instance v2, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$3;

    invoke-direct {v2, p0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$3;-><init>(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)V

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$2;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$2;-><init>(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->dialog:Landroid/app/AlertDialog;

    .line 134
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 135
    return-void
.end method

.method private getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->passwordTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createDialog()V
    .locals 4

    .prologue
    .line 90
    iget-object v2, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0033

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->usernameTextView:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->passwordTextView:Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->passwordTextView:Landroid/widget/TextView;

    new-instance v3, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$1;

    invoke-direct {v3, p0}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder$1;-><init>(Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 105
    invoke-direct {p0, v1}, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->buildDialog(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 82
    iget-object v1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->context:Landroid/content/Context;

    const v2, 0x7f06007e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 83
    .local v0, "photonBlue":I
    iget-object v1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 84
    iget-object v1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 85
    iget-object v1, p0, Lorg/mozilla/focus/web/HttpAuthenticationDialogBuilder;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 86
    return-void
.end method
