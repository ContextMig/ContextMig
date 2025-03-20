.class public Lcom/fsck/k9/activity/compose/RecipientPresenter;
.super Ljava/lang/Object;
.source "RecipientPresenter.java"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;,
        Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;,
        Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;
    }
.end annotation


# static fields
.field private static final CONTACT_PICKER_BCC:I = 0x3

.field private static final CONTACT_PICKER_CC:I = 0x2

.field private static final CONTACT_PICKER_TO:I = 0x1

.field private static final OPENPGP_USER_INTERACTION:I = 0x4

.field private static final PGP_DIALOG_DISPLAY_THRESHOLD:I = 0x2

.field private static final REQUEST_CODE_AUTOCRYPT:I = 0x5

.field private static final STATE_KEY_BCC_SHOWN:Ljava/lang/String; = "state:bccShown"

.field private static final STATE_KEY_CC_SHOWN:Ljava/lang/String; = "state:ccShown"

.field private static final STATE_KEY_CRYPTO_ENABLE_PGP_INLINE:Ljava/lang/String; = "state:cryptoEnablePgpInline"

.field private static final STATE_KEY_CURRENT_CRYPTO_MODE:Ljava/lang/String; = "state:currentCryptoMode"

.field private static final STATE_KEY_LAST_FOCUSED_TYPE:Ljava/lang/String; = "state:lastFocusedType"


# instance fields
.field private account:Lcom/fsck/k9/Account;

.field private final autocryptStatusInteractor:Lcom/fsck/k9/message/AutocryptStatusInteractor;

.field private cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final composePgpEnableByDefaultDecider:Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;

.field private final composePgpInlineDecider:Lcom/fsck/k9/message/ComposePgpInlineDecider;

.field private final context:Landroid/content/Context;

.field private cryptoEnablePgpInline:Z

.field private cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

.field private currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

.field private hasContactPicker:Ljava/lang/Boolean;

.field private lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

.field private final listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

.field private openPgpProvider:Ljava/lang/String;

.field private openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

.field private pendingUserInteractionIntent:Landroid/app/PendingIntent;

.field private final recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

.field private replyToParser:Lcom/fsck/k9/helper/ReplyToParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/LoaderManager;Lcom/fsck/k9/activity/compose/RecipientMvpView;Lcom/fsck/k9/Account;Lcom/fsck/k9/message/ComposePgpInlineDecider;Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;Lcom/fsck/k9/message/AutocryptStatusInteractor;Lcom/fsck/k9/helper/ReplyToParser;Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loaderManager"    # Landroid/app/LoaderManager;
    .param p3, "recipientMvpView"    # Lcom/fsck/k9/activity/compose/RecipientMvpView;
    .param p4, "account"    # Lcom/fsck/k9/Account;
    .param p5, "composePgpInlineDecider"    # Lcom/fsck/k9/message/ComposePgpInlineDecider;
    .param p6, "composePgpEnableByDefaultDecider"    # Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;
    .param p7, "autocryptStatusInteractor"    # Lcom/fsck/k9/message/AutocryptStatusInteractor;
    .param p8, "replyToParser"    # Lcom/fsck/k9/helper/ReplyToParser;
    .param p9, "recipientsChangedListener"    # Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 91
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 92
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoEnablePgpInline:Z

    .line 101
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 102
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    .line 103
    iput-object p7, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->autocryptStatusInteractor:Lcom/fsck/k9/message/AutocryptStatusInteractor;

    .line 104
    iput-object p5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->composePgpInlineDecider:Lcom/fsck/k9/message/ComposePgpInlineDecider;

    .line 105
    iput-object p6, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->composePgpEnableByDefaultDecider:Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;

    .line 106
    iput-object p8, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->replyToParser:Lcom/fsck/k9/helper/ReplyToParser;

    .line 107
    iput-object p9, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    .line 109
    invoke-virtual {p3, p0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setPresenter(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V

    .line 110
    invoke-virtual {p3, p2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 111
    invoke-virtual {p0, p4}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onSwitchAccount(Lcom/fsck/k9/Account;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/compose/RecipientPresenter;)Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/compose/RecipientPresenter;)Lorg/openintents/openpgp/util/OpenPgpApi;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getOpenPgpApi()Lorg/openintents/openpgp/util/OpenPgpApi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/compose/RecipientPresenter;)Lcom/fsck/k9/message/AutocryptStatusInteractor;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->autocryptStatusInteractor:Lcom/fsck/k9/message/AutocryptStatusInteractor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fsck/k9/activity/compose/RecipientPresenter;Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;
    .param p1, "x1"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->redrawCachedCryptoStatusIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/compose/RecipientPresenter;)Lcom/fsck/k9/activity/compose/RecipientMvpView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderBindOrCheckPermission()V

    return-void
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/compose/RecipientPresenter;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoProviderError(Ljava/lang/Exception;)V

    return-void
.end method

