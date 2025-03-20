.class Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;
.super Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.source "MessageCryptoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getDataSourceForSignedData(Lcom/fsck/k9/mail/Part;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

.field final synthetic val$signedPart:Lcom/fsck/k9/mail/Part;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Lcom/fsck/k9/mail/Part;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    iput-object p2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;->val$signedPart:Lcom/fsck/k9/mail/Part;

    invoke-direct {p0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 425
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;->val$signedPart:Lcom/fsck/k9/mail/Part;

    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 426
    .local v1, "multipartSignedMultipart":Lcom/fsck/k9/mail/Multipart;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v2

    .line 427
    .local v2, "signatureBodyPart":Lcom/fsck/k9/mail/BodyPart;
    const-string v3, "signed data type: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    invoke-virtual {v2, p1}, Lcom/fsck/k9/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v1    # "multipartSignedMultipart":Lcom/fsck/k9/mail/Multipart;
    .end local v2    # "signatureBodyPart":Lcom/fsck/k9/mail/BodyPart;
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Exception while writing message to crypto provider"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
