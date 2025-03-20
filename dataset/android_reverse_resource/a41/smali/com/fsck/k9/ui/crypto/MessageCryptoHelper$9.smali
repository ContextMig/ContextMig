.class Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;
.super Ljava/lang/Object;
.source "MessageCryptoHelper.java"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getDataSinkForDecryptedData()Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink",
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
    .line 483
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processData(Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 489
    invoke-static {v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->access$100(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/provider/DecryptedFileProvider;->getFileFactory(Landroid/content/Context;)Lcom/fsck/k9/mailstore/util/FileFactory;

    move-result-object v1

    .line 490
    .local v1, "fileFactory":Lcom/fsck/k9/mailstore/util/FileFactory;
    invoke-static {v1, p1}, Lcom/fsck/k9/mailstore/MimePartStreamParser;->parse(Lcom/fsck/k9/mailstore/util/FileFactory;Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 494
    .end local v1    # "fileFactory":Lcom/fsck/k9/mailstore/util/FileFactory;
    :goto_0
    return-object v2

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v2, "Something went wrong while parsing the decrypted MIME part"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic processData(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;->processData(Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object v0

    return-object v0
.end method
