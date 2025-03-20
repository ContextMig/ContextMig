.class public Lorg/mozilla/focus/fragment/DownloadDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DownloadDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/fragment/DownloadDialogFragment$DownloadDialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/mozilla/focus/web/Download;)Lorg/mozilla/focus/fragment/DownloadDialogFragment;
    .locals 6
    .param p0, "download"    # Lorg/mozilla/focus/web/Download;

    .prologue
    .line 32
    new-instance v2, Lorg/mozilla/focus/fragment/DownloadDialogFragment;

    invoke-direct {v2}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;-><init>()V

    .line 33
    .local v2, "frag":Lorg/mozilla/focus/fragment/DownloadDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/mozilla/focus/web/Download;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {p0}, Lorg/mozilla/focus/web/Download;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual {p0}, Lorg/mozilla/focus/web/Download;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-static {v3, v4, v5}, Lmozilla/components/support/utils/DownloadUtils;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "fileName":Ljava/lang/String;
    const-string v3, "fileName"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "download"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    invoke-virtual {v2, v0}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v2
.end method

.method private setButtonOnClickListener(Landroid/widget/Button;Lorg/mozilla/focus/web/Download;Z)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "pendingDownload"    # Lorg/mozilla/focus/web/Download;
    .param p3, "shouldDownload"    # Z

    .prologue
    .line 79
    new-instance v0, Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;-><init>(Lorg/mozilla/focus/fragment/DownloadDialogFragment;Lorg/mozilla/focus/web/Download;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method public getSpannedTextFromHtml(II)Landroid/text/Spanned;
    .locals 4
    .param p1, "text"    # I
    .param p2, "replaceString"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 101
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 105
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/support/v7/app/AlertDialog;
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    .line 47
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "fileName"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "download"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lorg/mozilla/focus/web/Download;

    .line 50
    .local v10, "pendingDownload":Lorg/mozilla/focus/web/Download;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f1000ac

    invoke-direct {v1, v11, v12}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 51
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v1, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 52
    const v11, 0x7f0f0058

    invoke-virtual {p0, v11}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 55
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f0b0034

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "dialogView":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 58
    const v11, 0x7f090065

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 59
    .local v5, "downloadDialogIcon":Landroid/widget/ImageView;
    const v11, 0x7f090064

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 60
    .local v6, "downloadDialogMessage":Landroid/widget/TextView;
    const v11, 0x7f090062

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 61
    .local v3, "downloadDialogCancelButton":Landroid/widget/Button;
    const v11, 0x7f090063

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 62
    .local v4, "downloadDialogDownloadButton":Landroid/widget/Button;
    const v11, 0x7f090066

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 64
    .local v7, "downloadDialogWarningMessage":Landroid/widget/TextView;
    const v11, 0x7f080089

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v11, 0x7f0f0056

    invoke-virtual {p0, v11}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v11, 0x7f0f0057

    invoke-virtual {p0, v11}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v11, 0x7f0f0059

    const v12, 0x7f0f0028

    invoke-virtual {p0, v11, v12}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getSpannedTextFromHtml(II)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 72
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    const/4 v11, 0x0

    invoke-direct {p0, v3, v10, v11}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->setButtonOnClickListener(Landroid/widget/Button;Lorg/mozilla/focus/web/Download;Z)V

    .line 73
    invoke-direct {p0, v4, v10, v13}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->setButtonOnClickListener(Landroid/widget/Button;Lorg/mozilla/focus/web/Download;Z)V

    .line 75
    return-object v0
.end method

.method public sendDownloadDialogButtonClicked(Lorg/mozilla/focus/web/Download;Z)V
    .locals 1
    .param p1, "download"    # Lorg/mozilla/focus/web/Download;
    .param p2, "shouldDownload"    # Z

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/fragment/DownloadDialogFragment$DownloadDialogListener;

    .line 92
    .local v0, "listener":Lorg/mozilla/focus/fragment/DownloadDialogFragment$DownloadDialogListener;
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1, p2}, Lorg/mozilla/focus/fragment/DownloadDialogFragment$DownloadDialogListener;->onFinishDownloadDialog(Lorg/mozilla/focus/web/Download;Z)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->dismiss()V

    .line 96
    return-void
.end method
