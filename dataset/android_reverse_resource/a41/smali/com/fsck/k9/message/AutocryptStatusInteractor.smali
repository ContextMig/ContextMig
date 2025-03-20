.class public Lcom/fsck/k9/message/AutocryptStatusInteractor;
.super Ljava/lang/Object;
.source "AutocryptStatusInteractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;,
        Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/fsck/k9/message/AutocryptStatusInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/fsck/k9/message/AutocryptStatusInteractor;

    invoke-direct {v0}, Lcom/fsck/k9/message/AutocryptStatusInteractor;-><init>()V

    sput-object v0, Lcom/fsck/k9/message/AutocryptStatusInteractor;->INSTANCE:Lcom/fsck/k9/message/AutocryptStatusInteractor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fsck/k9/message/AutocryptStatusInteractor;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fsck/k9/message/AutocryptStatusInteractor;->INSTANCE:Lcom/fsck/k9/message/AutocryptStatusInteractor;

    return-object v0
.end method

.method private getRecipientAutocryptStatusFromIntent(Landroid/content/Intent;)Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
    .locals 4
    .param p1, "result"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 56
    const-string v2, "keys_confirmed"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    .local v0, "allKeysConfirmed":Z
    const-string v2, "autocrypt_status"

    .line 58
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, "autocryptStatus":I
    packed-switch v1, :pswitch_data_0

    .line 83
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "encountered bad autocrypt status number!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :pswitch_0
    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->UNAVAILABLE:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 79
    :goto_0
    return-object v2

    .line 64
    :pswitch_1
    if-eqz v0, :cond_0

    .line 65
    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->DISCOURAGE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    goto :goto_0

    .line 67
    :cond_0
    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->DISCOURAGE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    goto :goto_0

    .line 70
    :pswitch_2
    if-eqz v0, :cond_1

    .line 71
    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->AVAILABLE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    goto :goto_0

    .line 73
    :cond_1
    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->AVAILABLE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    goto :goto_0

    .line 76
    :pswitch_3
    if-eqz v0, :cond_2

    .line 77
    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->RECOMMENDED_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    goto :goto_0

    .line 79
    :cond_2
    sget-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->RECOMMENDED_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public retrieveCryptoProviderRecipientStatus(Lorg/openintents/openpgp/util/OpenPgpApi;[Ljava/lang/String;)Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;
    .locals 10
    .param p1, "openPgpApi"    # Lorg/openintents/openpgp/util/OpenPgpApi;
    .param p2, "recipientAddresses"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 28
    new-instance v1, Landroid/content/Intent;

    const-string v5, "org.openintents.openpgp.action.QUERY_AUTOCRYPT_STATUS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "user_ids"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-object v5, v6

    .line 31
    check-cast v5, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v5, v6}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;)Landroid/content/Intent;

    move-result-object v3

    .line 33
    .local v3, "result":Landroid/content/Intent;
    const-string v5, "result_code"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 50
    new-instance v5, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    sget-object v7, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->ERROR:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    invoke-direct {v5, v7, v6}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;-><init>(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;Landroid/app/PendingIntent;)V

    :goto_0
    return-object v5

    .line 35
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/fsck/k9/message/AutocryptStatusInteractor;->getRecipientAutocryptStatusFromIntent(Landroid/content/Intent;)Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    move-result-object v4

    .line 36
    .local v4, "type":Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
    const-string v5, "intent"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 37
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    invoke-direct {v5, v4, v2}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;-><init>(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 40
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v4    # "type":Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
    :pswitch_1
    const-string v5, "error"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpError;

    .line 41
    .local v0, "error":Lorg/openintents/openpgp/OpenPgpError;
    if-eqz v0, :cond_0

    .line 42
    const-string v5, "OpenPGP API Error #%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpError;->getErrorId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpError;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_1
    new-instance v5, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    sget-object v7, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->ERROR:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    invoke-direct {v5, v7, v6}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;-><init>(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 44
    :cond_0
    const-string v5, "OpenPGP API Unknown Error"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v7}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
