.class public Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
.super Ljava/lang/Object;
.source "ComposeCryptoStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;,
        Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;,
        Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;
    }
.end annotation


# instance fields
.field private cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

.field private cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

.field private enablePgpInline:Z

.field private openPgpKeyId:Ljava/lang/Long;

.field private preferEncryptMutual:Z

.field private recipientAddresses:[Ljava/lang/String;

.field private recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .param p1, "x1"    # Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    return-object p1
.end method

.method static synthetic access$102(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .param p1, "x1"    # Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    return-object p1
.end method

.method static synthetic access$202(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$402(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->enablePgpInline:Z

    return p1
.end method

.method static synthetic access$502(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->preferEncryptMutual:Z

    return p1
.end method


# virtual methods
.method allRecipientsCanEncrypt()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    iget-object v0, v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->type:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    invoke-virtual {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->canEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canEncryptAndIsMutual()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->allRecipientsCanEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->preferEncryptMutual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    iget-object v0, v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->type:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    invoke-virtual {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isMutual()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAttachErrorStateOrNull()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    if-ne v1, v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-object v0

    .line 298
    :cond_1
    iget-boolean v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->enablePgpInline:Z

    if-eqz v1, :cond_0

    .line 299
    sget-object v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->IS_INLINE:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    goto :goto_0
.end method

.method getAutocryptPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    iget-object v0, v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->intent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method getCryptoSpecialModeDisplayType()Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    if-eq v0, v1, :cond_0

    .line 110
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->NONE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 125
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSignOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->SIGN_ONLY_PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSignOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->allRecipientsCanEncrypt()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    goto :goto_0

    .line 125
    :cond_3
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->NONE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    goto :goto_0
.end method

.method getCryptoStatusDisplayType()Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;
    .locals 3

    .prologue
    .line 38
    sget-object v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$1;->$SwitchMap$com$fsck$k9$activity$compose$RecipientPresenter$CryptoProviderState:[I

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 50
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "all CryptoProviderStates must be handled!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 40
    :pswitch_0
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 102
    :goto_0
    return-object v1

    .line 42
    :pswitch_1
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 53
    :pswitch_3
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Display type must be obtained from provider!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    iget-object v0, v1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->type:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 59
    .local v0, "recipientAutocryptStatusType":Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
    sget-object v1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->ERROR:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    if-ne v0, v1, :cond_1

    .line 60
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 63
    :cond_1
    sget-object v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$1;->$SwitchMap$com$fsck$k9$activity$compose$RecipientPresenter$CryptoMode:[I

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 104
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "all CryptoModes must be handled!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 65
    :pswitch_4
    invoke-virtual {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->canEncrypt()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isConfirmed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_ENABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 69
    :cond_2
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_ENABLED_UNTRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 72
    :cond_3
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_ENABLED_ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 75
    :pswitch_5
    invoke-virtual {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->canEncrypt()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    invoke-virtual {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isConfirmed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_DISABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 79
    :cond_4
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_DISABLED_UNTRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 82
    :cond_5
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_DISABLED_UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 85
    :pswitch_6
    sget-object v1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->NO_RECIPIENTS:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    if-ne v0, v1, :cond_6

    .line 86
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_EMPTY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 87
    :cond_6
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->canEncryptAndIsMutual()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 88
    invoke-virtual {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isConfirmed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_MUTUAL_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 91
    :cond_7
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_MUTUAL:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto :goto_0

    .line 93
    :cond_8
    invoke-virtual {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->canEncrypt()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 94
    invoke-virtual {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isConfirmed()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 95
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_AVAILABLE_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto/16 :goto_0

    .line 97
    :cond_9
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_AVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto/16 :goto_0

    .line 100
    :cond_a
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto/16 :goto_0

    .line 102
    :pswitch_7
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    goto/16 :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 63
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getOpenPgpKeyId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    return-object v0
.end method

.method public getRecipientAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:[Ljava/lang/String;

    return-object v0
.end method

.method public getSendErrorStateOrNull()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    if-eq v0, v1, :cond_0

    .line 275
    sget-object v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->PROVIDER_ERROR:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    .line 286
    :goto_0
    return-object v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSignOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    :cond_1
    sget-object v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->KEY_CONFIG_ERROR:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->allRecipientsCanEncrypt()Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    sget-object v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->ENABLED_ERROR:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    goto :goto_0

    .line 286
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasAutocryptPendingIntent()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    invoke-virtual {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->hasPendingIntent()Z

    move-result v0

    return v0
.end method

.method public hasRecipients()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncryptionEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 134
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    sget-object v5, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    if-ne v4, v5, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v3

    .line 138
    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    sget-object v5, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 139
    .local v0, "isExplicitlyEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    sget-object v5, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    if-eq v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->canEncryptAndIsMutual()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 140
    .local v1, "isMutualAndNotDisabled":Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    .end local v0    # "isExplicitlyEnabled":Z
    .end local v1    # "isMutualAndNotDisabled":Z
    :cond_3
    move v0, v3

    .line 138
    goto :goto_1

    .restart local v0    # "isExplicitlyEnabled":Z
    :cond_4
    move v1, v3

    .line 139
    goto :goto_2
.end method

.method public isPgpInlineModeEnabled()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->enablePgpInline:Z

    return v0
.end method

.method public isProviderStateOk()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSignOnly()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSigningEnabled()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldUsePgpMessageBuilder()Z
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method withRecipientAutocryptStatus(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .locals 2
    .param p1, "recipientAutocryptStatusType"    # Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .prologue
    .line 256
    new-instance v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-direct {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;-><init>()V

    .line 257
    .local v0, "result":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    iput-object v1, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 258
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    iput-object v1, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 259
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:[Ljava/lang/String;

    iput-object v1, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:[Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    iput-object v1, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    .line 261
    iget-boolean v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->enablePgpInline:Z

    iput-boolean v1, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->enablePgpInline:Z

    .line 262
    iput-object p1, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 263
    return-object v0
.end method
