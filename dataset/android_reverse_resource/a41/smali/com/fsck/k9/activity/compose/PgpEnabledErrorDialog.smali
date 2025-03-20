.class public Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;
.super Lcom/fsck/k9/view/HighlightDialogFragment;
.source "PgpEnabledErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$OnOpenPgpDisableListener;
    }
.end annotation


# static fields
.field private static final ARG_IS_GOTIT:Ljava/lang/String; = "is_gotit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ZI)Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;
    .locals 3
    .param p0, "isGotItDialog"    # Z
    .param p1, "showcaseView"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 23
    new-instance v1, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;

    invoke-direct {v1}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;-><init>()V

    .line 25
    .local v1, "dialog":Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "highlighted_view"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    const-string v2, "is_gotit"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 37
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "is_gotit"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 40
    .local v2, "isGotItDialog":Z
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030035

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 42
    .local v3, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 45
    if-eqz v2, :cond_0

    const v4, 0x7f0702f8

    :goto_0
    new-instance v5, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$1;

    invoke-direct {v5, p0}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$1;-><init>(Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    const v4, 0x7f0702f7

    new-instance v5, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$2;

    invoke-direct {v5, p0}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$2;-><init>(Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 45
    :cond_0
    const v4, 0x7f0702f6

    goto :goto_0
.end method
