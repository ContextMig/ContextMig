.class public Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;
.super Ljava/lang/Object;
.source "ComposeCryptoStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComposeCryptoStatusBuilder"
.end annotation


# instance fields
.field private cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

.field private cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

.field private enablePgpInline:Ljava/lang/Boolean;

.field private openPgpKeyId:Ljava/lang/Long;

.field private preferEncryptMutual:Ljava/lang/Boolean;

.field private recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    .locals 5

    .prologue
    .line 223
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    if-nez v3, :cond_0

    .line 224
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "cryptoProviderState must be set!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    if-nez v3, :cond_1

    .line 227
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "crypto mode must be set!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->recipients:Ljava/util/List;

    if-nez v3, :cond_2

    .line 230
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "recipients must be set!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 232
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->enablePgpInline:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    .line 233
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "enablePgpInline must be set!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 235
    :cond_3
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->preferEncryptMutual:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    .line 236
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "preferEncryptMutual must be set!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 239
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "recipientAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->recipients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 241
    .local v0, "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    iget-object v4, v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v0    # "recipient":Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    :cond_5
    new-instance v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-direct {v2}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;-><init>()V

    .line 245
    .local v2, "result":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-static {v2, v3}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->access$002(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 246
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-static {v2, v3}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->access$102(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 247
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->access$202(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;[Ljava/lang/String;)[Ljava/lang/String;

    .line 248
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->openPgpKeyId:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->access$302(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;Ljava/lang/Long;)Ljava/lang/Long;

    .line 249
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->enablePgpInline:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->access$402(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;Z)Z

    .line 250
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->preferEncryptMutual:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->access$502(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;Z)Z

    .line 251
    return-object v2
.end method

.method public setCryptoMode(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;
    .locals 0
    .param p1, "cryptoMode"    # Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 199
    return-object p0
.end method

.method public setCryptoProviderState(Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;
    .locals 0
    .param p1, "cryptoProviderState"    # Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->cryptoProviderState:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 194
    return-object p0
.end method

.method public setEnablePgpInline(Z)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;
    .locals 1
    .param p1, "cryptoEnableCompat"    # Z

    .prologue
    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->enablePgpInline:Ljava/lang/Boolean;

    .line 214
    return-object p0
.end method

.method public setOpenPgpKeyId(Ljava/lang/Long;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;
    .locals 0
    .param p1, "openPgpKeyId"    # Ljava/lang/Long;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->openPgpKeyId:Ljava/lang/Long;

    .line 204
    return-object p0
.end method

.method public setPreferEncryptMutual(Z)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;
    .locals 1
    .param p1, "preferEncryptMutual"    # Z

    .prologue
    .line 218
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->preferEncryptMutual:Ljava/lang/Boolean;

    .line 219
    return-object p0
.end method

.method public setRecipients(Ljava/util/List;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/view/RecipientSelectView$Recipient;",
            ">;)",
            "Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/view/RecipientSelectView$Recipient;>;"
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$ComposeCryptoStatusBuilder;->recipients:Ljava/util/List;

    .line 209
    return-object p0
.end method
