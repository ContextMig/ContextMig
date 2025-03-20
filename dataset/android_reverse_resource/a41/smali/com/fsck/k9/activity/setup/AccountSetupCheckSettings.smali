.class public Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
.super Lcom/fsck/k9/activity/K9Activity;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fsck/k9/fragment/ConfirmationDialogFragment$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;,
        Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_CODE:I = 0x1

.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_CHECK_DIRECTION:Ljava/lang/String; = "checkDirection"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mCanceled:Z

.field private mDestroyed:Z

.field private mDirection:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

.field private mHandler:Landroid/os/Handler;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private acceptCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 5
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDirection:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-virtual {v1, v2, p1}, Lcom/fsck/k9/Account;->addCertificate(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDirection:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-static {p0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V

    .line 294
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/security/cert/CertificateException;
    const v2, 0x7f0700cd

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 290
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_1
    aput-object v1, v3, v4

    .line 288
    invoke-direct {p0, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->showErrorDialog(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private acceptKeyDialog(ILcom/fsck/k9/mail/CertificateValidationException;)V
    .locals 2
    .param p1, "msgResId"    # I
    .param p2, "ex"    # Lcom/fsck/k9/mail/CertificateValidationException;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Lcom/fsck/k9/mail/CertificateValidationException;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
    .param p1, "x1"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->acceptCertificate(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->showDialogFragment(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->showErrorDialog(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Lcom/fsck/k9/mail/CertificateValidationException;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
    .param p1, "x1"    # Lcom/fsck/k9/mail/CertificateValidationException;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->handleCertificateValidationException(Lcom/fsck/k9/mail/CertificateValidationException;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setMessage(I)V

    return-void
.end method

.method public static actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "direction"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "checkDirection"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    return-void
.end method

.method private errorMessageForCertificateException(Lcom/fsck/k9/mail/CertificateValidationException;)Ljava/lang/String;
    .locals 5
    .param p1, "e"    # Lcom/fsck/k9/mail/CertificateValidationException;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 388
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->$SwitchMap$com$fsck$k9$mail$CertificateValidationException$Reason:[I

    invoke-virtual {p1}, Lcom/fsck/k9/mail/CertificateValidationException;->getReason()Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 394
    const-string v0, ""

    :goto_0
    return-object v0

    .line 389
    :pswitch_0
    const v0, 0x7f07015d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/CertificateValidationException;->getAlias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/fsck/k9/mail/CertificateValidationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 390
    :pswitch_1
    const v0, 0x7f07014d

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    :pswitch_2
    const v0, 0x7f07015e

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/CertificateValidationException;->getAlias()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_3
    invoke-virtual {p1}, Lcom/fsck/k9/mail/CertificateValidationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDialogTag(I)Ljava/lang/String;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    .line 357
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "dialog-%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCertificateValidationException(Lcom/fsck/k9/mail/CertificateValidationException;)V
    .locals 5
    .param p1, "cve"    # Lcom/fsck/k9/mail/CertificateValidationException;

    .prologue
    const/4 v4, 0x0

    .line 104
    const-string v1, "Error while testing settings"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p1}, Lcom/fsck/k9/mail/CertificateValidationException;->getCertChain()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 108
    .local v0, "chain":[Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    .line 109
    const v1, 0x7f0700cd

    invoke-direct {p0, v1, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->acceptKeyDialog(ILcom/fsck/k9/mail/CertificateValidationException;)V

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    const v1, 0x7f0700d3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 115
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->errorMessageForCertificateException(Lcom/fsck/k9/mail/CertificateValidationException;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 113
    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->showErrorDialog(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z

    .line 304
    const v0, 0x7f0700c2

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setMessage(I)V

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 306
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V

    .line 307
    return-void
.end method

.method private setMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method private showDialogFragment(ILjava/lang/String;)V
    .locals 5
    .param p1, "dialogId"    # I
    .param p2, "customMessage"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-boolean v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 354
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 332
    packed-switch p1, :pswitch_data_0

    .line 343
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Called showDialog(int) with unknown dialog id."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    :pswitch_0
    const v2, 0x7f0700d4

    .line 335
    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0700cf

    .line 337
    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0700ce

    .line 338
    invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-static {p1, v2, p2, v3, v4}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    move-result-object v0

    .line 347
    .local v0, "fragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 348
    .local v1, "ta":Landroid/app/FragmentTransaction;
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getDialogTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 349
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x7f0c0000
        :pswitch_0
    .end packed-switch
.end method

.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msgResId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method


# virtual methods
.method public dialogCancelled(I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    .line 385
    return-void
.end method

.method public doNegativeClick(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 372
    packed-switch p1, :pswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 374
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z

    .line 375
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 376
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0000
        :pswitch_0
    .end packed-switch
.end method

.method public doPositiveClick(I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    .line 362
    packed-switch p1, :pswitch_data_0

    .line 368
    :goto_0
    return-void

    .line 364
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x7f0c0000
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 298
    invoke-virtual {p0, p2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 299
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V

    .line 300
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 312
    :pswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->onCancel()V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x7f0c0109
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setContentView(I)V

    .line 89
    const v1, 0x7f0c0012

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mMessageView:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0c0013

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 91
    const v1, 0x7f0c0109

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f0700c6

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setMessage(I)V

    .line 94
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;

    .line 98
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "checkDirection"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDirection:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    .line 100
    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;)V

    new-array v2, v4, [Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDirection:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onDestroy()V

    .line 123
    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z

    .line 124
    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z

    .line 125
    return-void
.end method
