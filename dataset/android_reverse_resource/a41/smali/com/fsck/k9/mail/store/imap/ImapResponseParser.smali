.class Lcom/fsck/k9/mail/store/imap/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# instance fields
.field private exception:Ljava/lang/Exception;

.field private inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

.field private response:Lcom/fsck/k9/mail/store/imap/ImapResponse;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/filter/PeekableInputStream;)V
    .locals 0
    .param p1, "in"    # Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 25
    return-void
.end method

.method private checkTokenIsString(Ljava/lang/Object;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected non-string token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    return-void
.end method

.method static equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .param p0, "token"    # Ljava/lang/Object;
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 476
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 477
    :cond_0
    const/4 v0, 0x0

    .line 480
    .end local p0    # "token":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "token":Ljava/lang/Object;
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0    # "token":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private expect(C)V
    .locals 6
    .param p1, "expected"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v0

    .line 461
    .local v0, "readByte":I
    if-eq v0, p1, :cond_0

    .line 462
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected %04x (%c) but got %04x (%c)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 463
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    .line 462
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_0
    return-void
.end method

.method private formatChar(C)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 449
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isStatusResponse(Ljava/lang/String;)Z
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 468
    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NO"

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BAD"

    .line 470
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PREAUTH"

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BYE"

    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 468
    :goto_0
    return v0

    .line 472
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseBareString(Z)Ljava/lang/String;
    .locals 7
    .param p1, "allowBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    move-result v0

    .line 316
    .local v0, "ch":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 317
    new-instance v2, Ljava/io/IOException;

    const-string v3, "parseBareString(): end of stream reached"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_0
    const/16 v2, 0x28

    if-eq v0, v2, :cond_3

    const/16 v2, 0x29

    if-eq v0, v2, :cond_3

    if-eqz p1, :cond_1

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x7b

    if-eq v0, v2, :cond_3

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    const/16 v2, 0x22

    if-eq v0, v2, :cond_3

    if-ltz v0, :cond_2

    const/16 v2, 0x1f

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_5

    .line 324
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 325
    new-instance v2, Ljava/io/IOException;

    const-string v3, "parseBareString(): (%04x %c)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 330
    :cond_5
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private parseCommandContinuationRequest()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method private parseList(Lcom/fsck/k9/mail/store/imap/ImapList;CC)Lcom/fsck/k9/mail/store/imap/ImapList;
    .locals 4
    .param p1, "parent"    # Lcom/fsck/k9/mail/store/imap/ImapList;
    .param p2, "start"    # C
    .param p3, "end"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0, p2}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 290
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapList;

    invoke-direct {v1}, Lcom/fsck/k9/mail/store/imap/ImapList;-><init>()V

    .line 291
    .local v1, "list":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "endString":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseToken(Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;

    move-result-object v2

    .line 298
    .local v2, "token":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 299
    const/4 v1, 0x0

    .line 307
    .end local v1    # "list":Lcom/fsck/k9/mail/store/imap/ImapList;
    :cond_1
    return-object v1

    .line 300
    .restart local v1    # "list":Lcom/fsck/k9/mail/store/imap/ImapList;
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 302
    instance-of v3, v2, Lcom/fsck/k9/mail/store/imap/ImapList;

    if-nez v3, :cond_0

    .line 303
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseListResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 190
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 191
    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-direct {p0, p1, v2, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseList(Lcom/fsck/k9/mail/store/imap/ImapList;CC)Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 192
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 193
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseQuotedOrNil()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "delimiter":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 196
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->add(Ljava/lang/Object;)Z

    .line 198
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 199
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 200
    return-void
.end method

.method private parseLiteral()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    const/16 v9, 0x7b

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 341
    const/16 v9, 0x7d

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 342
    .local v7, "size":I
    const/16 v9, 0xd

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 343
    const/16 v9, 0xa

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 345
    if-nez v7, :cond_1

    .line 346
    const-string v6, ""

    .line 393
    :cond_0
    :goto_0
    return-object v6

    .line 349
    :cond_1
    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getCallback()Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 350
    new-instance v4, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-direct {v4, v9, v7}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 352
    .local v4, "fixed":Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
    const/4 v0, 0x0

    .line 353
    .local v0, "callbackException":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 355
    .local v6, "result":Ljava/lang/Object;
    :try_start_0
    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getCallback()Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    invoke-interface {v9, v10, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;->foundLiteral(Lcom/fsck/k9/mail/store/imap/ImapResponse;Lcom/fsck/k9/mail/filter/FixedLengthInputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 362
    .end local v6    # "result":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v4}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->available()I

    move-result v9

    if-eq v9, v7, :cond_2

    const/4 v8, 0x1

    .line 363
    .local v8, "someDataWasRead":Z
    :goto_2
    if-eqz v8, :cond_4

    .line 364
    if-nez v6, :cond_3

    if-nez v0, :cond_3

    .line 365
    new-instance v9, Ljava/lang/AssertionError;

    const-string v10, "Callback consumed some data but returned no result"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 356
    .end local v8    # "someDataWasRead":Z
    .restart local v6    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 357
    .local v3, "e":Ljava/io/IOException;
    throw v3

    .line 358
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 359
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    goto :goto_1

    .line 362
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "result":Ljava/lang/Object;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 368
    .restart local v8    # "someDataWasRead":Z
    :cond_3
    invoke-virtual {v4}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->skipRemaining()V

    .line 371
    :cond_4
    if-eqz v0, :cond_6

    .line 372
    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->exception:Ljava/lang/Exception;

    if-nez v9, :cond_5

    .line 373
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->exception:Ljava/lang/Exception;

    .line 375
    :cond_5
    const-string v6, "EXCEPTION"

    goto :goto_0

    .line 378
    :cond_6
    if-nez v6, :cond_0

    .line 383
    .end local v0    # "callbackException":Ljava/lang/Exception;
    .end local v4    # "fixed":Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
    .end local v8    # "someDataWasRead":Z
    :cond_7
    new-array v2, v7, [B

    .line 384
    .local v2, "data":[B
    const/4 v5, 0x0

    .line 385
    .local v5, "read":I
    :goto_3
    if-eq v5, v7, :cond_9

    .line 386
    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    sub-int v10, v7, v5

    invoke-virtual {v9, v2, v5, v10}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read([BII)I

    move-result v1

    .line 387
    .local v1, "count":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_8

    .line 388
    new-instance v9, Ljava/io/IOException;

    const-string v10, "parseLiteral(): end of stream reached"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 390
    :cond_8
    add-int/2addr v5, v1

    .line 391
    goto :goto_3

    .line 393
    .end local v1    # "count":I
    :cond_9
    new-instance v6, Ljava/lang/String;

    const-string v9, "US-ASCII"

    invoke-direct {v6, v2, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method private parseNil()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 428
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 429
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 430
    return-void
.end method

.method private parseQuoted()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 397
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 402
    .local v1, "escape":Z
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 403
    if-nez v1, :cond_0

    const/16 v3, 0x5c

    if-ne v0, v3, :cond_0

    .line 405
    const/4 v1, 0x1

    goto :goto_0

    .line 406
    :cond_0
    if-nez v1, :cond_1

    if-ne v0, v4, :cond_1

    .line 407
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 409
    :cond_1
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    const/4 v1, 0x0

    goto :goto_0

    .line 413
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "parseQuoted(): end of stream reached"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parseQuotedOrNil()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    move-result v0

    .line 418
    .local v0, "peek":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseQuoted()Ljava/lang/String;

    move-result-object v1

    .line 422
    :goto_0
    return-object v1

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseNil()V

    .line 422
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseResponseText(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 4
    .param p1, "parent"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x5b

    .line 173
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->skipIfSpace()V

    .line 175
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    move-result v0

    .line 176
    .local v0, "next":I
    if-ne v0, v3, :cond_0

    .line 177
    const/16 v2, 0x5d

    invoke-direct {p0, p1, v3, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseList(Lcom/fsck/k9/mail/store/imap/ImapList;CC)Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 178
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->skipIfSpace()V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readStringUntilEndOfLine()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "rest":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    return-void
.end method

.method private parseString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    move-result v0

    .line 264
    .local v0, "ch":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseQuoted()Ljava/lang/String;

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    .line 266
    :cond_0
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseLiteral()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 269
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseBareString(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private parseTaggedResponse()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseToken(Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;
    .locals 7
    .param p1, "parent"    # Lcom/fsck/k9/mail/store/imap/ImapList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x9

    const/16 v4, 0x5d

    const/16 v3, 0x29

    const/16 v2, 0xa

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    move-result v0

    .line 230
    .local v0, "ch":I
    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 231
    const/16 v1, 0x28

    invoke-direct {p0, p1, v1, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseList(Lcom/fsck/k9/mail/store/imap/ImapList;CC)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v1

    .line 256
    :goto_1
    return-object v1

    .line 232
    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 233
    const/16 v1, 0x5b

    invoke-direct {p0, p1, v1, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseList(Lcom/fsck/k9/mail/store/imap/ImapList;CC)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_1

    .line 234
    :cond_1
    if-ne v0, v3, :cond_2

    .line 235
    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 236
    const-string v1, ")"

    goto :goto_1

    .line 237
    :cond_2
    if-ne v0, v4, :cond_3

    .line 238
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 239
    const-string v1, "]"

    goto :goto_1

    .line 240
    :cond_3
    const/16 v1, 0x22

    if-ne v0, v1, :cond_4

    .line 241
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseQuoted()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 242
    :cond_4
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_5

    .line 243
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseLiteral()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 244
    :cond_5
    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 245
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    goto :goto_0

    .line 246
    :cond_6
    if-ne v0, v6, :cond_7

    .line 247
    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 248
    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 249
    const/4 v1, 0x0

    goto :goto_1

    .line 250
    :cond_7
    if-ne v0, v2, :cond_8

    .line 251
    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 252
    const/4 v1, 0x0

    goto :goto_1

    .line 253
    :cond_8
    if-ne v0, v5, :cond_9

    .line 254
    invoke-direct {p0, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    goto :goto_0

    .line 256
    :cond_9
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseBareString(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private parseUntaggedResponse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 280
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 281
    return-void
.end method

.method private readContinuationRequest(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseCommandContinuationRequest()Z

    .line 58
    invoke-static {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->newContinuationRequest(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 60
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->skipIfSpace()V

    .line 61
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readStringUntilEndOfLine()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "rest":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method private readStringUntil(C)Ljava/lang/String;
    .locals 5
    .param p1, "end"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 437
    if-ne v0, p1, :cond_0

    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 440
    :cond_0
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readStringUntil(): end of stream reached. Read: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" while waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->formatChar(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readStringUntilEndOfLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "rest":Ljava/lang/String;
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 456
    return-object v0
.end method

.method private readTaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseTaggedResponse()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "tag":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->newTaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 76
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 77
    return-void
.end method

.method private readToken(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Ljava/lang/Object;
    .locals 2
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseToken(Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .local v0, "token":Ljava/lang/Object;
    if-eqz v0, :cond_1

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    :cond_1
    return-object v0
.end method

.method private readTokens(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->clear()V

    .line 127
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readToken(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "firstToken":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->checkTokenIsString(Ljava/lang/Object;)V

    move-object v1, v0

    .line 130
    check-cast v1, Ljava/lang/String;

    .line 132
    .local v1, "symbol":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->isStatusResponse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseResponseText(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v3, "LIST"

    invoke-static {v1, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "LSUB"

    invoke-static {v1, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    :cond_2
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseListResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    goto :goto_0

    .line 140
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readToken(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "token":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 141
    instance-of v3, v2, Lcom/fsck/k9/mail/store/imap/ImapList;

    if-nez v3, :cond_3

    .line 142
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private readUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->parseUntaggedResponse()V

    .line 67
    invoke-static {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->newUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 69
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 70
    return-void
.end method

.method private skipIfSpace()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 203
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 204
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public readResponse()Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 5
    .param p1, "callback"    # Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    move-result v0

    .line 37
    .local v0, "peek":I
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readContinuationRequest(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)V

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_2

    .line 46
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapResponseParserException;

    const-string v2, "readResponse(): Exception in callback method"

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->exception:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponseParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v0    # "peek":I
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 52
    iput-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->exception:Ljava/lang/Exception;

    throw v1

    .line 39
    .restart local v0    # "peek":I
    :cond_0
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 40
    :try_start_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readTaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    iput-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->response:Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 52
    iput-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->exception:Ljava/lang/Exception;

    .line 49
    return-object v1
.end method

.method readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/store/imap/UntaggedHandler;)Ljava/util/List;
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "commandToLog"    # Ljava/lang/String;
    .param p3, "logId"    # Ljava/lang/String;
    .param p4, "untaggedHandler"    # Lcom/fsck/k9/mail/store/imap/UntaggedHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/imap/UntaggedHandler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v4, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readResponse()Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v2

    .line 88
    .local v2, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v5, :cond_1

    .line 89
    const-string v5, "%s<<<%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p3, v6, v8

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_1
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 93
    const-string v5, "After sending tag %s, got tag response from previous command %s for %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object v2, v6, v7

    aput-object p3, v6, v9

    invoke-static {v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 97
    .local v3, "responseIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 99
    .local v0, "delResponse":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v5

    if-lt v5, v9, :cond_3

    .line 100
    invoke-virtual {v0, v7}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "EXISTS"

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 101
    invoke-virtual {v0, v7}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "EXPUNGE"

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 105
    .end local v0    # "delResponse":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_4
    const/4 v2, 0x0

    .line 114
    .end local v3    # "responseIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 116
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v5

    if-lt v5, v7, :cond_5

    invoke-virtual {v2, v8}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "OK"

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 117
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "message":Ljava/lang/String;
    new-instance v5, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;

    invoke-direct {v5, v1, v4}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v5

    .line 109
    .end local v1    # "message":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    if-eqz p4, :cond_7

    .line 110
    invoke-interface {p4, v2}, Lcom/fsck/k9/mail/store/imap/UntaggedHandler;->handleAsyncUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 113
    :cond_7
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_8
    return-object v4
.end method
