.class Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;
.super Ljava/lang/Object;
.source "MessageCryptoHelper.java"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->connectToCryptoProviderService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBound(Lorg/openintents/openpgp/IOpenPgpService2;)V
    .locals 3
    .param p1, "service"    # Lorg/openintents/openpgp/IOpenPgpService2;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-static {v1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$200(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-static {v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$100(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/fsck/k9/ui/crypto/OpenPgpApiFactory;->createOpenPgpApi(Landroid/content/Context;Lorg/openintents/openpgp/IOpenPgpService2;)Lorg/openintents/openpgp/util/OpenPgpApi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$002(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Lorg/openintents/openpgp/util/OpenPgpApi;)Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 246
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-static {v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$300(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    .line 247
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 252
    const-string v0, "Couldn\'t connect to OpenPgpService"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    return-void
.end method
