.class public Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;
.super Lcom/fsck/k9/view/HighlightDialogFragment;
.source "PgpEncryptDescriptionDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;
    .locals 3
    .param p0, "showcaseView"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 21
    new-instance v1, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;

    invoke-direct {v1}, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;-><init>()V

    .line 23
    .local v1, "dialog":Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "highlighted_view"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 35
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030036

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 37
    .local v2, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 40
    const v3, 0x7f070306

    new-instance v4, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog$1;

    invoke-direct {v4, p0}, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog$1;-><init>(Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
