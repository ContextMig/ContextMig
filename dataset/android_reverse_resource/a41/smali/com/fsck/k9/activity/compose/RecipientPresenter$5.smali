.class synthetic Lcom/fsck/k9/activity/compose/RecipientPresenter$5;
.super Ljava/lang/Object;
.source "RecipientPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/RecipientPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fsck$k9$activity$compose$ComposeCryptoStatus$AttachErrorState:[I

.field static final synthetic $SwitchMap$com$fsck$k9$activity$compose$ComposeCryptoStatus$SendErrorState:[I

.field static final synthetic $SwitchMap$com$fsck$k9$activity$compose$RecipientPresenter$CryptoProviderState:[I

.field static final synthetic $SwitchMap$com$fsck$k9$mail$Message$RecipientType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 702
    invoke-static {}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->values()[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$ComposeCryptoStatus$AttachErrorState:[I

    :try_start_0
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$ComposeCryptoStatus$AttachErrorState:[I

    sget-object v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->IS_INLINE:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    .line 686
    :goto_0
    invoke-static {}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->values()[Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$ComposeCryptoStatus$SendErrorState:[I

    :try_start_1
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$ComposeCryptoStatus$SendErrorState:[I

    sget-object v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->ENABLED_ERROR:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$ComposeCryptoStatus$SendErrorState:[I

    sget-object v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->PROVIDER_ERROR:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$ComposeCryptoStatus$SendErrorState:[I

    sget-object v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->KEY_CONFIG_ERROR:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    .line 618
    :goto_3
    invoke-static {}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->values()[Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$RecipientPresenter$CryptoProviderState:[I

    :try_start_4
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$RecipientPresenter$CryptoProviderState:[I

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$RecipientPresenter$CryptoProviderState:[I

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$RecipientPresenter$CryptoProviderState:[I

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->LOST_CONNECTION:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$RecipientPresenter$CryptoProviderState:[I

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$activity$compose$RecipientPresenter$CryptoProviderState:[I

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ERROR:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    .line 580
    :goto_8
    invoke-static {}, Lcom/fsck/k9/mail/Message$RecipientType;->values()[Lcom/fsck/k9/mail/Message$RecipientType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$mail$Message$RecipientType:[I

    :try_start_9
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$mail$Message$RecipientType:[I

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message$RecipientType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$mail$Message$RecipientType:[I

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message$RecipientType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$5;->$SwitchMap$com$fsck$k9$mail$Message$RecipientType:[I

    sget-object v1, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message$RecipientType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    .line 618
    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    .line 686
    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    .line 702
    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
