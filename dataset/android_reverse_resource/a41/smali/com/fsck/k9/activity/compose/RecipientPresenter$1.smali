.class Lcom/fsck/k9/activity/compose/RecipientPresenter$1;
.super Landroid/os/AsyncTask;
.source "RecipientPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

.field final synthetic val$composeCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

.field final synthetic val$recipientAddresses:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;[Ljava/lang/String;Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->val$recipientAddresses:[Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->val$composeCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-static {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$000(Lcom/fsck/k9/activity/compose/RecipientPresenter;)Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    if-eq v0, v1, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-static {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$200(Lcom/fsck/k9/activity/compose/RecipientPresenter;)Lcom/fsck/k9/message/AutocryptStatusInteractor;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 418
    invoke-static {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$100(Lcom/fsck/k9/activity/compose/RecipientPresenter;)Lorg/openintents/openpgp/util/OpenPgpApi;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->val$recipientAddresses:[Ljava/lang/String;

    .line 417
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/message/AutocryptStatusInteractor;->retrieveCryptoProviderRecipientStatus(Lorg/openintents/openpgp/util/OpenPgpApi;[Ljava/lang/String;)Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 410
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->doInBackground([Ljava/lang/Void;)Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;)V
    .locals 2
    .param p1, "recipientAutocryptStatus"    # Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .prologue
    .line 423
    if-eqz p1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->val$composeCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v1, p1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->withRecipientAutocryptStatus(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$302(Lcom/fsck/k9/activity/compose/RecipientPresenter;Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-static {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$400(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V

    .line 430
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->val$composeCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$302(Lcom/fsck/k9/activity/compose/RecipientPresenter;Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 410
    check-cast p1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$1;->onPostExecute(Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;)V

    return-void
.end method
