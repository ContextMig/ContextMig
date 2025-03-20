.class public Lcom/fsck/k9/view/HighlightDialogFragment;
.super Landroid/app/DialogFragment;
.source "HighlightDialogFragment.java"


# static fields
.field public static final ARG_HIGHLIGHT_VIEW:Ljava/lang/String; = "highlighted_view"

.field public static final BACKGROUND_DIM_AMOUNT:F = 0.25f


# instance fields
.field private showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private hideKeyboard()V
    .locals 5

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 88
    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 89
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private hideShowcaseView()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hide()V

    .line 96
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 97
    return-void
.end method

.method private setDialogBackgroundDim()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 70
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0
.end method


# virtual methods
.method protected highlightViewInBackground()V
    .locals 5

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "highlighted_view"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 32
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 33
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "fragment must be attached to set highlight!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 37
    .local v1, "alreadyShowing":Z
    :goto_1
    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "highlighted_view"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 42
    .local v2, "highlightedView":I
    new-instance v3, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    invoke-direct {v3, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;)V

    new-instance v4, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;

    invoke-direct {v4, v2, v0}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;-><init>(ILandroid/app/Activity;)V

    .line 43
    invoke-virtual {v3, v4}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->hideOnTouchOutside()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->blockAllTouches()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->withMaterialShowcase()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v3

    const v4, 0x7f08000e

    .line 47
    invoke-virtual {v3, v4}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setStyle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->build()Lcom/github/amlcurran/showcaseview/ShowcaseView;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 49
    iget-object v3, p0, Lcom/fsck/k9/view/HighlightDialogFragment;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideButton()V

    goto :goto_0

    .line 36
    .end local v1    # "alreadyShowing":Z
    .end local v2    # "highlightedView":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 65
    invoke-direct {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;->hideShowcaseView()V

    .line 66
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 56
    invoke-direct {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;->hideKeyboard()V

    .line 57
    invoke-virtual {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;->highlightViewInBackground()V

    .line 58
    invoke-direct {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;->setDialogBackgroundDim()V

    .line 59
    return-void
.end method
