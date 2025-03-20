.class public Lcom/fsck/k9/message/PgpMessageBuilder;
.super Lcom/fsck/k9/message/MessageBuilder;
.source "PgpMessageBuilder.java"


# static fields
.field private static final REQUEST_USER_INTERACTION:I = 0x1


# instance fields
.field private final autocryptOpenPgpApiInteractor:Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;

.field private final autocryptOperations:Lcom/fsck/k9/autocrypt/AutocryptOperations;

.field private cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

.field private currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

.field private openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/fsck/k9/mail/internet/MessageIdGenerator;Lcom/fsck/k9/mail/BoundaryGenerator;Lcom/fsck/k9/autocrypt/AutocryptOperations;Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageIdGenerator"    # Lcom/fsck/k9/mail/internet/MessageIdGenerator;
    .param p3, "boundaryGenerator"    # Lcom/fsck/k9/mail/BoundaryGenerator;
    .param p4, "autocryptOperations"    # Lcom/fsck/k9/autocrypt/AutocryptOperations;
    .param p5, "autocryptOpenPgpApiInteractor"    # Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/message/MessageBuilder;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/internet/MessageIdGenerator;Lcom/fsck/k9/mail/BoundaryGenerator;)V

    .line 72
    iput-object p4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->autocryptOperations:Lcom/fsck/k9/autocrypt/AutocryptOperations;

    .line 73
    iput-object p5, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->autocryptOpenPgpApiInteractor:Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;

    .line 74
    return-void
.end method

.method private buildOpenPgpApiIntent(ZZZ)Landroid/content/Intent;
    .locals 7
    .param p1, "shouldSign"    # Z
    .param p2, "shouldEncrypt"    # Z
    .param p3, "isPgpInlineMode"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 169
    iget-object v3, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->getOpenPgpKeyId()Ljava/lang/Long;

    move-result-object v0

    .line 170
    .local v0, "openPgpKeyId":Ljava/lang/Long;
    if-eqz p2, :cond_3

    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "encrypt-only is not supported at this point and should never happen!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.openintents.openpgp.action.SIGN_AND_ENCRYPT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "pgpApiIntent":Landroid/content/Intent;
    new-array v2, v6, [J

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 178
    .local v2, "selfEncryptIds":[J
    const-string v3, "key_ids"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0}, Lcom/fsck/k9/message/PgpMessageBuilder;->isDraft()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    const-string v3, "user_ids"

    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v4}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->getRecipientAddresses()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    .end local v2    # "selfEncryptIds":[J
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 189
    const-string v3, "sign_key_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 192
    :cond_2
    const-string v3, "ascii_armor"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    return-object v1

    .line 185
    .end local v1    # "pgpApiIntent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    if-eqz p3, :cond_4

    const-string v3, "org.openintents.openpgp.action.SIGN"

    :goto_1
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "pgpApiIntent":Landroid/content/Intent;
    goto :goto_0

    .end local v1    # "pgpApiIntent":Landroid/content/Intent;
    :cond_4
    const-string v3, "org.openintents.openpgp.action.DETACHED_SIGN"

    goto :goto_1
.end method

.method private createOpenPgpDataSourceFromBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;Z)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .locals 1
    .param p1, "bodyPart"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .param p2, "writeBodyContentOnly"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/fsck/k9/message/PgpMessageBuilder$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/fsck/k9/message/PgpMessageBuilder$1;-><init>(Lcom/fsck/k9/message/PgpMessageBuilder;ZLcom/fsck/k9/mail/internet/MimeBodyPart;)V

    return-object v0
.end method

