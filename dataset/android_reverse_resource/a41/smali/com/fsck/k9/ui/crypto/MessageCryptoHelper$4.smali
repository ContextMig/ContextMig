.class Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$4;
.super Ljava/lang/Object;
.source "MessageCryptoHelper.java"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getDataSinkForDecryptedInlineData()Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;
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
    .line 360
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$4;->this$0:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processData(Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 365
    .local v1, "decryptedByteOutputStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 366
    new-instance v0, Lcom/fsck/k9/mail/internet/TextBody;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v3}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "body":Lcom/fsck/k9/mail/internet/TextBody;
    new-instance v3, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const-string v4, "text/plain"

    invoke-direct {v3, v0, v4}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v0    # "body":Lcom/fsck/k9/mail/internet/TextBody;
    .end local v1    # "decryptedByteOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v3

    .line 368
    :catch_0
    move-exception v2

    .line 369
    .local v2, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "MessagingException"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic processData(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$4;->processData(Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object v0

    return-object v0
.end method
