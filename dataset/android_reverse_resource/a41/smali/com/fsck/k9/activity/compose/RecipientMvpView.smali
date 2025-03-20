.class public Lcom/fsck/k9/activity/compose/RecipientMvpView;
.super Ljava/lang/Object;
.source "RecipientMvpView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;,
        Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;
    }
.end annotation


# static fields
.field private static final CRYPTO_ICON_IN_ANIMATOR:Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

.field private static final CRYPTO_ICON_IN_DURATION:I = 0xe1

.field private static final CRYPTO_ICON_OUT_ANIMATOR:Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

.field private static final CRYPTO_ICON_OUT_DURATION:I = 0xc3

.field private static final VIEW_INDEX_BCC_EXPANDER_HIDDEN:I = 0x1

.field private static final VIEW_INDEX_BCC_EXPANDER_VISIBLE:I = 0x0

.field private static final VIEW_INDEX_HIDDEN:I = -0x1


# instance fields
.field private final activity:Lcom/fsck/k9/activity/MessageCompose;

.field private final bccDivider:Landroid/view/View;

.field private final bccView:Lcom/fsck/k9/view/RecipientSelectView;

.field private final bccWrapper:Landroid/view/View;

.field private final ccDivider:Landroid/view/View;

.field private final ccView:Lcom/fsck/k9/view/RecipientSelectView;

.field private final ccWrapper:Landroid/view/View;

.field private final cryptoSpecialModeIndicator:Lcom/fsck/k9/view/ToolableViewAnimator;

.field private final cryptoStatusView:Lcom/fsck/k9/view/ToolableViewAnimator;

.field private presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

.field private final recipientExpanderContainer:Landroid/widget/ViewAnimator;

