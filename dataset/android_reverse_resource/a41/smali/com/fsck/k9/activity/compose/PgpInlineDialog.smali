.class public Lcom/fsck/k9/activity/compose/PgpInlineDialog;
.super Lcom/fsck/k9/view/HighlightDialogFragment;
.source "PgpInlineDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/compose/PgpInlineDialog$OnOpenPgpInlineChangeListener;
    }
.end annotation


# static fields
.field public static final ARG_FIRST_TIME:Ljava/lang/String; = "first_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ZI)Lcom/fsck/k9/activity/compose/PgpInlineDialog;
    .locals 4
    .param p0, "firstTime"    # Z
    .param p1, "showcaseView"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 24
    new-instance v1, Lcom/fsck/k9/activity/compose/PgpInlineDialog;

    invoke-direct {v1}, Lcom/fsck/k9/activity/compose/PgpInlineDialog;-><init>()V

    .line 26
    .local v1, "dialog":Lcom/fsck/k9/activity/compose/PgpInlineDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "first_time"

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    const-string v2, "highlighted_view"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/compose/PgpInlineDialog;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1

    .line 27
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/PgpInlineDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 39
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030037

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 41
    .local v2, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/PgpInlineDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "first_time"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const v3, 0x7f070300

    new-instance v4, Lcom/fsck/k9/activity/compose/PgpInlineDialog$1;

    invoke-direct {v4, p0}, Lcom/fsck/k9/activity/compose/PgpInlineDialog$1;-><init>(Lcom/fsck/k9/activity/compose/PgpInlineDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 52
    :cond_0
    const v3, 0x7f0702fc

    new-instance v4, Lcom/fsck/k9/activity/compose/PgpInlineDialog$2;

    invoke-direct {v4, p0}, Lcom/fsck/k9/activity/compose/PgpInlineDialog$2;-><init>(Lcom/fsck/k9/activity/compose/PgpInlineDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    const v3, 0x7f0702fd

    new-instance v4, Lcom/fsck/k9/activity/compose/PgpInlineDialog$3;

    invoke-direct {v4, p0}, Lcom/fsck/k9/activity/compose/PgpInlineDialog$3;-><init>(Lcom/fsck/k9/activity/compose/PgpInlineDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
