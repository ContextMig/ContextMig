.class public Lcom/fsck/k9/view/ClientCertificateSpinner;
.super Landroid/widget/LinearLayout;
.source "ClientCertificateSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mAlias:Ljava/lang/String;

.field mDeleteButton:Landroid/widget/ImageButton;

.field mListener:Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;

.field mSelection:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 39
    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mActivity:Landroid/app/Activity;

    .line 44
    :goto_0
    invoke-virtual {p0, v3}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setOrientation(I)V

    .line 45
    const-string v1, "layout_inflater"

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030011

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    const v1, 0x7f0c005c

    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/ClientCertificateSpinner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mSelection:Landroid/widget/Button;

    .line 50
    iget-object v1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mSelection:Landroid/widget/Button;

    new-instance v2, Lcom/fsck/k9/view/ClientCertificateSpinner$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/view/ClientCertificateSpinner$1;-><init>(Lcom/fsck/k9/view/ClientCertificateSpinner;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f0c005d

    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/ClientCertificateSpinner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mDeleteButton:Landroid/widget/ImageButton;

    .line 58
    iget-object v1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/fsck/k9/view/ClientCertificateSpinner$2;

    invoke-direct {v2, p0}, Lcom/fsck/k9/view/ClientCertificateSpinner$2;-><init>(Lcom/fsck/k9/view/ClientCertificateSpinner;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void

    .line 41
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const-string v1, "ClientCertificateSpinner init failed! Please inflate with Activity!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fsck/k9/view/ClientCertificateSpinner;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/view/ClientCertificateSpinner;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fsck/k9/view/ClientCertificateSpinner;->onDelete()V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/view/ClientCertificateSpinner;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/view/ClientCertificateSpinner;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fsck/k9/view/ClientCertificateSpinner;->updateView()V

    return-void
.end method

.method private onDelete()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setAlias(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mSelection:Landroid/widget/Button;

    iget-object v1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mSelection:Landroid/widget/Button;

    const v1, 0x7f070160

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public chooseCertificate()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fsck/k9/view/ClientCertificateSpinner$4;

    invoke-direct {v1, p0}, Lcom/fsck/k9/view/ClientCertificateSpinner$4;-><init>(Lcom/fsck/k9/view/ClientCertificateSpinner;)V

    const/4 v5, -0x1

    .line 108
    invoke-virtual {p0}, Lcom/fsck/k9/view/ClientCertificateSpinner;->getAlias()Ljava/lang/String;

    move-result-object v6

    move-object v3, v2

    move-object v4, v2

    .line 101
    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mSelection:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "alias":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mActivity:Landroid/app/Activity;

    const v2, 0x7f070160

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 p1, 0x0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mAlias:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fsck/k9/view/ClientCertificateSpinner$3;

    invoke-direct {v1, p0}, Lcom/fsck/k9/view/ClientCertificateSpinner$3;-><init>(Lcom/fsck/k9/view/ClientCertificateSpinner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public setOnClientCertificateChangedListener(Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mListener:Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;

    .line 33
    return-void
.end method
