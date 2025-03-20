.class Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;
.super Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.source "MessageCryptoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getDataSourceForEncryptedOrInlineData()Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
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
    .line 437
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-direct {p0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public getSizeForProgress()Ljava/lang/Long;
    .locals 8

    .prologue
    .line 440
    iget-object v5, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-static {v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$800(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    move-result-object v5

    iget-object v4, v5, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 441
    .local v4, "part":Lcom/fsck/k9/mail/Part;
    iget-object v5, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-static {v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$800(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    move-result-object v5

    iget-object v1, v5, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    .line 443
    .local v1, "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    sget-object v5, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_ENCRYPTED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    if-ne v1, v5, :cond_0

    .line 444
    invoke-interface {v4}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/Multipart;

    .line 445
    .local v3, "multipartEncryptedMultipart":Lcom/fsck/k9/mail/Multipart;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v2

    .line 446
    .local v2, "encryptionPayloadPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/BodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 452
    .end local v2    # "encryptionPayloadPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v3    # "multipartEncryptedMultipart":Lcom/fsck/k9/mail/Multipart;
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    :goto_0
    instance-of v5, v0, Lcom/fsck/k9/mail/internet/SizeAware;

    if-eqz v5, :cond_2

    .line 453
    check-cast v0, Lcom/fsck/k9/mail/internet/SizeAware;

    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    invoke-interface {v0}, Lcom/fsck/k9/mail/internet/SizeAware;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 455
    :goto_1
    return-object v5

    .line 447
    :cond_0
    sget-object v5, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_INLINE:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    if-ne v1, v5, :cond_1

    .line 448
    invoke-interface {v4}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    goto :goto_0

    .line 450
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "part to stream must be encrypted or inline!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 455
    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    :try_start_0
    iget-object v7, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-static {v7}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$800(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    move-result-object v7

    iget-object v5, v7, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 463
    .local v5, "part":Lcom/fsck/k9/mail/Part;
    iget-object v7, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-static {v7}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$800(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    move-result-object v7

    iget-object v0, v7, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    .line 464
    .local v0, "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    sget-object v7, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_ENCRYPTED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    if-ne v0, v7, :cond_0

    .line 465
    invoke-interface {v5}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/Multipart;

    .line 466
    .local v4, "multipartEncryptedMultipart":Lcom/fsck/k9/mail/Multipart;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v3

    .line 467
    .local v3, "encryptionPayloadPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/BodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v2

    .line 468
    .local v2, "encryptionPayloadBody":Lcom/fsck/k9/mail/Body;
    invoke-interface {v2, p1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 478
    .end local v0    # "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    .end local v2    # "encryptionPayloadBody":Lcom/fsck/k9/mail/Body;
    .end local v3    # "encryptionPayloadPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v4    # "multipartEncryptedMultipart":Lcom/fsck/k9/mail/Multipart;
    .end local v5    # "part":Lcom/fsck/k9/mail/Part;
    :goto_0
    return-void

    .line 469
    .restart local v0    # "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    .restart local v5    # "part":Lcom/fsck/k9/mail/Part;
    :cond_0
    sget-object v7, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_INLINE:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    if-ne v0, v7, :cond_1

    .line 470
    invoke-static {v5}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    .end local v0    # "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    .end local v5    # "part":Lcom/fsck/k9/mail/Part;
    .end local v6    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v7, "MessagingException while writing message to crypto provider"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 473
    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "cryptoPartType":Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    .restart local v5    # "part":Lcom/fsck/k9/mail/Part;
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "part to stream must be encrypted or inline!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
.end method
