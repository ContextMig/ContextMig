.class public Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;
.super Landroid/app/AlertDialog;
.source "ApgDeprecationWarningDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 24
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030014

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "contentView":Landroid/view/View;
    const v3, 0x7f0c0067

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 27
    .local v2, "textViewLearnMore":Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;->makeTextViewLinksClickable(Landroid/widget/TextView;)V

    .line 29
    const v3, 0x7f020066

    invoke-virtual {p0, v3}, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;->setIcon(I)V

    .line 30
    const v3, 0x7f07013f

    invoke-virtual {p0, v3}, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;->setTitle(I)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;->setView(Landroid/view/View;)V

    .line 32
    const/4 v3, -0x3

    const v4, 0x7f07013e

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog$1;

    invoke-direct {v5, p0}, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog$1;-><init>(Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 38
    return-void
.end method

.method private makeTextViewLinksClickable(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 41
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 42
    return-void
.end method
