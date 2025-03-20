.class Lcom/fsck/k9/message/PgpMessageBuilder$1;
.super Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.source "PgpMessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/message/PgpMessageBuilder;->createOpenPgpDataSourceFromBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;Z)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/message/PgpMessageBuilder;

.field final synthetic val$bodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

.field final synthetic val$writeBodyContentOnly:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/message/PgpMessageBuilder;ZLcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/message/PgpMessageBuilder;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/fsck/k9/message/PgpMessageBuilder$1;->this$0:Lcom/fsck/k9/message/PgpMessageBuilder;

    iput-boolean p2, p0, Lcom/fsck/k9/message/PgpMessageBuilder$1;->val$writeBodyContentOnly:Z

    iput-object p3, p0, Lcom/fsck/k9/message/PgpMessageBuilder$1;->val$bodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-direct {p0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    iget-boolean v3, p0, Lcom/fsck/k9/message/PgpMessageBuilder$1;->val$writeBodyContentOnly:Z

    if-eqz v3, :cond_0

    .line 266
    iget-object v3, p0, Lcom/fsck/k9/message/PgpMessageBuilder$1;->val$bodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 267
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    invoke-interface {v0}, Lcom/fsck/k9/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 268
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 275
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/message/PgpMessageBuilder$1;->val$bodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-virtual {v3, p1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
