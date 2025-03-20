.class public Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;
.super Ljava/lang/Object;
.source "MessageCryptoPresenter.java"

# interfaces
.implements Lcom/fsck/k9/ui/messageview/OnCryptoClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_SECURITY_WARNING:I = 0x7c

.field public static final REQUEST_CODE_UNKNOWN_KEY:I = 0x7b


# instance fields
.field private cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

.field private final messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

.field private overrideCryptoWarning:Z

.field private reloadOnResumeWithoutRecreateFlag:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "messageCryptoMvpView"    # Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    const-string v0, "overrideCryptoWarning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->overrideCryptoWarning:Z

    .line 49
    :cond_0
    return-void
.end method

.method private displayCryptoInfoDialog(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V
    .locals 2
    .param p1, "displayStatus"    # Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 211
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->hasOpenPgpInsecureWarningPendingIntent()Z

    move-result v1

    .line 210
    invoke-interface {v0, p1, v1}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;->showCryptoInfoDialog(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;Z)V

    .line 212
    return-void
.end method

.method private static getOpenPgpApiProviderIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 269
    :try_start_0
    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpProvider()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "openPgpProvider":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    .end local v1    # "openPgpProvider":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 273
    .restart local v1    # "openPgpProvider":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 274
    .end local v1    # "openPgpProvider":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private launchPendingIntent(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V
    .locals 10
    .param p1, "cryptoResultAnnotation"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .prologue
    const/4 v9, 0x0

    .line 216
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getOpenPgpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    .line 217
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v8, :cond_0

    .line 218
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    .line 219
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 218
    invoke-interface/range {v0 .. v6}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;->startPendingIntentForCryptoPresenter(Landroid/content/IntentSender;Ljava/lang/Integer;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v7

    .line 222
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "SendIntentException"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showMessageCryptoWarning(Lcom/fsck/k9/ui/messageview/MessageTopView;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;I)V
    .locals 3
    .param p1, "messageView"    # Lcom/fsck/k9/ui/messageview/MessageTopView;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .param p4, "warningStringRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 160
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->overrideCryptoWarning:Z

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {p1, p2, p3}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getOpenPgpApiProviderIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, "providerIcon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->hasOpenPgpInsecureWarningPendingIntent()Z

    move-result v1

    .line 166
    .local v1, "showDetailButton":Z
    invoke-virtual {p1, p3, v0, p4, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessageCryptoWarning(Lcom/fsck/k9/mailstore/MessageViewInfo;Landroid/graphics/drawable/Drawable;IZ)V

    goto :goto_0
.end method


# virtual methods
.method public getDecryptionResultForReply()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->isOpenPgpResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getOpenPgpDecryptionResult()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeHandleShowMessage(Lcom/fsck/k9/ui/messageview/MessageTopView;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;)Z
    .locals 7
    .param p1, "messageView"    # Lcom/fsck/k9/ui/messageview/MessageTopView;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    const v6, 0x7f0702c5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    iget-object v5, p3, Lcom/fsck/k9/mailstore/MessageViewInfo;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    iput-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 65
    iget-object v5, p3, Lcom/fsck/k9/mailstore/MessageViewInfo;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 66
    invoke-static {v5}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->fromResultAnnotation(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    move-result-object v0

    .line 67
    .local v0, "displayStatus":Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    sget-object v5, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    if-ne v0, v5, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v3

    .line 71
    :cond_1
    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpSupportSignOnly()Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v4

    .line 72
    .local v2, "suppressSignOnlyMessages":Z
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->isUnencryptedSigned()Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->isOverrideSecurityWarning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    iput-boolean v4, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->overrideCryptoWarning:Z

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fsck/k9/view/MessageHeader;->setCryptoStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V

    .line 82
    sget-object v3, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$1;->$SwitchMap$com$fsck$k9$view$MessageCryptoDisplayStatus:[I

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 146
    :pswitch_0
    invoke-virtual {p1, p2, p3}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    :goto_2
    move v3, v4

    .line 155
    goto :goto_0

    .end local v2    # "suppressSignOnlyMessages":Z
    :cond_4
    move v2, v3

    .line 71
    goto :goto_1

    .line 85
    .restart local v2    # "suppressSignOnlyMessages":Z
    :pswitch_1
    const v3, 0x7f0702c6

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->showMessageCryptoWarning(Lcom/fsck/k9/ui/messageview/MessageTopView;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;I)V

    goto :goto_2

    .line 91
    :pswitch_2
    const v3, 0x7f0702c4

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->showMessageCryptoWarning(Lcom/fsck/k9/ui/messageview/MessageTopView;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;I)V

    goto :goto_2

    .line 97
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->showMessageCryptoWarning(Lcom/fsck/k9/ui/messageview/MessageTopView;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;I)V

    goto :goto_2

    .line 103
    :pswitch_4
    const v3, 0x7f0702c3

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->showMessageCryptoWarning(Lcom/fsck/k9/ui/messageview/MessageTopView;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;I)V

    goto :goto_2

    .line 108
    :pswitch_5
    const v3, 0x7f0702c9

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->showMessageCryptoWarning(Lcom/fsck/k9/ui/messageview/MessageTopView;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;I)V

    goto :goto_2

    .line 114
    :pswitch_6
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getOpenPgpApiProviderIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    .local v1, "providerIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, p3, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessageCryptoCancelledView(Lcom/fsck/k9/mailstore/MessageViewInfo;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 120
    .end local v1    # "providerIcon":Landroid/graphics/drawable/Drawable;
    :pswitch_7
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getOpenPgpApiProviderIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 121
    .restart local v1    # "providerIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, p3, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessageEncryptedButIncomplete(Lcom/fsck/k9/mailstore/MessageViewInfo;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 128
    .end local v1    # "providerIcon":Landroid/graphics/drawable/Drawable;
    :pswitch_8
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getOpenPgpApiProviderIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 129
    .restart local v1    # "providerIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p3, Lcom/fsck/k9/mailstore/MessageViewInfo;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->hasReplacementData()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 130
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->showMessageCryptoWarning(Lcom/fsck/k9/ui/messageview/MessageTopView;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;I)V

    goto :goto_2

    .line 133
    :cond_5
    invoke-virtual {p1, p3, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessageCryptoErrorView(Lcom/fsck/k9/mailstore/MessageViewInfo;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 139
    .end local v1    # "providerIcon":Landroid/graphics/drawable/Drawable;
    :pswitch_9
    invoke-virtual {p1, p3}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showCryptoProviderNotConfigured(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    goto :goto_2

    .line 151
    :pswitch_a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Displaying message while in loading state!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 191
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_2

    .line 192
    if-eq p2, v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;->restartMessageCryptoProcessing()V

    goto :goto_0

    .line 197
    :cond_2
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_3

    .line 198
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->overrideCryptoWarning:Z

    if-nez v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->overrideCryptoWarning:Z

    .line 203
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;->redisplayMessage()V

    goto :goto_0

    .line 205
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "got an activity result that wasn\'t meant for us. this is a bug!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClickConfigureProvider()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->reloadOnResumeWithoutRecreateFlag:Z

    .line 281
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;->showCryptoConfigDialog()V

    .line 282
    return-void
.end method

.method public onClickRetryCryptoOperation()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;->restartMessageCryptoProcessing()V

    .line 240
    return-void
.end method

.method public onClickShowCryptoKey()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getOpenPgpSigningKeyIntentIfAny()Landroid/app/PendingIntent;

    move-result-object v8

    .line 229
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v8, :cond_0

    .line 230
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    .line 231
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 230
    invoke-interface/range {v0 .. v6}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;->startPendingIntentForCryptoPresenter(Landroid/content/IntentSender;Ljava/lang/Integer;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v7

    .line 234
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "SendIntentException"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onClickShowCryptoWarningDetails()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getOpenPgpInsecureWarningPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    .line 250
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v8, :cond_0

    .line 251
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    .line 252
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 251
    invoke-interface/range {v0 .. v6}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;->startPendingIntentForCryptoPresenter(Landroid/content/IntentSender;Ljava/lang/Integer;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v7

    .line 255
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "SendIntentException"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onClickShowMessageOverrideWarning()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->overrideCryptoWarning:Z

    .line 244
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;->redisplayMessage()V

    .line 245
    return-void
.end method

.method public onCryptoClick()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    if-nez v1, :cond_0

    .line 187
    :goto_0
    :pswitch_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 175
    invoke-static {v1}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->fromResultAnnotation(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    move-result-object v0

    .line 176
    .local v0, "displayStatus":Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    sget-object v1, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$1;->$SwitchMap$com$fsck$k9$view$MessageCryptoDisplayStatus:[I

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 184
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->displayCryptoInfoDialog(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-direct {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->launchPendingIntent(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->reloadOnResumeWithoutRecreateFlag:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->reloadOnResumeWithoutRecreateFlag:Z

    .line 58
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;->restartMessageCryptoProcessing()V

    .line 60
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const-string v0, "overrideCryptoWarning"

    iget-boolean v1, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->overrideCryptoWarning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    return-void
.end method