.field private final toView:Lcom/fsck/k9/view/RecipientSelectView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;-><init>()V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->CRYPTO_ICON_OUT_ANIMATOR:Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    .line 37
    new-instance v0, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->CRYPTO_ICON_IN_ANIMATOR:Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 5
    .param p1, "activity"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 57
    const v4, 0x7f0c0097

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/view/RecipientSelectView;

    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 58
    const v4, 0x7f0c009c

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/view/RecipientSelectView;

    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 59
    const v4, 0x7f0c00a0

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/view/RecipientSelectView;

    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 60
    const v4, 0x7f0c009a

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccWrapper:Landroid/view/View;

    .line 61
    const v4, 0x7f0c009d

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccDivider:Landroid/view/View;

    .line 62
    const v4, 0x7f0c009e

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccWrapper:Landroid/view/View;

    .line 63
    const v4, 0x7f0c00a1

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccDivider:Landroid/view/View;

    .line 64
    const v4, 0x7f0c0098

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewAnimator;

    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientExpanderContainer:Landroid/widget/ViewAnimator;

    .line 65
    const v4, 0x7f0c0090

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/view/ToolableViewAnimator;

    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoStatusView:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 66
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoStatusView:Lcom/fsck/k9/view/ToolableViewAnimator;

    invoke-virtual {v4, p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v4, 0x7f0c008b

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/view/ToolableViewAnimator;

    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoSpecialModeIndicator:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 68
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoSpecialModeIndicator:Lcom/fsck/k9/view/ToolableViewAnimator;

    invoke-virtual {v4, p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v4, p0}, Lcom/fsck/k9/view/RecipientSelectView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 71
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v4, p0}, Lcom/fsck/k9/view/RecipientSelectView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 72
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v4, p0}, Lcom/fsck/k9/view/RecipientSelectView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    const v4, 0x7f0c0099

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 75
    .local v2, "recipientExpander":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v4, 0x7f0c0096

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 78
    .local v3, "toLabel":Landroid/view/View;
    const v4, 0x7f0c009b

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "ccLabel":Landroid/view/View;
    const v4, 0x7f0c009f

    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "bccLabel":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public varargs addRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 2
    .param p1, "recipientType"    # Lcom/fsck/k9/mail/Message$RecipientType;
    .param p2, "recipients"    # [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .prologue
    .line 185
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$4;->$SwitchMap$com$fsck$k9$mail$Message$RecipientType:[I

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message$RecipientType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p2}, Lcom/fsck/k9/view/RecipientSelectView;->addRecipients([Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p2}, Lcom/fsck/k9/view/RecipientSelectView;->addRecipients([Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p2}, Lcom/fsck/k9/view/RecipientSelectView;->addRecipients([Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    return-void
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
    .line 239
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->getAddresses()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBccRecipients()Ljava/util/List;
    .locals 1
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
    .line 251
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->getObjects()Ljava/util/List;

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
    .line 235
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->getAddresses()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCcRecipients()Ljava/util/List;
    .locals 1
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
    .line 247
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->getObjects()Ljava/util/List;

    move-result-object v0

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
    .line 231
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->getAddresses()[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToRecipients()Ljava/util/List;
    .locals 1
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
    .line 243
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->getObjects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isBccVisible()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCcVisible()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchUserInteractionPendingIntent(Landroid/app/PendingIntent;I)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "requestCode"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/activity/MessageCompose;->launchUserInteractionPendingIntent(Landroid/app/PendingIntent;I)V

    .line 433
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 409
    :goto_0
    return-void

    .line 386
    :sswitch_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onClickToLabel()V

    goto :goto_0

    .line 390
    :sswitch_1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onClickCcLabel()V

    goto :goto_0

    .line 394
    :sswitch_2
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onClickBccLabel()V

    goto :goto_0

    .line 398
    :sswitch_3
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onClickRecipientExpander()V

    goto :goto_0

    .line 402
    :sswitch_4
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onClickCryptoStatus()V

    goto :goto_0

    .line 406
    :sswitch_5
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onClickCryptoSpecialModeIndicator()V

    goto :goto_0

    .line 384
    :sswitch_data_0
    .sparse-switch
        0x7f0c008b -> :sswitch_5
        0x7f0c0090 -> :sswitch_4
        0x7f0c0096 -> :sswitch_0
        0x7f0c0099 -> :sswitch_3
        0x7f0c009b -> :sswitch_1
        0x7f0c009f -> :sswitch_2
    .end sparse-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 362
    if-nez p2, :cond_0

    .line 380
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 368
    :sswitch_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onToFocused()V

    goto :goto_0

    .line 372
    :sswitch_1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCcFocused()V

    goto :goto_0

    .line 376
    :sswitch_2
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onBccFocused()V

    goto :goto_0

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0097 -> :sswitch_0
        0x7f0c009c -> :sswitch_1
        0x7f0c00a0 -> :sswitch_2
    .end sparse-switch
.end method

.method public recipientBccHasUncompletedText()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->hasUncompletedText()Z

    move-result v0

    return v0
.end method

.method public recipientBccTryPerformCompletion()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->tryPerformCompletion()Z

    move-result v0

    return v0
.end method

.method public recipientCcHasUncompletedText()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->hasUncompletedText()Z

    move-result v0

    return v0
.end method

.method public recipientCcTryPerformCompletion()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->tryPerformCompletion()Z

    move-result v0

    return v0
.end method

.method public recipientToHasUncompletedText()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->hasUncompletedText()Z

    move-result v0

    return v0
.end method

.method public recipientToTryPerformCompletion()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->tryPerformCompletion()Z

    move-result v0

    return v0
.end method

.method public requestFocusOnBccField()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->requestFocus()Z

    .line 176
    return-void
.end method

.method public requestFocusOnCcField()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->requestFocus()Z

    .line 172
    return-void
.end method

.method public requestFocusOnToField()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0}, Lcom/fsck/k9/view/RecipientSelectView;->requestFocus()Z

    .line 168
    return-void
.end method

.method public setBccVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 207
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccWrapper:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    return-void

    :cond_0
    move v0, v2

    .line 207
    goto :goto_0

    :cond_1
    move v1, v2

    .line 208
    goto :goto_1
.end method

.method public setCcVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 202
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccWrapper:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    return-void

    :cond_0
    move v0, v2

    .line 202
    goto :goto_0

    :cond_1
    move v1, v2

    .line 203
    goto :goto_1
.end method

.method public setCryptoProvider(Ljava/lang/String;)V
    .locals 2
    .param p1, "openPgpProvider"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setCryptoProvider(Ljava/lang/String;Z)V

    .line 162
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setCryptoProvider(Ljava/lang/String;Z)V

    .line 163
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setCryptoProvider(Ljava/lang/String;Z)V

    .line 164
    return-void
.end method

.method public setFontSizes(Lcom/fsck/k9/FontSizes;I)V
    .locals 1
    .param p1, "fontSizes"    # Lcom/fsck/k9/FontSizes;
    .param p2, "fontSize"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {p1, v0, p2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 180
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {p1, v0, p2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 181
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {p1, v0, p2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 182
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 1
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 437
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 438
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 439
    return-void
.end method

.method public setPresenter(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .prologue
    const/4 v1, 0x0

    .line 86
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V

    .line 90
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V

    .line 91
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V

    .line 145
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    new-instance v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$1;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView$1;-><init>(Lcom/fsck/k9/activity/compose/RecipientMvpView;Lcom/fsck/k9/activity/compose/RecipientPresenter;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V

    .line 112
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    new-instance v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$2;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView$2;-><init>(Lcom/fsck/k9/activity/compose/RecipientMvpView;Lcom/fsck/k9/activity/compose/RecipientPresenter;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V

    .line 129
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    new-instance v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$3;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView$3;-><init>(Lcom/fsck/k9/activity/compose/RecipientMvpView;Lcom/fsck/k9/activity/compose/RecipientPresenter;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V

    goto :goto_0
.end method

.method public setRecipientExpanderVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 212
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 213
    .local v0, "childToDisplay":I
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientExpanderContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientExpanderContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 216
    :cond_0
    return-void

    .line 212
    .end local v0    # "childToDisplay":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRecipientTokensShowCryptoEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->setShowCryptoEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->setShowCryptoEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->setShowCryptoEnabled(Z)V

    .line 157
    return-void
.end method

.method public showBccUncompletedError()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v1}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setError(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method

.method public showCcUncompletedError()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v1}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setError(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method public showContactPicker(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/MessageCompose;->showContactPicker(I)V

    .line 326
    return-void
.end method

.method public showCryptoSpecialMode(Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;)V
    .locals 4
    .param p1, "cryptoSpecialModeDisplayType"    # Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .prologue
    const/4 v1, 0x0

    .line 291
    iget v2, p1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->childIdToDisplay:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 292
    .local v0, "shouldBeHidden":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 293
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoSpecialModeIndicator:Lcom/fsck/k9/view/ToolableViewAnimator;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/ToolableViewAnimator;->setVisibility(I)V

    .line 300
    :goto_1
    return-void

    .end local v0    # "shouldBeHidden":Z
    :cond_0
    move v0, v1

    .line 291
    goto :goto_0

    .line 297
    .restart local v0    # "shouldBeHidden":Z
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoSpecialModeIndicator:Lcom/fsck/k9/view/ToolableViewAnimator;

    invoke-virtual {v2, v1}, Lcom/fsck/k9/view/ToolableViewAnimator;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoSpecialModeIndicator:Lcom/fsck/k9/view/ToolableViewAnimator;

    iget v2, p1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->childIdToDisplay:I

    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 299
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->invalidateOptionsMenu()V

    goto :goto_1
.end method

.method public showCryptoStatus(Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;)V
    .locals 5
    .param p1, "cryptoStatusDisplayType"    # Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 303
    iget v2, p1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->childIdToDisplay:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 304
    .local v0, "shouldBeHidden":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 305
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoStatusView:Lcom/fsck/k9/view/ToolableViewAnimator;

    invoke-virtual {v1}, Lcom/fsck/k9/view/ToolableViewAnimator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    .line 306
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 307
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc3

    .line 308
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView;->CRYPTO_ICON_OUT_ANIMATOR:Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    .line 309
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 310
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 322
    :goto_1
    return-void

    .end local v0    # "shouldBeHidden":Z
    :cond_0
    move v0, v1

    .line 303
    goto :goto_0

    .line 314
    .restart local v0    # "shouldBeHidden":Z
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoStatusView:Lcom/fsck/k9/view/ToolableViewAnimator;

    invoke-virtual {v2, v1}, Lcom/fsck/k9/view/ToolableViewAnimator;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoStatusView:Lcom/fsck/k9/view/ToolableViewAnimator;

    iget v2, p1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->childIdToDisplay:I

    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 316
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoStatusView:Lcom/fsck/k9/view/ToolableViewAnimator;

    invoke-virtual {v1}, Lcom/fsck/k9/view/ToolableViewAnimator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 318
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xe1

    .line 319
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView;->CRYPTO_ICON_IN_ANIMATOR:Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    .line 320
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1
.end method

.method public showErrorContactNoAddress()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f0701c4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    return-void
.end method

.method public showErrorInlineAttach()V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f0701c5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    return-void
.end method

.method public showErrorIsSignOnly()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f0701ca

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    return-void
.end method

.method public showErrorNoKeyConfigured()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f070167

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 354
    return-void
.end method

.method public showErrorOpenPgpConnection()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f0701c6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 346
    return-void
.end method

.method public showErrorOpenPgpIncompatible()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f0701c7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    return-void
.end method

.method public showErrorOpenPgpRetrieveStatus()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f0701c9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 338
    return-void
.end method

.method public showErrorOpenPgpUserInteractionRequired()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f0701c8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    return-void
.end method

.method public showNoRecipientsError()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v1}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070298

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setError(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method public showOpenPgpEnabledErrorDialog(Z)V
    .locals 3
    .param p1, "isGotItDialog"    # Z

    .prologue
    .line 422
    const v1, 0x7f0c008f

    invoke-static {p1, v1}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;->newInstance(ZI)Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;

    move-result-object v0

    .line 423
    .local v0, "dialog":Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "openpgp_error"

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public showOpenPgpEncryptExplanationDialog()V
    .locals 3

    .prologue
    .line 427
    const v1, 0x7f0c008f

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;->newInstance(I)Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;

    move-result-object v0

    .line 428
    .local v0, "dialog":Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "openpgp_description"

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public showOpenPgpInlineDialog(Z)V
    .locals 3
    .param p1, "firstTime"    # Z

    .prologue
    .line 412
    const v1, 0x7f0c008b

    invoke-static {p1, v1}, Lcom/fsck/k9/activity/compose/PgpInlineDialog;->newInstance(ZI)Lcom/fsck/k9/activity/compose/PgpInlineDialog;

    move-result-object v0

    .line 413
    .local v0, "dialog":Lcom/fsck/k9/activity/compose/PgpInlineDialog;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "openpgp_inline"

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/compose/PgpInlineDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public showOpenPgpSignOnlyDialog(Z)V
    .locals 3
    .param p1, "firstTime"    # Z

    .prologue
    .line 417
    const v1, 0x7f0c008b

    invoke-static {p1, v1}, Lcom/fsck/k9/activity/compose/PgpSignOnlyDialog;->newInstance(ZI)Lcom/fsck/k9/activity/compose/PgpSignOnlyDialog;

    move-result-object v0

    .line 418
    .local v0, "dialog":Lcom/fsck/k9/activity/compose/PgpSignOnlyDialog;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "openpgp_signonly"

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/compose/PgpSignOnlyDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public showToUncompletedError()V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    invoke-virtual {v1}, Lcom/fsck/k9/view/RecipientSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setError(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method