.method private launchOpenPgpApiIntent(Landroid/content/Intent;ZZZ)Landroid/app/PendingIntent;
    .locals 14
    .param p1, "openPgpIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureOutputPart"    # Z
    .param p3, "capturedOutputPartIs7Bit"    # Z
    .param p4, "writeBodyContentOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v12, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-virtual {v12}, Lcom/fsck/k9/mail/internet/MimeMessage;->toBodyPart()Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object v1

    .line 199
    .local v1, "bodyPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    iget-object v12, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    const-string v13, "Content-Type"

    invoke-virtual {v12, v13}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "contentType":[Ljava/lang/String;
    array-length v12, v2

    if-lez v12, :cond_0

    .line 201
    const-string v12, "Content-Type"

    const/4 v13, 0x0

    aget-object v13, v2, v13

    invoke-virtual {v1, v12, v13}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    move/from16 v0, p4

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/message/PgpMessageBuilder;->createOpenPgpDataSourceFromBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;Z)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    move-result-object v3

    .line 206
    .local v3, "dataSource":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    const/4 v8, 0x0

    .line 207
    .local v8, "pgpResultTempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    const/4 v6, 0x0

    .line 208
    .local v6, "outputStream":Ljava/io/OutputStream;
    if-eqz p2, :cond_1

    .line 210
    :try_start_0
    new-instance v9, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    if-eqz p3, :cond_2

    const-string v12, "7bit"

    :goto_0
    invoke-direct {v9, v12}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v8    # "pgpResultTempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    .local v9, "pgpResultTempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    :try_start_1
    invoke-virtual {v9}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 215
    new-instance v7, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    invoke-direct {v7, v6}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v7, "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    move-object v8, v9

    .line 221
    .end local v9    # "pgpResultTempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    .restart local v8    # "pgpResultTempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    :cond_1
    iget-object v12, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    invoke-virtual {v12, p1, v3, v6}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Ljava/io/OutputStream;)Landroid/content/Intent;

    move-result-object v10

    .line 223
    .local v10, "result":Landroid/content/Intent;
    const-string v12, "result_code"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 254
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "unreachable code segment reached"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 210
    .end local v10    # "result":Landroid/content/Intent;
    :cond_2
    :try_start_2
    const-string v12, "8bit"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v4

    .line 217
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    new-instance v12, Lcom/fsck/k9/mail/MessagingException;

    const-string v13, "could not allocate temp file for storage!"

    invoke-direct {v12, v13, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 225
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v10    # "result":Landroid/content/Intent;
    :pswitch_0
    invoke-direct {p0, v10, v1, v8}, Lcom/fsck/k9/message/PgpMessageBuilder;->mimeBuildMessage(Landroid/content/Intent;Lcom/fsck/k9/mail/internet/MimeBodyPart;Lcom/fsck/k9/mail/internet/BinaryTempFileBody;)V

    .line 226
    const/4 v11, 0x0

    .line 233
    :cond_3
    return-object v11

    .line 229
    :pswitch_1
    const-string v12, "intent"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 230
    .local v11, "returnedPendingIntent":Landroid/app/PendingIntent;
    if-nez v11, :cond_3

    .line 231
    new-instance v12, Lcom/fsck/k9/mail/MessagingException;

    const-string v13, "openpgp api needs user interaction, but returned no pendingintent!"

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 236
    .end local v11    # "returnedPendingIntent":Landroid/app/PendingIntent;
    :pswitch_2
    const-string v12, "error"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lorg/openintents/openpgp/OpenPgpError;

    .line 237
    .local v5, "error":Lorg/openintents/openpgp/OpenPgpError;
    if-nez v5, :cond_4

    .line 238
    new-instance v12, Lcom/fsck/k9/mail/MessagingException;

    const-string v13, "internal openpgp api error"

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 251
    :cond_4
    new-instance v12, Lcom/fsck/k9/mail/MessagingException;

    invoke-virtual {v5}, Lorg/openintents/openpgp/OpenPgpError;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 216
    .end local v5    # "error":Lorg/openintents/openpgp/OpenPgpError;
    .end local v8    # "pgpResultTempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    .end local v10    # "result":Landroid/content/Intent;
    .restart local v9    # "pgpResultTempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    :catch_1
    move-exception v4

    move-object v8, v9

    .end local v9    # "pgpResultTempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    .restart local v8    # "pgpResultTempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    goto :goto_1

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private mimeBuildEncryptedMessage(Lcom/fsck/k9/mail/Body;)V
    .locals 7
    .param p1, "encryptedBodyPart"    # Lcom/fsck/k9/mail/Body;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v3, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 332
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "call to mimeBuildEncryptedMessage while encryption isn\'t enabled!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/message/PgpMessageBuilder;->createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;

    move-result-object v2

    .line 336
    .local v2, "multipartEncrypted":Lcom/fsck/k9/mail/internet/MimeMultipart;
    const-string v3, "encrypted"

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 337
    new-instance v3, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    new-instance v4, Lcom/fsck/k9/mail/internet/TextBody;

    const-string v5, "Version: 1"

    invoke-direct {v4, v5}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    const-string v5, "application/pgp-encrypted"

    invoke-direct {v3, v4, v5}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 338
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const-string v3, "application/octet-stream; name=\"encrypted.asc\""

    invoke-direct {v1, p1, v3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    .line 339
    .local v1, "encryptedPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    const-string v3, "Content-Disposition"

    const-string v4, "inline; filename=\"encrypted.asc\""

    invoke-virtual {v1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v2, v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 341
    iget-object v3, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-static {v3, v2}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 343
    const-string v3, "multipart/encrypted; boundary=\"%s\";\r\n  protocol=\"application/pgp-encrypted\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 345
    invoke-virtual {v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getBoundary()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 343
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "contentType":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private mimeBuildInlineMessage(Lcom/fsck/k9/mail/Body;)V
    .locals 3
    .param p1, "inlineBodyPart"    # Lcom/fsck/k9/mail/Body;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to mimeBuildInlineMessage while pgp/inline isn\'t enabled!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 355
    .local v0, "isCleartextSignature":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 356
    const-string v1, "quoted-printable"

    invoke-interface {p1, v1}, Lcom/fsck/k9/mail/Body;->setEncoding(Ljava/lang/String;)V

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-static {v1, p1}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 359
    return-void

    .line 354
    .end local v0    # "isCleartextSignature":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mimeBuildMessage(Landroid/content/Intent;Lcom/fsck/k9/mail/internet/MimeBodyPart;Lcom/fsck/k9/mail/internet/BinaryTempFileBody;)V
    .locals 3
    .param p1, "result"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bodyPart"    # Lcom/fsck/k9/mail/internet/MimeBodyPart;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "pgpResultTempBody"    # Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 282
    if-nez p3, :cond_3

    .line 283
    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 284
    .local v0, "shouldHaveResultPart":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 285
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "encryption or pgp/inline is enabled, but no output part!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 283
    .end local v0    # "shouldHaveResultPart":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 288
    .restart local v0    # "shouldHaveResultPart":Z
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/fsck/k9/message/PgpMessageBuilder;->mimeBuildSignedMessage(Lcom/fsck/k9/mail/BodyPart;Landroid/content/Intent;)V

    .line 298
    .end local v0    # "shouldHaveResultPart":Z
    :goto_1
    return-void

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 293
    invoke-direct {p0, p3}, Lcom/fsck/k9/message/PgpMessageBuilder;->mimeBuildInlineMessage(Lcom/fsck/k9/mail/Body;)V

    goto :goto_1

    .line 297
    :cond_4
    invoke-direct {p0, p3}, Lcom/fsck/k9/message/PgpMessageBuilder;->mimeBuildEncryptedMessage(Lcom/fsck/k9/mail/Body;)V

    goto :goto_1
.end method

.method private mimeBuildSignedMessage(Lcom/fsck/k9/mail/BodyPart;Landroid/content/Intent;)V
    .locals 9
    .param p1, "signedBodyPart"    # Lcom/fsck/k9/mail/BodyPart;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 301
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v4}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSigningEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 302
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "call to mimeBuildSignedMessage while signing isn\'t enabled!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    :cond_0
    const-string v4, "detached_signature"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 306
    .local v3, "signedData":[B
    if-nez v3, :cond_1

    .line 307
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "didn\'t find expected RESULT_DETACHED_SIGNATURE in api call result"

    invoke-direct {v4, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/message/PgpMessageBuilder;->createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;

    move-result-object v2

    .line 311
    .local v2, "multipartSigned":Lcom/fsck/k9/mail/internet/MimeMultipart;
    const-string v4, "signed"

    invoke-virtual {v2, v4}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v2, p1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 313
    new-instance v4, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    new-instance v5, Lcom/fsck/k9/mailstore/BinaryMemoryBody;

    const-string v6, "7bit"

    invoke-direct {v5, v3, v6}, Lcom/fsck/k9/mailstore/BinaryMemoryBody;-><init>([BLjava/lang/String;)V

    const-string v6, "application/pgp-signature; name=\"signature.asc\""

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 316
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-static {v4, v2}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 318
    const-string v4, "multipart/signed; boundary=\"%s\";\r\n  protocol=\"application/pgp-signature\""

    new-array v5, v8, [Ljava/lang/Object;

    .line 320
    invoke-virtual {v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getBoundary()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 318
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "contentType":Ljava/lang/String;
    const-string v4, "signature_micalg"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 322
    const-string v4, "signature_micalg"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "micAlgParameter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; micalg=\"%s\""

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .end local v1    # "micAlgParameter":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    const-string v5, "Content-Type"

    invoke-virtual {v4, v5, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void

    .line 325
    :cond_2
    const-string v4, "missing micalg parameter for pgp multipart/signed!"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static newInstance()Lcom/fsck/k9/message/PgpMessageBuilder;
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Lcom/fsck/k9/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/fsck/k9/mail/internet/MessageIdGenerator;->getInstance()Lcom/fsck/k9/mail/internet/MessageIdGenerator;

    move-result-object v2

    .line 60
    .local v2, "messageIdGenerator":Lcom/fsck/k9/mail/internet/MessageIdGenerator;
    invoke-static {}, Lcom/fsck/k9/mail/BoundaryGenerator;->getInstance()Lcom/fsck/k9/mail/BoundaryGenerator;

    move-result-object v3

    .line 61
    .local v3, "boundaryGenerator":Lcom/fsck/k9/mail/BoundaryGenerator;
    invoke-static {}, Lcom/fsck/k9/autocrypt/AutocryptOperations;->getInstance()Lcom/fsck/k9/autocrypt/AutocryptOperations;

    move-result-object v4

    .line 62
    .local v4, "autocryptOperations":Lcom/fsck/k9/autocrypt/AutocryptOperations;
    invoke-static {}, Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;->getInstance()Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;

    move-result-object v5

    .line 63
    .local v5, "autocryptOpenPgpApiInteractor":Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;
    new-instance v0, Lcom/fsck/k9/message/PgpMessageBuilder;

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/message/PgpMessageBuilder;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/internet/MessageIdGenerator;Lcom/fsck/k9/mail/BoundaryGenerator;Lcom/fsck/k9/autocrypt/AutocryptOperations;Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;)V

    return-object v0
.end method

.method private startOrContinueBuildMessage(Landroid/content/Intent;)V
    .locals 10
    .param p1, "pgpApiIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 129
    :try_start_0
    iget-object v8, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v8}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSigningEnabled()Z

    move-result v5

    .line 130
    .local v5, "shouldSign":Z
    iget-object v8, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v8}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled()Z

    move-result v4

    .line 131
    .local v4, "shouldEncrypt":Z
    iget-object v8, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v8}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled()Z

    move-result v0

    .line 133
    .local v0, "isPgpInlineMode":Z
    if-nez v5, :cond_0

    if-nez v4, :cond_0

    .line 134
    iget-object v6, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-virtual {p0, v6}, Lcom/fsck/k9/message/PgpMessageBuilder;->queueMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 163
    .end local v0    # "isPgpInlineMode":Z
    .end local v4    # "shouldEncrypt":Z
    .end local v5    # "shouldSign":Z
    :goto_0
    return-void

    .line 138
    .restart local v0    # "isPgpInlineMode":Z
    .restart local v4    # "shouldEncrypt":Z
    .restart local v5    # "shouldSign":Z
    :cond_0
    const-string v8, "text/plain"

    iget-object v9, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 139
    invoke-virtual {v9}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 140
    .local v1, "isSimpleTextMessage":Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 141
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Attachments are not supported in PGP/INLINE format!"

    invoke-direct {v6, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0    # "isPgpInlineMode":Z
    .end local v1    # "isSimpleTextMessage":Z
    .end local v4    # "shouldEncrypt":Z
    .end local v5    # "shouldSign":Z
    :catch_0
    move-exception v2

    .line 161
    .local v2, "me":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {p0, v2}, Lcom/fsck/k9/message/PgpMessageBuilder;->queueMessageBuildException(Lcom/fsck/k9/mail/MessagingException;)V

    goto :goto_0

    .line 144
    .end local v2    # "me":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "isPgpInlineMode":Z
    .restart local v1    # "isSimpleTextMessage":Z
    .restart local v4    # "shouldEncrypt":Z
    .restart local v5    # "shouldSign":Z
    :cond_1
    if-eqz v4, :cond_2

    :try_start_1
    iget-object v8, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v8}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->hasRecipients()Z

    move-result v8

    if-nez v8, :cond_2

    .line 145
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Must have recipients to build message!"

    invoke-direct {v6, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 148
    :cond_2
    if-nez p1, :cond_3

    .line 149
    invoke-direct {p0, v5, v4, v0}, Lcom/fsck/k9/message/PgpMessageBuilder;->buildOpenPgpApiIntent(ZZZ)Landroid/content/Intent;

    move-result-object p1

    .line 152
    :cond_3
    if-nez v4, :cond_4

    if-eqz v0, :cond_7

    :cond_4
    move v8, v7

    :goto_1
    if-nez v4, :cond_5

    if-nez v0, :cond_6

    :cond_5
    move v6, v7

    :cond_6
    invoke-direct {p0, p1, v8, v6, v0}, Lcom/fsck/k9/message/PgpMessageBuilder;->launchOpenPgpApiIntent(Landroid/content/Intent;ZZZ)Landroid/app/PendingIntent;

    move-result-object v3

    .line 154
    .local v3, "returnedPendingIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_8

    .line 155
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/fsck/k9/message/PgpMessageBuilder;->queueMessageBuildPendingIntent(Landroid/app/PendingIntent;I)V

    goto :goto_0

    .end local v3    # "returnedPendingIntent":Landroid/app/PendingIntent;
    :cond_7
    move v8, v6

    .line 152
    goto :goto_1

    .line 159
    .restart local v3    # "returnedPendingIntent":Landroid/app/PendingIntent;
    :cond_8
    iget-object v6, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-virtual {p0, v6}, Lcom/fsck/k9/message/PgpMessageBuilder;->queueMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected buildMessageInternal()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 83
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    if-eqz v4, :cond_0

    .line 84
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "message can only be built once!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    if-nez v4, :cond_1

    .line 87
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "PgpMessageBuilder must have cryptoStatus set before building!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v4}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->getOpenPgpKeyId()Ljava/lang/Long;

    move-result-object v3

    .line 92
    .local v3, "openPgpKeyId":Ljava/lang/Long;
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/message/PgpMessageBuilder;->build()Lcom/fsck/k9/mail/internet/MimeMessage;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    if-nez v3, :cond_2

    .line 99
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/message/PgpMessageBuilder;->queueMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 117
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "me":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {p0, v2}, Lcom/fsck/k9/message/PgpMessageBuilder;->queueMessageBuildException(Lcom/fsck/k9/mail/MessagingException;)V

    goto :goto_0

    .line 103
    .end local v2    # "me":Lcom/fsck/k9/mail/MessagingException;
    :cond_2
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    invoke-virtual {v4}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isProviderStateOk()Z

    move-result v4

    if-nez v4, :cond_3

    .line 104
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "OpenPGP Provider is not ready!"

    invoke-direct {v4, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/fsck/k9/message/PgpMessageBuilder;->queueMessageBuildException(Lcom/fsck/k9/mail/MessagingException;)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    aget-object v0, v4, v9

    .line 109
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->autocryptOpenPgpApiInteractor:Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;

    iget-object v5, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 110
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;->getKeyMaterialFromApi(Lorg/openintents/openpgp/util/OpenPgpApi;JLjava/lang/String;)[B

    move-result-object v1

    .line 111
    .local v1, "keyData":[B
    if-eqz v1, :cond_4

    .line 112
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->autocryptOperations:Lcom/fsck/k9/autocrypt/AutocryptOperations;

    iget-object v5, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 113
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {v4, v5, v1, v6, v9}, Lcom/fsck/k9/autocrypt/AutocryptOperations;->addAutocryptHeaderToMessage(Lcom/fsck/k9/mail/Message;[BLjava/lang/String;Z)V

    .line 116
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/fsck/k9/message/PgpMessageBuilder;->startOrContinueBuildMessage(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public buildMessageOnActivityResult(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "userInteractionResult"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "build message from activity result must not be called individually"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 124
    :cond_0
    invoke-direct {p0, p2}, Lcom/fsck/k9/message/PgpMessageBuilder;->startOrContinueBuildMessage(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public setCryptoStatus(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)V
    .locals 0
    .param p1, "cryptoStatus"    # Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 363
    return-void
.end method

.method public setOpenPgpApi(Lorg/openintents/openpgp/util/OpenPgpApi;)V
    .locals 0
    .param p1, "openPgpApi"    # Lorg/openintents/openpgp/util/OpenPgpApi;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 79
    return-void
.end method
