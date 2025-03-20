.class Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;
.super Ljava/lang/Object;
.source "MessageCryptoHelper.java"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callAsyncInlineOperation(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback",
        "<",
        "Lcom/fsck/k9/mail/internet/MimeBodyPart;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(II)V
    .locals 4
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 338
    const-string v0, "received progress status: %d / %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-static {v0, p1, p2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$400(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;II)V

    .line 340
    return-void
.end method

.method public onReturn(Landroid/content/Intent;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 2
    .param p1, "result"    # Landroid/content/Intent;
    .param p2, "bodyPart"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$502(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;)Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;

    .line 345
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-static {v0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$602(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Landroid/content/Intent;)Landroid/content/Intent;

    .line 346
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-static {v0, p2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$700(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 347
    return-void
.end method

.method public bridge synthetic onReturn(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 335
    check-cast p2, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;->onReturn(Landroid/content/Intent;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    return-void
.end method