.method private varargs addCcAddresses([Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "ccAddresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 251
    array-length v0, p1

    if-lez v0, :cond_0

    .line 252
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-direct {p0, v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addRecipientsFromAddresses(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 253
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCcVisibility(Z)V

    .line 254
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 256
    :cond_0
    return-void
.end method

.method private addRecipientFromContactUri(Lcom/fsck/k9/mail/Message$RecipientType;Landroid/net/Uri;)V
    .locals 7
    .param p1, "recipientType"    # Lcom/fsck/k9/mail/Message$RecipientType;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 524
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpProvider:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;ZLcom/fsck/k9/mail/Message$RecipientType;)V

    .line 539
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$3;->startLoading()V

    .line 540
    return-void
.end method

.method private varargs addRecipientsFromAddresses(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
    .locals 6
    .param p1, "recipientType"    # Lcom/fsck/k9/mail/Message$RecipientType;
    .param p2, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 511
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$2;

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpProvider:Ljava/lang/String;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/activity/compose/RecipientPresenter$2;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;Landroid/content/Context;Ljava/lang/String;[Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/mail/Message$RecipientType;)V

    .line 520
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$2;->startLoading()V

    .line 521
    return-void
.end method

.method private varargs addToAddresses([Lcom/fsck/k9/mail/Address;)V
    .locals 1
    .param p1, "toAddresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 247
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-direct {p0, v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addRecipientsFromAddresses(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 248
    return-void
.end method

.method private static addressFromStringArray(Ljava/util/List;)[Lcom/fsck/k9/mail/Address;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/fsck/k9/mail/Address;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Address;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, "addressStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    .end local v0    # "addressStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/fsck/k9/mail/Address;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/fsck/k9/mail/Address;

    return-object v2
.end method

.method private static addressFromStringArray([Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .locals 1
    .param p0, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addressFromStringArray(Ljava/util/List;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method private checkAndIncrementPgpInlineDialogCounter()Z
    .locals 2

    .prologue
    .line 930
    invoke-static {}, Lcom/fsck/k9/K9;->getPgpInlineDialogCounter()I

    move-result v0

    .line 931
    .local v0, "pgpInlineDialogCounter":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 932
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/fsck/k9/K9;->setPgpInlineDialogCounter(I)V

    .line 933
    invoke-static {}, Lcom/fsck/k9/K9;->saveSettingsAsync()V

    .line 934
    const/4 v1, 0x1

    .line 936
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkAndIncrementPgpSignOnlyDialogCounter()Z
    .locals 2

    .prologue
    .line 940
    invoke-static {}, Lcom/fsck/k9/K9;->getPgpSignOnlyDialogCounter()I

    move-result v0

    .line 941
    .local v0, "pgpSignOnlyDialogCounter":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 942
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/fsck/k9/K9;->setPgpSignOnlyDialogCounter(I)V

    .line 943
    invoke-static {}, Lcom/fsck/k9/K9;->saveSettingsAsync()V

    .line 944
    const/4 v1, 0x1

    .line 946
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cryptoProviderBindOrCheckPermission()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 754
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    if-nez v0, :cond_0

    .line 755
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V

    .line 773
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->pendingUserInteractionIntent:Landroid/app/PendingIntent;

    .line 761
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->bindToService()V

    goto :goto_0

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->pendingUserInteractionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->pendingUserInteractionIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x4

    .line 767
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->launchUserInteractionPendingIntent(Landroid/app/PendingIntent;I)V

    .line 768
    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->pendingUserInteractionIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 772
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getOpenPgpApi()Lorg/openintents/openpgp/util/OpenPgpApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/openintents/openpgp/util/OpenPgpApi;->checkPermissionPing(Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;)V

    goto :goto_0
.end method

.method private getAllRecipients()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getToRecipients()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getCcRecipients()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getBccRecipients()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    return-object v0
.end method

.method private getOpenPgpApi()Lorg/openintents/openpgp/util/OpenPgpApi;
    .locals 3

    .prologue
    .line 849
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 850
    :cond_0
    const-string v0, "obtained openpgpapi object, but service is not bound! inconsistent state?"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    :cond_1
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpApi;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    invoke-virtual {v2}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->getService()Lorg/openintents/openpgp/IOpenPgpService2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openintents/openpgp/util/OpenPgpApi;-><init>(Landroid/content/Context;Lorg/openintents/openpgp/IOpenPgpService2;)V

    return-object v0
.end method

.method private handleOpenPgpError(Lorg/openintents/openpgp/OpenPgpError;)V
    .locals 5
    .param p1, "error"    # Lorg/openintents/openpgp/OpenPgpError;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 816
    const-string v0, "OpenPGP Api error: %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    invoke-virtual {p1}, Lorg/openintents/openpgp/OpenPgpError;->getErrorId()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 820
    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpProvider:Ljava/lang/String;

    .line 821
    invoke-static {v4}, Lcom/fsck/k9/K9;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorOpenPgpIncompatible()V

    .line 823
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V

    .line 827
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorOpenPgpConnection()V

    goto :goto_0
.end method

.method private hasContactPicker()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 674
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->hasContactPicker:Ljava/lang/Boolean;

    if-nez v4, :cond_1

    .line 675
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v0

    .line 677
    .local v0, "contacts":Lcom/fsck/k9/helper/Contacts;
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 678
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Lcom/fsck/k9/helper/Contacts;->contactPickerIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 679
    .local v2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->hasContactPicker:Ljava/lang/Boolean;

    .line 682
    .end local v0    # "contacts":Lcom/fsck/k9/helper/Contacts;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->hasContactPicker:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method

.method private hideEmptyExtendedRecipientFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getCcAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCcVisibility(Z)V

    .line 366
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne v0, v1, :cond_0

    .line 367
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getBccAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setBccVisibility(Z)V

    .line 372
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne v0, v1, :cond_1

    .line 373
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 377
    return-void
.end method

.method private initPgpInlineFromDraftMessage(Lcom/fsck/k9/mail/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 243
    sget-object v0, Lcom/fsck/k9/mail/Flag;->X_DRAFT_OPENPGP_INLINE:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoEnablePgpInline:Z

    .line 244
    return-void
.end method

.method private initRecipientsFromDraftMessage(Lcom/fsck/k9/mail/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 233
    sget-object v2, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addToAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 235
    sget-object v2, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .line 236
    .local v1, "ccRecipients":[Lcom/fsck/k9/mail/Address;
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addCcAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 238
    sget-object v2, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 239
    .local v0, "bccRecipients":[Lcom/fsck/k9/mail/Address;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addBccAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 240
    return-void
.end method

.method private onCryptoProviderError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorOpenPgpConnection()V

    .line 778
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ERROR:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V

    .line 779
    const-string v0, "error connecting to crypto provider!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 781
    return-void
.end method

.method private static recipientTypeFromRequestCode(I)Lcom/fsck/k9/mail/Message$RecipientType;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 596
    packed-switch p0, :pswitch_data_0

    .line 608
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 598
    :pswitch_0
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 604
    :goto_0
    return-object v0

    .line 601
    :pswitch_1
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    goto :goto_0

    .line 604
    :pswitch_2
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static recipientTypeToRequestCode(Lcom/fsck/k9/mail/Message$RecipientType;)I
    .locals 3
    .param p0, "type"    # Lcom/fsck/k9/mail/Message$RecipientType;

    .prologue
    .line 580
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$mail$Message$RecipientType:[I

    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message$RecipientType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 592
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 582
    :pswitch_0
    const/4 v0, 0x1

    .line 588
    :goto_0
    return v0

    .line 585
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 588
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private redrawCachedCryptoStatusIcon()V
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    if-nez v1, :cond_0

    .line 436
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "must have cached crypto status to redraw it!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setRecipientTokensShowCryptoEnabled(Z)V

    .line 441
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->getCryptoStatusDisplayType()Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    move-result-object v0

    .line 442
    .local v0, "cryptoStatusDisplayType":Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showCryptoStatus(Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;)V

    .line 443
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->getCryptoSpecialModeDisplayType()Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showCryptoSpecialMode(Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;)V

    .line 444
    return-void
.end method

.method private setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V
    .locals 2
    .param p1, "state"    # Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 832
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    if-ne p1, v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCryptoProvider(Ljava/lang/String;)V

    .line 838
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 839
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCryptoProvider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupCryptoProvider()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 712
    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpProvider()Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, "openPgpProvider":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 714
    const/4 v1, 0x0

    .line 717
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    invoke-virtual {v4}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->isBound()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v0

    .line 718
    .local v2, "providerIsBound":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpProvider:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 719
    .local v0, "isSameProvider":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 720
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderBindOrCheckPermission()V

    .line 751
    :goto_2
    return-void

    .end local v0    # "isSameProvider":Z
    .end local v2    # "providerIsBound":Z
    :cond_1
    move v2, v3

    .line 717
    goto :goto_0

    .restart local v2    # "providerIsBound":Z
    :cond_2
    move v0, v3

    .line 718
    goto :goto_1

    .line 724
    .restart local v0    # "isSameProvider":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 725
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    invoke-virtual {v3}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->unbindFromService()V

    .line 726
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 729
    :cond_4
    iput-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpProvider:Ljava/lang/String;

    .line 731
    if-nez v1, :cond_5

    .line 732
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V

    goto :goto_2

    .line 736
    :cond_5
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V

    .line 737
    new-instance v3, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    new-instance v5, Lcom/fsck/k9/activity/compose/RecipientPresenter$4;

    invoke-direct {v5, p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$4;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V

    invoke-direct {v3, v4, v1, v5}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;)V

    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 748
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderBindOrCheckPermission()V

    .line 750
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v3, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCryptoProvider(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateRecipientExpanderVisibility()V
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->isCcVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->isBccVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 381
    .local v0, "notBothAreVisible":Z
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setRecipientExpanderVisibility(Z)V

    .line 382
    return-void

    .line 380
    .end local v0    # "notBothAreVisible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs addBccAddresses([Lcom/fsck/k9/mail/Address;)V
    .locals 6
    .param p1, "bccRecipients"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 259
    array-length v5, p1

    if-lez v5, :cond_2

    .line 260
    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-direct {p0, v5, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addRecipientsFromAddresses(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 261
    iget-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getAlwaysBcc()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "bccAddress":Ljava/lang/String;
    iget-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v5}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->isBccVisible()Z

    move-result v0

    .line 265
    .local v0, "alreadyVisible":Z
    array-length v5, p1

    if-ne v5, v3, :cond_3

    aget-object v5, p1, v4

    .line 266
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 267
    .local v2, "singleBccRecipientFromAccount":Z
    :goto_0
    iget-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    if-nez v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    invoke-virtual {v5, v4}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setBccVisibility(Z)V

    .line 268
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 270
    .end local v0    # "alreadyVisible":Z
    .end local v1    # "bccAddress":Ljava/lang/String;
    .end local v2    # "singleBccRecipientFromAccount":Z
    :cond_2
    return-void

    .restart local v0    # "alreadyVisible":Z
    .restart local v1    # "bccAddress":Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 266
    goto :goto_0
.end method

.method public asyncUpdateCryptoStatus()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 385
    iput-object v7, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 387
    iget-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    sget-object v6, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 388
    invoke-virtual {v5}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->isBound()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 389
    .local v2, "isOkStateButLostConnection":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 390
    sget-object v5, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->LOST_CONNECTION:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-direct {p0, v5}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V

    .line 391
    iput-object v7, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->pendingUserInteractionIntent:Landroid/app/PendingIntent;

    .line 394
    :cond_1
    iget-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getCryptoKey()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 395
    .local v0, "accountCryptoKey":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 396
    const/4 v0, 0x0

    .line 399
    :cond_2
    new-instance v5, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;

    invoke-direct {v5}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;-><init>()V

    iget-object v6, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 400
    invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 401
    invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->setCryptoMode(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoEnablePgpInline:Z

    .line 402
    invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->setEnablePgpInline(Z)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;

    move-result-object v5

    .line 403
    invoke-virtual {v5, v4}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->setPreferEncryptMutual(Z)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;

    move-result-object v5

    .line 404
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getAllRecipients()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->setRecipients(Ljava/util/List;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;

    move-result-object v5

    .line 405
    invoke-virtual {v5, v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->setOpenPgpKeyId(Ljava/lang/Long;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;

    move-result-object v5

    .line 406
    invoke-virtual {v5}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->build()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    move-result-object v1

    .line 408
    .local v1, "composeCryptoStatus":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->getRecipientAddresses()[Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "recipientAddresses":[Ljava/lang/String;
    new-instance v5, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;[Ljava/lang/String;Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)V

    new-array v4, v4, [Ljava/lang/Void;

    .line 431
    invoke-virtual {v5, v4}, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 432
    return-void

    .end local v0    # "accountCryptoKey":Ljava/lang/Long;
    .end local v1    # "composeCryptoStatus":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .end local v2    # "isOkStateButLostConnection":Z
    .end local v3    # "recipientAddresses":[Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 388
    goto :goto_0
.end method

.method public builderSetProperties(Lcom/fsck/k9/message/MessageBuilder;)V
    .locals 2
    .param p1, "messageBuilder"    # Lcom/fsck/k9/message/MessageBuilder;

    .prologue
    .line 856
    instance-of v0, p1, Lcom/fsck/k9/message/PgpMessageBuilder;

    if-eqz v0, :cond_0

    .line 857
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PpgMessageBuilder must be called with ComposeCryptoStatus argument!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getToAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/message/MessageBuilder;->setTo(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;

    .line 861
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getCcAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/message/MessageBuilder;->setCc(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;

    .line 862
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getBccAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/message/MessageBuilder;->setBcc(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;

    .line 863
    return-void
.end method

.method public builderSetProperties(Lcom/fsck/k9/message/PgpMessageBuilder;Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)V
    .locals 1
    .param p1, "pgpMessageBuilder"    # Lcom/fsck/k9/message/PgpMessageBuilder;
    .param p2, "cryptoStatus"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getToAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/message/PgpMessageBuilder;->setTo(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;

    .line 867
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getCcAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/message/PgpMessageBuilder;->setCc(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;

    .line 868
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getBccAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/message/PgpMessageBuilder;->setBcc(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;

    .line 870
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getOpenPgpApi()Lorg/openintents/openpgp/util/OpenPgpApi;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/message/PgpMessageBuilder;->setOpenPgpApi(Lorg/openintents/openpgp/util/OpenPgpApi;)V

    .line 871
    invoke-virtual {p1, p2}, Lcom/fsck/k9/message/PgpMessageBuilder;->setCryptoStatus(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)V

    .line 872
    return-void
.end method

.method public checkRecipientsOkForSending()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 137
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientToTryPerformCompletion()Z

    .line 138
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientCcTryPerformCompletion()Z

    .line 139
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientBccTryPerformCompletion()Z

    .line 141
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientToHasUncompletedText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showToUncompletedError()V

    .line 161
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientCcHasUncompletedText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showCcUncompletedError()V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientBccHasUncompletedText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showBccUncompletedError()V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getToAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getCcAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getBccAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showNoRecipientsError()V

    goto :goto_0

    .line 161
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBccAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getBccAddresses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCcAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getCcAddresses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCachedCryptoStatus()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    return-object v0
.end method

.method public getToAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->getToAddresses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initFromDraftMessage(Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->initRecipientsFromDraftMessage(Lcom/fsck/k9/mail/Message;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->initPgpInlineFromDraftMessage(Lcom/fsck/k9/mail/Message;)V

    .line 230
    return-void
.end method

.method public initFromMailto(Lcom/fsck/k9/helper/MailTo;)V
    .locals 1
    .param p1, "mailTo"    # Lcom/fsck/k9/helper/MailTo;

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/fsck/k9/helper/MailTo;->getTo()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addToAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 188
    invoke-virtual {p1}, Lcom/fsck/k9/helper/MailTo;->getCc()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addCcAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 189
    invoke-virtual {p1}, Lcom/fsck/k9/helper/MailTo;->getBcc()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addBccAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 190
    return-void
.end method

.method public initFromReplyToMessage(Lcom/fsck/k9/mail/Message;Z)V
    .locals 5
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "isReplyAll"    # Z

    .prologue
    .line 165
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->replyToParser:Lcom/fsck/k9/helper/ReplyToParser;

    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lcom/fsck/k9/Account;

    .line 166
    invoke-virtual {v3, p1, v4}, Lcom/fsck/k9/helper/ReplyToParser;->getRecipientsToReplyAllTo(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;

    move-result-object v0

    .line 169
    .local v0, "replyToAddresses":Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;
    :goto_0
    iget-object v3, v0, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;->to:[Lcom/fsck/k9/mail/Address;

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addToAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 170
    iget-object v3, v0, Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;->cc:[Lcom/fsck/k9/mail/Address;

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addCcAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 172
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->composePgpInlineDecider:Lcom/fsck/k9/message/ComposePgpInlineDecider;

    invoke-virtual {v3, p1}, Lcom/fsck/k9/message/ComposePgpInlineDecider;->shouldReplyInline(Lcom/fsck/k9/mail/Message;)Z

    move-result v2

    .line 173
    .local v2, "shouldSendAsPgpInline":Z
    if-eqz v2, :cond_0

    .line 174
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoEnablePgpInline:Z

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->composePgpEnableByDefaultDecider:Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;

    invoke-virtual {v3, p1}, Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;->shouldEncryptByDefault(Lcom/fsck/k9/mail/Message;)Z

    move-result v1

    .line 178
    .local v1, "shouldEnablePgpByDefault":Z
    if-eqz v1, :cond_2

    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    :goto_1
    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 179
    return-void

    .line 166
    .end local v0    # "replyToAddresses":Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;
    .end local v1    # "shouldEnablePgpByDefault":Z
    .end local v2    # "shouldSendAsPgpInline":Z
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->replyToParser:Lcom/fsck/k9/helper/ReplyToParser;

    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lcom/fsck/k9/Account;

    .line 167
    invoke-virtual {v3, p1, v4}, Lcom/fsck/k9/helper/ReplyToParser;->getRecipientsToReplyTo(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;

    move-result-object v0

    goto :goto_0

    .line 178
    .restart local v0    # "replyToAddresses":Lcom/fsck/k9/helper/ReplyToParser$ReplyToAddresses;
    .restart local v1    # "shouldEnablePgpByDefault":Z
    .restart local v2    # "shouldSendAsPgpInline":Z
    :cond_2
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    goto :goto_1
.end method

.method public initFromSendOrViewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "extraEmail":[Ljava/lang/String;
    const-string v3, "android.intent.extra.CC"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "extraCc":[Ljava/lang/String;
    const-string v3, "android.intent.extra.BCC"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "extraBcc":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 198
    invoke-static {v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addressFromStringArray([Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addToAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 201
    :cond_0
    if-eqz v1, :cond_1

    .line 202
    invoke-static {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addressFromStringArray([Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addCcAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 205
    :cond_1
    if-eqz v0, :cond_2

    .line 206
    invoke-static {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addressFromStringArray([Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addBccAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 208
    :cond_2
    return-void
.end method

.method public initFromTrustIdAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "trustId"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {p1}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addToAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 183
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 184
    return-void
.end method

.method public isForceTextMessageFormat()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoEnablePgpInline:Z

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->unbindFromService()V

    .line 845
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 846
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 560
    packed-switch p1, :pswitch_data_0

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 564
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 567
    invoke-static {p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientTypeFromRequestCode(I)Lcom/fsck/k9/mail/Message$RecipientType;

    move-result-object v0

    .line 568
    .local v0, "recipientType":Lcom/fsck/k9/mail/Message$RecipientType;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addRecipientFromContactUri(Lcom/fsck/k9/mail/Message$RecipientType;Landroid/net/Uri;)V

    goto :goto_0

    .line 571
    .end local v0    # "recipientType":Lcom/fsck/k9/mail/Message$RecipientType;
    :pswitch_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderBindOrCheckPermission()V

    goto :goto_0

    .line 574
    :pswitch_2
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    goto :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onBccFocused()V
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 552
    return-void
.end method

.method onBccTokenAdded()V
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 487
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;->onRecipientsChanged()V

    .line 488
    return-void
.end method

.method onBccTokenChanged()V
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 497
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;->onRecipientsChanged()V

    .line 498
    return-void
.end method

.method onBccTokenRemoved()V
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 492
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;->onRecipientsChanged()V

    .line 493
    return-void
.end method

.method onCcFocused()V
    .locals 1

    .prologue
    .line 547
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 548
    return-void
.end method

.method onCcTokenAdded()V
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 472
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;->onRecipientsChanged()V

    .line 473
    return-void
.end method

.method onCcTokenChanged()V
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 482
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;->onRecipientsChanged()V

    .line 483
    return-void
.end method

.method onCcTokenRemoved()V
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 477
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;->onRecipientsChanged()V

    .line 478
    return-void
.end method

.method onClickBccLabel()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->requestFocusOnBccField()V

    .line 355
    return-void
.end method

.method onClickCcLabel()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->requestFocusOnCcField()V

    .line 351
    return-void
.end method

.method onClickCryptoSpecialModeIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 950
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    if-ne v0, v1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpSignOnlyDialog(Z)V

    .line 957
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-boolean v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoEnablePgpInline:Z

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpInlineDialog(Z)V

    goto :goto_0

    .line 955
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This icon should not be clickable while no special mode is active!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onClickCryptoStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 618
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$RecipientPresenter$CryptoProviderState:[I

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 664
    :goto_0
    return-void

    .line 620
    :pswitch_0
    const-string v1, "click on crypto status while unconfigured - this should not really happen?!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 623
    :pswitch_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getCurrentCachedCryptoStatus()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    move-result-object v0

    .line 624
    .local v0, "currentCryptoStatus":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    if-nez v0, :cond_0

    .line 625
    const-string v1, "click on crypto status while crypto status not available - should not really happen?!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->allRecipientsCanEncrypt()Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpEnabledErrorDialog(Z)V

    goto :goto_0

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    if-ne v1, v2, :cond_2

    .line 635
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorIsSignOnly()V

    goto :goto_0

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    if-ne v1, v2, :cond_5

    .line 640
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->hasAutocryptPendingIntent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 641
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 642
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->getAutocryptPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x5

    .line 641
    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->launchUserInteractionPendingIntent(Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 643
    :cond_3
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->canEncryptAndIsMutual()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 644
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    goto :goto_0

    .line 646
    :cond_4
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    goto :goto_0

    .line 651
    :cond_5
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->canEncryptAndIsMutual()Z

    move-result v1

    if-nez v1, :cond_6

    .line 652
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    goto :goto_0

    .line 656
    :cond_6
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    goto :goto_0

    .line 662
    .end local v0    # "currentCryptoStatus":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    :pswitch_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoProviderBindOrCheckPermission()V

    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method onClickRecipientExpander()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 358
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCcVisibility(Z)V

    .line 359
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setBccVisibility(Z)V

    .line 360
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 361
    return-void
.end method

.method onClickToLabel()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->requestFocusOnToField()V

    .line 347
    return-void
.end method

.method public onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V
    .locals 0
    .param p1, "cryptoMode"    # Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 502
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 503
    return-void
.end method

.method public onCryptoPgpClickDisable()V
    .locals 1

    .prologue
    .line 921
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    .line 922
    return-void
.end method

.method public onCryptoPgpInlineChanged(Z)V
    .locals 0
    .param p1, "enablePgpInline"    # Z

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoEnablePgpInline:Z

    .line 507
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 508
    return-void
.end method

.method public onCryptoPgpSignOnlyDisabled()V
    .locals 1

    .prologue
    .line 925
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoPgpInlineChanged(Z)V

    .line 926
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    .line 927
    return-void
.end method

.method public onMenuAddFromContacts()V
    .locals 2

    .prologue
    .line 555
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientTypeToRequestCode(Lcom/fsck/k9/mail/Message$RecipientType;)I

    move-result v0

    .line 556
    .local v0, "requestCode":I
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showContactPicker(I)V

    .line 557
    return-void
.end method

.method public onMenuSetEnableEncryption(Z)V
    .locals 2
    .param p1, "enableEncryption"    # Z

    .prologue
    .line 897
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    if-nez v0, :cond_0

    .line 898
    const-string v0, "Received crypto button press while status wasn\'t initialized?"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    :goto_0
    return-void

    .line 901
    :cond_0
    if-eqz p1, :cond_3

    .line 902
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->allRecipientsCanEncrypt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    .line 904
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpEnabledErrorDialog(Z)V

    goto :goto_0

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->canEncryptAndIsMutual()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    goto :goto_0

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpEncryptExplanationDialog()V

    .line 909
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    goto :goto_0

    .line 912
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->canEncryptAndIsMutual()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    goto :goto_0

    .line 915
    :cond_4
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    goto :goto_0
.end method

.method public onMenuSetPgpInline(Z)V
    .locals 3
    .param p1, "enablePgpInline"    # Z

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoPgpInlineChanged(Z)V

    .line 876
    if-eqz p1, :cond_0

    .line 877
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->checkAndIncrementPgpInlineDialogCounter()Z

    move-result v0

    .line 878
    .local v0, "shouldShowPgpInlineDialog":Z
    if-eqz v0, :cond_0

    .line 879
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpInlineDialog(Z)V

    .line 882
    .end local v0    # "shouldShowPgpInlineDialog":Z
    :cond_0
    return-void
.end method

.method public onMenuSetSignOnly(Z)V
    .locals 3
    .param p1, "enableSignOnly"    # Z

    .prologue
    .line 885
    if-eqz p1, :cond_1

    .line 886
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    .line 887
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->checkAndIncrementPgpSignOnlyDialogCounter()Z

    move-result v0

    .line 888
    .local v0, "shouldShowPgpSignOnlyDialog":Z
    if-eqz v0, :cond_0

    .line 889
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpSignOnlyDialog(Z)V

    .line 894
    .end local v0    # "shouldShowPgpSignOnlyDialog":Z
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoModeChanged(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)V

    goto :goto_0
.end method

.method public onNonRecipientFieldFocused()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->isAlwaysShowCcBcc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->hideEmptyExtendedRecipientFields()V

    .line 615
    :cond_0
    return-void
.end method

.method public onPgpPermissionCheckResult(Landroid/content/Intent;)V
    .locals 4
    .param p1, "result"    # Landroid/content/Intent;

    .prologue
    .line 785
    const-string v2, "result_code"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 786
    .local v1, "resultCode":I
    packed-switch v1, :pswitch_data_0

    .line 799
    const-string v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 800
    const-string v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpError;

    .line 801
    .local v0, "error":Lorg/openintents/openpgp/OpenPgpError;
    if-eqz v0, :cond_0

    .line 802
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->handleOpenPgpError(Lorg/openintents/openpgp/OpenPgpError;)V

    .line 813
    .end local v0    # "error":Lorg/openintents/openpgp/OpenPgpError;
    :goto_0
    return-void

    .line 788
    :pswitch_0
    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V

    goto :goto_0

    .line 792
    :pswitch_1
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorOpenPgpUserInteractionRequired()V

    .line 793
    const-string v2, "intent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->pendingUserInteractionIntent:Landroid/app/PendingIntent;

    .line 794
    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ERROR:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V

    goto :goto_0

    .line 804
    .restart local v0    # "error":Lorg/openintents/openpgp/OpenPgpError;
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorOpenPgpConnection()V

    .line 805
    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ERROR:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V

    goto :goto_0

    .line 808
    .end local v0    # "error":Lorg/openintents/openpgp/OpenPgpError;
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorOpenPgpConnection()V

    .line 809
    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ERROR:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)V

    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v13, 0x7f0c013a

    const v12, 0x7f0c0139

    const v11, 0x7f0c0138

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getCurrentCachedCryptoStatus()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    move-result-object v0

    .line 274
    .local v0, "currentCryptoStatus":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isProviderStateOk()Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v9

    .line 275
    .local v1, "isCryptoConfigured":Z
    :goto_0
    if-eqz v1, :cond_7

    .line 276
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v2

    .line 277
    .local v2, "isEncrypting":Z
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    if-nez v2, :cond_3

    move v8, v9

    :goto_1
    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpSupportSignOnly()Z

    move-result v7

    .line 281
    .local v7, "showSignOnly":Z
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSignOnly()Z

    move-result v3

    .line 282
    .local v3, "isSignOnly":Z
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    if-eqz v7, :cond_4

    if-nez v3, :cond_4

    move v8, v9

    :goto_2
    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    const v8, 0x7f0c013b

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    if-eqz v7, :cond_5

    if-eqz v3, :cond_5

    move v8, v9

    :goto_3
    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled()Z

    move-result v5

    .line 286
    .local v5, "pgpInlineModeEnabled":Z
    if-nez v2, :cond_0

    if-eqz v3, :cond_6

    :cond_0
    if-nez v5, :cond_6

    move v6, v9

    .line 287
    .local v6, "showPgpInlineEnable":Z
    :goto_4
    const v8, 0x7f0c013c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 288
    const v8, 0x7f0c013d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 298
    .end local v2    # "isEncrypting":Z
    .end local v3    # "isSignOnly":Z
    .end local v5    # "pgpInlineModeEnabled":Z
    .end local v6    # "showPgpInlineEnable":Z
    .end local v7    # "showSignOnly":Z
    :goto_5
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->hasContactPicker()Z

    move-result v8

    if-nez v8, :cond_8

    move v4, v9

    .line 299
    .local v4, "noContactPickerAvailable":Z
    :goto_6
    if-eqz v4, :cond_1

    .line 300
    const v8, 0x7f0c0134

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 302
    :cond_1
    return-void

    .end local v1    # "isCryptoConfigured":Z
    .end local v4    # "noContactPickerAvailable":Z
    :cond_2
    move v1, v10

    .line 274
    goto :goto_0

    .restart local v1    # "isCryptoConfigured":Z
    .restart local v2    # "isEncrypting":Z
    :cond_3
    move v8, v10

    .line 277
    goto :goto_1

    .restart local v3    # "isSignOnly":Z
    .restart local v7    # "showSignOnly":Z
    :cond_4
    move v8, v10

    .line 282
    goto :goto_2

    :cond_5
    move v8, v10

    .line 283
    goto :goto_3

    .restart local v5    # "pgpInlineModeEnabled":Z
    :cond_6
    move v6, v10

    .line 286
    goto :goto_4

    .line 290
    .end local v2    # "isEncrypting":Z
    .end local v3    # "isSignOnly":Z
    .end local v5    # "pgpInlineModeEnabled":Z
    .end local v7    # "showSignOnly":Z
    :cond_7
    const v8, 0x7f0c013c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 291
    const v8, 0x7f0c013d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 292
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 293
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    const v8, 0x7f0c013b

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_8
    move v4, v10

    .line 298
    goto :goto_6
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    const-string v1, "state:ccShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCcVisibility(Z)V

    .line 212
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    const-string v1, "state:bccShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setBccVisibility(Z)V

    .line 213
    const-string v0, "state:lastFocusedType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Message$RecipientType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Message$RecipientType;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 214
    const-string v0, "state:currentCryptoMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 215
    const-string v0, "state:cryptoEnablePgpInline"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoEnablePgpInline:Z

    .line 216
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 217
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    const-string v0, "state:ccShown"

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->isCcVisible()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    const-string v0, "state:bccShown"

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->isBccVisible()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    const-string v0, "state:lastFocusedType"

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message$RecipientType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "state:currentCryptoMode"

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "state:cryptoEnablePgpInline"

    iget-boolean v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cryptoEnablePgpInline:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    return-void
.end method

.method public onSwitchAccount(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const/4 v1, 0x1

    .line 305
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lcom/fsck/k9/Account;

    .line 307
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isAlwaysShowCcBcc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCcVisibility(Z)V

    .line 309
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setBccVisibility(Z)V

    .line 310
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->setupCryptoProvider()V

    .line 315
    return-void
.end method

.method public onSwitchIdentity(Lcom/fsck/k9/Identity;)V
    .locals 0
    .param p1, "identity"    # Lcom/fsck/k9/Identity;

    .prologue
    .line 329
    return-void
.end method

.method onToFocused()V
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 544
    return-void
.end method

.method onToTokenAdded()V
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 457
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;->onRecipientsChanged()V

    .line 458
    return-void
.end method

.method onToTokenChanged()V
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 467
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;->onRecipientsChanged()V

    .line 468
    return-void
.end method

.method onToTokenRemoved()V
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 462
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->listener:Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;

    invoke-interface {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;->onRecipientsChanged()V

    .line 463
    return-void
.end method

.method setOpenPgpServiceConnection(Lorg/openintents/openpgp/util/OpenPgpServiceConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "openPgpServiceConnection"    # Lorg/openintents/openpgp/util/OpenPgpServiceConnection;
    .param p2, "cryptoProvider"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 961
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 962
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpProvider:Ljava/lang/String;

    .line 963
    return-void
.end method

.method public shouldSaveRemotely()Z
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->cachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showPgpAttachError(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;)V
    .locals 2
    .param p1, "attachErrorState"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .prologue
    .line 702
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$ComposeCryptoStatus$AttachErrorState:[I

    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 707
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not all error states handled, this is a bug!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 704
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorInlineAttach()V

    .line 709
    return-void

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showPgpSendError(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;)V
    .locals 2
    .param p1, "sendErrorState"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    .prologue
    .line 686
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$ComposeCryptoStatus$SendErrorState:[I

    invoke-virtual {p1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 697
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not all error states handled, this is a bug!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 688
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpEnabledErrorDialog(Z)V

    .line 699
    :goto_0
    return-void

    .line 691
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorOpenPgpConnection()V

    goto :goto_0

    .line 694
    :pswitch_2
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showErrorNoKeyConfigured()V

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
