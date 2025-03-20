.class Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;
.super Lcom/fsck/k9/mail/Folder;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/pop3/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Folder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fsck/k9/mail/Folder",
        "<",
        "Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;",
        ">;"
    }
.end annotation


# instance fields
.field private mIn:Ljava/io/InputStream;

.field private mMessageCount:I

.field private mMsgNumToMsgMap:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Ljava/net/Socket;

.field private mUidToMsgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUidToMsgNumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 300
    invoke-direct {p0}, Lcom/fsck/k9/mail/Folder;-><init>()V

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/Map;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/Map;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/Map;

    .line 301
    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-static {p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$100(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/StoreConfig;->getInboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$200(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/fsck/k9/mail/store/StoreConfig;->getInboxFolderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    .line 306
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private authAPOP(Ljava/lang/String;)V
    .locals 8
    .param p1, "serverGreeting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 445
    const-string v5, "^\\+OK *(?:\\[[^\\]]+\\])?[^<]*(<[^>]*>)?[^<]*$"

    const-string v6, "$1"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "timestamp":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 448
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "APOP authentication is not supported"

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 453
    :cond_0
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 458
    .local v3, "md":Ljava/security/MessageDigest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1300(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 459
    .local v0, "digest":[B
    invoke-static {v0}, Lcom/fsck/k9/mail/filter/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "hexDigest":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APOP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1200(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse; {:try_start_1 .. :try_end_1} :catch_1

    .line 466
    return-void

    .line 454
    .end local v0    # "digest":[B
    .end local v2    # "hexDigest":Ljava/lang/String;
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "MD5 failure during POP3 auth APOP"

    invoke-direct {v5, v6, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 462
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "digest":[B
    .restart local v2    # "hexDigest":Ljava/lang/String;
    .restart local v3    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    .line 463
    .local v1, "e":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;
    new-instance v5, Lcom/fsck/k9/mail/AuthenticationFailedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "POP3 APOP authentication failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 464
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private authCramMD5()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 469
    const-string v3, "AUTH CRAM-MD5"

    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+ "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "b64Nonce":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1200(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1300(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/fsck/k9/mail/Authentication;->computeCramMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "b64CRAM":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v0, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    return-void

    .line 474
    :catch_0
    move-exception v2

    .line 475
    .local v2, "e":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;
    new-instance v3, Lcom/fsck/k9/mail/AuthenticationFailedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POP3 CRAM-MD5 authentication failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 477
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private authExternal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 483
    :try_start_0
    const-string v1, "AUTH EXTERNAL %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 485
    invoke-static {v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1200(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 484
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 483
    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;
    new-instance v1, Lcom/fsck/k9/mail/CertificateValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POP3 client certificate authentication failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 495
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private authPlain()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 431
    const-string v2, "AUTH PLAIN"

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1200(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 434
    invoke-static {v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1300(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 433
    invoke-static {v2}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([B)[B

    move-result-object v1

    .line 435
    .local v1, "encodedBytes":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    return-void

    .line 436
    .end local v1    # "encodedBytes":[B
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;
    new-instance v2, Lcom/fsck/k9/mail/AuthenticationFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POP3 SASL auth PLAIN authentication failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 439
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private closeIO()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 535
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 542
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 548
    :goto_2
    iput-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    .line 549
    iput-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    .line 550
    iput-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    .line 551
    return-void

    .line 543
    :catch_0
    move-exception v0

    goto :goto_2

    .line 536
    :catch_1
    move-exception v0

    goto :goto_1

    .line 529
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1129
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->open(I)V

    .line 1131
    if-eqz p1, :cond_1

    .line 1132
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v3, :cond_0

    .line 1133
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebugSensitive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1134
    const-string v3, ">>> [Command Hidden, Enable Sensitive Debug Logging To Show]"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1140
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->writeLine(Ljava/lang/String;)V

    .line 1143
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1144
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_4

    .line 1145
    :cond_2
    new-instance v3, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;

    invoke-direct {v3, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1149
    .end local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1150
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    throw v1

    .line 1136
    .end local v1    # "me":Lcom/fsck/k9/mail/MessagingException;
    :cond_3
    :try_start_1
    const-string v3, ">>> %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1151
    :catch_1
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->closeIO()V

    .line 1153
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Unable to execute POP3 command"

    invoke-direct {v3, v4, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1148
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "response":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method private fetchBody(Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;I)V
    .locals 12
    .param p1, "message"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    .param p2, "lines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 911
    const/4 v2, 0x0

    .line 914
    .local v2, "response":Ljava/lang/String;
    if-eq p2, v11, :cond_2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1700(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$900(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v3

    iget-boolean v3, v3, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->top:Z

    if-eqz v3, :cond_2

    .line 916
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$900(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v3

    iget-boolean v3, v3, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->top:Z

    if-nez v3, :cond_1

    .line 917
    const-string v3, "This server doesn\'t support the CAPA command. Checking to see if the TOP command is supported nevertheless."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "TOP %d %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/Map;

    .line 922
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 921
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 925
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$900(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->top:Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 943
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "RETR %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/Map;

    .line 944
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v10

    .line 943
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 948
    :cond_3
    :try_start_1
    new-instance v3, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ResponseInputStream;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ResponseInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V

    .line 951
    if-eq p2, v11, :cond_4

    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$900(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v3

    iget-boolean v3, v3, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->top:Z

    if-nez v3, :cond_5

    .line 952
    :cond_4
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 965
    :cond_5
    return-void

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$900(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v3

    iget-boolean v3, v3, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->top:Z

    if-eqz v3, :cond_6

    .line 929
    throw v0

    .line 931
    :cond_6
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v3, :cond_7

    .line 932
    const-string v3, "The server really doesn\'t support the TOP command. Using RETR instead."

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 937
    :cond_7
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v3, v9}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1702(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Z)Z

    goto :goto_0

    .line 954
    .end local v0    # "e":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;
    :catch_1
    move-exception v1

    .line 961
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    if-ne p2, v11, :cond_5

    .line 962
    throw v1
.end method

.method private fetchEnvelope(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;",
            ">;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 843
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;>;"
    .local p2, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;>;"
    const/4 v11, 0x0

    .line 844
    .local v11, "unsizedMessages":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Message;

    .line 845
    .local v5, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getSize()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    .line 846
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 849
    .end local v5    # "message":Lcom/fsck/k9/mail/Message;
    :cond_1
    if-nez v11, :cond_3

    .line 899
    :cond_2
    return-void

    .line 852
    :cond_3
    const/16 v12, 0x32

    if-ge v11, v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v13, 0x1388

    if-le v12, v13, :cond_6

    .line 857
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 858
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .line 859
    .local v5, "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    if-eqz p2, :cond_4

    .line 860
    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v3, v2}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 862
    :cond_4
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "LIST %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/Map;

    move-object/from16 v16, v0

    .line 863
    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    .line 862
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 864
    .local v10, "response":Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 866
    .local v4, "listParts":[Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 867
    .local v7, "msgSize":I
    invoke-virtual {v5, v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->setSize(I)V

    .line 868
    if-eqz p2, :cond_5

    .line 869
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v3, v2}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    .line 857
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 873
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "listParts":[Ljava/lang/String;
    .end local v5    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    .end local v7    # "msgSize":I
    .end local v10    # "response":Ljava/lang/String;
    :cond_6
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 874
    .local v8, "msgUidIndex":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Message;

    .line 875
    .local v5, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 877
    .end local v5    # "message":Lcom/fsck/k9/mail/Message;
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 878
    .restart local v2    # "count":I
    const-string v12, "LIST"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 879
    .restart local v10    # "response":Ljava/lang/String;
    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 880
    const-string v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 883
    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 884
    .restart local v4    # "listParts":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 885
    .local v6, "msgNum":I
    const/4 v12, 0x1

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 886
    .restart local v7    # "msgSize":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .line 887
    .local v9, "pop3Message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 888
    if-eqz p2, :cond_9

    .line 889
    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v3, v2}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 891
    :cond_9
    invoke-virtual {v9, v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->setSize(I)V

    .line 892
    if-eqz p2, :cond_a

    .line 893
    move-object/from16 v0, p2

    invoke-interface {v0, v9, v3, v2}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    .line 895
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private getCapabilities()Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1053
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;-><init>()V

    .line 1066
    .local v0, "capabilities":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;
    :try_start_0
    const-string v3, "AUTH"

    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, "response":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1068
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_5

    .line 1084
    .end local v1    # "response":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    const-string v3, "CAPA"

    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1085
    .restart local v1    # "response":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1086
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1107
    :cond_3
    iget-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->top:Z

    if-nez v3, :cond_4

    .line 1112
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1702(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Z)Z
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1120
    .end local v1    # "response":Ljava/lang/String;
    :cond_4
    :goto_3
    return-object v0

    .line 1071
    .restart local v1    # "response":Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1072
    const-string v3, "PLAIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1073
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->authPlain:Z

    goto :goto_0

    .line 1080
    .end local v1    # "response":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1074
    .restart local v1    # "response":Ljava/lang/String;
    :cond_6
    const-string v3, "CRAM-MD5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1075
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->cramMD5:Z

    goto :goto_0

    .line 1076
    :cond_7
    const-string v3, "EXTERNAL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1077
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->external:Z
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1089
    :cond_8
    :try_start_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    const-string v3, "STLS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1091
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->stls:Z

    goto :goto_2

    .line 1114
    .end local v1    # "response":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_3

    .line 1092
    .restart local v1    # "response":Ljava/lang/String;
    :cond_9
    const-string v3, "UIDL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1093
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->uidl:Z

    goto :goto_2

    .line 1094
    :cond_a
    const-string v3, "TOP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1095
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->top:Z

    goto :goto_2

    .line 1096
    :cond_b
    const-string v3, "SASL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1097
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1098
    .local v2, "saslAuthMechanisms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "PLAIN"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1099
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->authPlain:Z

    .line 1101
    :cond_c
    const-string v3, "CRAM-MD5"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1102
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->cramMD5:Z
    :try_end_3
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method private indexMessage(ILcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;)V
    .locals 4
    .param p1, "msgNum"    # I
    .param p2, "message"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .prologue
    .line 763
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v0, :cond_0

    .line 764
    const-string v0, "Adding index for UID %s to msgNum %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    return-void
.end method

.method private indexMsgNums(II)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 643
    const/4 v5, 0x0

    .line 644
    .local v5, "unindexedMessageCount":I
    move v1, p1

    .local v1, "msgNum":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 645
    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 646
    add-int/lit8 v5, v5, 0x1

    .line 644
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    :cond_1
    if-nez v5, :cond_3

    .line 715
    .end local v1    # "msgNum":I
    :cond_2
    :goto_1
    return-void

    .line 652
    .restart local v1    # "msgNum":I
    :cond_3
    const/16 v6, 0x32

    if-ge v5, v6, :cond_7

    iget v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v7, 0x1388

    if-le v6, v7, :cond_7

    .line 657
    move v1, p1

    :goto_2
    if-gt v1, p2, :cond_2

    .line 658
    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .line 659
    .local v0, "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    if-nez v0, :cond_6

    .line 660
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UIDL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "response":Ljava/lang/String;
    const-string v6, " +"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 663
    .local v4, "uidParts":[Ljava/lang/String;
    array-length v6, v4

    if-lt v6, v11, :cond_4

    const-string v6, "+OK"

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 664
    :cond_4
    const-string v6, "ERR response: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 667
    :cond_5
    aget-object v2, v4, v10

    .line 668
    .local v2, "msgUid":Ljava/lang/String;
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .end local v0    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    invoke-direct {v0, v2, p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;)V

    .line 669
    .restart local v0    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;)V

    .line 657
    .end local v2    # "msgUid":Ljava/lang/String;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "uidParts":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 673
    .end local v0    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    :cond_7
    const-string v6, "UIDL"

    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 674
    .end local v1    # "msgNum":I
    .restart local v3    # "response":Ljava/lang/String;
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 675
    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 690
    const-string v6, " +"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 691
    .restart local v4    # "uidParts":[Ljava/lang/String;
    array-length v6, v4

    if-lt v6, v11, :cond_9

    const-string v6, "+OK"

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 699
    aget-object v6, v4, v9

    aput-object v6, v4, v8

    .line 700
    aget-object v6, v4, v10

    aput-object v6, v4, v9

    .line 702
    :cond_9
    array-length v6, v4

    if-lt v6, v10, :cond_8

    .line 703
    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 704
    .local v1, "msgNum":Ljava/lang/Integer;
    aget-object v2, v4, v9

    .line 705
    .restart local v2    # "msgUid":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, p1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, p2, :cond_8

    .line 706
    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .line 707
    .restart local v0    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    if-nez v0, :cond_8

    .line 708
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .end local v0    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    invoke-direct {v0, v2, p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;)V

    .line 709
    .restart local v0    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;)V

    goto :goto_3
.end method

.method private indexUids(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 719
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 720
    .local v6, "unindexedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 721
    .local v4, "uid":Ljava/lang/String;
    iget-object v8, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 722
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v8, :cond_1

    .line 723
    const-string v8, "Need to index UID %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    :cond_1
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 728
    .end local v4    # "uid":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 760
    :cond_3
    return-void

    .line 736
    :cond_4
    const-string v7, "UIDL"

    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, "response":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 738
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 741
    const-string v7, " +"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 744
    .local v5, "uidParts":[Ljava/lang/String;
    array-length v7, v5

    if-lt v7, v12, :cond_5

    .line 745
    aget-object v7, v5, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 746
    .local v1, "msgNum":Ljava/lang/Integer;
    aget-object v2, v5, v11

    .line 747
    .local v2, "msgUid":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 748
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v7, :cond_6

    .line 749
    const-string v7, "Got msgNum %d for UID %s"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    :cond_6
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .line 753
    .local v0, "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    if-nez v0, :cond_7

    .line 754
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .end local v0    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    invoke-direct {v0, v2, p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;)V

    .line 756
    .restart local v0    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;)V

    goto :goto_1
.end method

.method private login()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1200(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1300(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;
    new-instance v1, Lcom/fsck/k9/mail/AuthenticationFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POP3 login authentication failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1026
    .local v0, "d":I
    if-ne v0, v5, :cond_0

    .line 1027
    new-instance v3, Ljava/io/IOException;

    const-string v4, "End of stream reached while trying to read line."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1030
    :cond_0
    int-to-char v3, v0

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    .line 1037
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1038
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1039
    .local v1, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v3, :cond_2

    .line 1040
    const-string v3, "<<< %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    :cond_2
    return-object v1

    .line 1032
    .end local v1    # "ret":Ljava/lang/String;
    :cond_3
    int-to-char v3, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 1035
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private writeLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1047
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1048
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1049
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1050
    return-void
.end method


# virtual methods
.method public appendMessages(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 969
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public areMoreMessagesAvailable(ILjava/util/Date;)Z
    .locals 1
    .param p1, "indexOfOldestMessage"    # I
    .param p2, "earliestDate"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x1

    .line 630
    if-le p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 513
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "QUIT"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->closeIO()V

    .line 524
    return-void

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .locals 1
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 978
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    sget-object v0, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->setFlags(Ljava/util/List;Ljava/util/Set;Z)V

    .line 979
    return-void
.end method

.method public delete(Z)V
    .locals 0
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 974
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1169
    instance-of v0, p1, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;

    if-eqz v0, :cond_0

    .line 1170
    check-cast p1, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1172
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1400(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/StoreConfig;->getInboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .locals 10
    .param p2, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;",
            ">;",
            "Lcom/fsck/k9/mail/FetchProfile;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;>;"
    .local p3, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;>;"
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 781
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 839
    :cond_0
    return-void

    .line 784
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v5, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/Message;

    .line 786
    .local v3, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    .end local v3    # "message":Lcom/fsck/k9/mail/Message;
    :cond_2
    :try_start_0
    invoke-direct {p0, v5}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->indexUids(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :try_start_1
    sget-object v7, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v7}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 801
    invoke-virtual {p2}, Lcom/fsck/k9/mail/FetchProfile;->size()I

    move-result v7

    if-ne v7, v9, :cond_3

    move-object v6, p3

    :cond_3
    invoke-direct {p0, p1, v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->fetchEnvelope(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 806
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 807
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .line 809
    .local v4, "pop3Message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    if-eqz p3, :cond_5

    :try_start_2
    sget-object v6, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 810
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6, v1, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 812
    :cond_5
    sget-object v6, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 813
    const/4 v6, -0x1

    invoke-direct {p0, v4, v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->fetchBody(Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;I)V

    .line 832
    :cond_6
    :goto_2
    if-eqz p3, :cond_8

    sget-object v6, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Lcom/fsck/k9/mail/FetchProfile;->size()I

    move-result v6

    if-eq v6, v9, :cond_8

    .line 833
    :cond_7
    invoke-interface {p3, v4, v1, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 806
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 790
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v4    # "pop3Message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    :catch_0
    move-exception v2

    .line 791
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "fetch"

    invoke-direct {v6, v7, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 803
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 804
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "fetch"

    invoke-direct {v6, v7, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 814
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v4    # "pop3Message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    :cond_9
    :try_start_3
    sget-object v6, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 819
    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1500(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v6

    invoke-interface {v6}, Lcom/fsck/k9/mail/store/StoreConfig;->getMaximumAutoDownloadMessageSize()I

    move-result v6

    if-lez v6, :cond_a

    .line 820
    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 821
    invoke-static {v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1600(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v6

    invoke-interface {v6}, Lcom/fsck/k9/mail/store/StoreConfig;->getMaximumAutoDownloadMessageSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x4c

    .line 820
    invoke-direct {p0, v4, v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->fetchBody(Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 835
    :catch_2
    move-exception v2

    .line 836
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Unable to fetch message"

    invoke-direct {v6, v7, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 823
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_a
    const/4 v6, -0x1

    :try_start_4
    invoke-direct {p0, v4, v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->fetchBody(Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;I)V

    goto :goto_2

    .line 825
    :cond_b
    sget-object v6, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 830
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->setBody(Lcom/fsck/k9/mail/Body;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2
.end method

.method public getFlaggedMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 579
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .line 585
    .local v0, "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    if-nez v0, :cond_0

    .line 586
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .end local v0    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    invoke-direct {v0, p1, p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;)V

    .line 588
    .restart local v0    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    :cond_0
    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILjava/util/Date;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
    .locals 13
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "earliestDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Date;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 594
    .local p4, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;>;"
    const/4 v7, 0x1

    if-lt p1, v7, :cond_0

    const/4 v7, 0x1

    if-lt p2, v7, :cond_0

    if-ge p2, p1, :cond_1

    .line 595
    :cond_0
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Invalid message set %d %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 596
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 595
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 599
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;>;"
    const/4 v1, 0x0

    .line 605
    .local v1, "i":I
    move v6, p1

    .local v6, "msgNum":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-gt v6, p2, :cond_4

    .line 606
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;

    .line 607
    .local v4, "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    if-nez v4, :cond_3

    move v1, v2

    .line 605
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 600
    .end local v2    # "i":I
    .end local v4    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    .end local v5    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;>;"
    .end local v6    # "msgNum":I
    :catch_0
    move-exception v3

    .line 601
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "getMessages"

    invoke-direct {v7, v8, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 617
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v4    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    .restart local v5    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;>;"
    .restart local v6    # "msgNum":I
    :cond_3
    if-eqz p4, :cond_5

    .line 618
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v7, v2, v8}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 620
    :goto_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    if-eqz p4, :cond_2

    .line 622
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v1, v7}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 625
    .end local v1    # "i":I
    .end local v4    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    .restart local v2    # "i":I
    :cond_4
    return-object v5

    .restart local v4    # "message":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
    :cond_5
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 983
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 575
    const/4 v0, -0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFlagSupported(Lcom/fsck/k9/mail/Flag;)Z
    .locals 1
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;

    .prologue
    .line 1159
    sget-object v0, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    .line 502
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    .line 502
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized open(I)V
    .locals 12
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 418
    :goto_0
    monitor-exit p0

    return-void

    .line 314
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$300(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v8

    invoke-interface {v8}, Lcom/fsck/k9/mail/store/StoreConfig;->getInboxFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 315
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "Folder does not exist"

    invoke-direct {v7, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 319
    :cond_1
    :try_start_2
    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$500(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 320
    .local v6, "socketAddress":Ljava/net/SocketAddress;
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$600(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-ne v7, v8, :cond_2

    .line 321
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$800(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v9}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v10}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$500(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)I

    move-result v10

    iget-object v11, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v11}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$700(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    .line 326
    :goto_1
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const/16 v8, 0x7530

    invoke-virtual {v7, v6, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 327
    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x400

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    .line 328
    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    const/16 v9, 0x200

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    .line 330
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const v8, 0xea60

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 331
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->isOpen()Z

    move-result v7

    if-nez v7, :cond_3

    .line 332
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "Unable to connect socket"

    invoke-direct {v7, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    .end local v6    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/security/cert/CertificateException;

    if-eqz v7, :cond_a

    .line 400
    new-instance v7, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .restart local v6    # "socketAddress":Ljava/net/SocketAddress;
    :cond_2
    :try_start_4
    new-instance v7, Ljava/net/Socket;

    invoke-direct {v7}, Ljava/net/Socket;-><init>()V

    iput-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 404
    .end local v6    # "socketAddress":Ljava/net/SocketAddress;
    :catch_1
    move-exception v1

    .line 405
    .local v1, "gse":Ljava/security/GeneralSecurityException;
    :try_start_5
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "Unable to open connection to POP server due to security error."

    invoke-direct {v7, v8, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 335
    .end local v1    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v6    # "socketAddress":Ljava/net/SocketAddress;
    :cond_3
    const/4 v7, 0x0

    :try_start_6
    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, "serverGreeting":Ljava/lang/String;
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->getCapabilities()Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$902(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    .line 338
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$600(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-ne v7, v8, :cond_5

    .line 340
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$900(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v7

    iget-boolean v7, v7, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->stls:Z

    if-eqz v7, :cond_6

    .line 341
    const-string v7, "STLS"

    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1000(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 345
    invoke-static {v9}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 346
    invoke-static {v10}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$500(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)I

    move-result v10

    iget-object v11, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 347
    invoke-static {v11}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$700(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;

    move-result-object v11

    .line 343
    invoke-interface {v7, v8, v9, v10, v11}, Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    .line 348
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const v8, 0xea60

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 349
    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x400

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    .line 350
    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    const/16 v9, 0x200

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    .line 351
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->isOpen()Z

    move-result v7

    if-nez v7, :cond_4

    .line 352
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "Unable to connect socket"

    invoke-direct {v7, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 407
    .end local v5    # "serverGreeting":Ljava/lang/String;
    .end local v6    # "socketAddress":Ljava/net/SocketAddress;
    :catch_2
    move-exception v2

    .line 408
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_7
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "Unable to open connection to POP server."

    invoke-direct {v7, v8, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 354
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v5    # "serverGreeting":Ljava/lang/String;
    .restart local v6    # "socketAddress":Ljava/net/SocketAddress;
    :cond_4
    :try_start_8
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->getCapabilities()Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$902(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    .line 368
    :cond_5
    sget-object v7, Lcom/fsck/k9/mail/store/pop3/Pop3Store$1;->$SwitchMap$com$fsck$k9$mail$AuthType:[I

    iget-object v8, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$1100(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/AuthType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/mail/AuthType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 395
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "Unhandled authentication method found in the server settings (bug)."

    invoke-direct {v7, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 363
    :cond_6
    new-instance v7, Lcom/fsck/k9/mail/CertificateValidationException;

    const-string v8, "STARTTLS connection security not available"

    invoke-direct {v7, v8}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 370
    :pswitch_0
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$900(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v7

    iget-boolean v7, v7, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->authPlain:Z

    if-eqz v7, :cond_7

    .line 371
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->authPlain()V
    :try_end_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 411
    :goto_2
    :try_start_9
    const-string v7, "STAT"

    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "response":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "parts":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMessageCount:I

    .line 415
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 416
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 417
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 373
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "response":Ljava/lang/String;
    :cond_7
    :try_start_a
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->login()V

    goto :goto_2

    .line 378
    :pswitch_1
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$900(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v7

    iget-boolean v7, v7, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->cramMD5:Z

    if-eqz v7, :cond_8

    .line 379
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->authCramMD5()V

    goto :goto_2

    .line 381
    :cond_8
    invoke-direct {p0, v5}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->authAPOP(Ljava/lang/String;)V

    goto :goto_2

    .line 386
    :pswitch_2
    iget-object v7, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->access$900(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    move-result-object v7

    iget-boolean v7, v7, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->external:Z

    if-eqz v7, :cond_9

    .line 387
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->authExternal()V

    goto :goto_2

    .line 390
    :cond_9
    new-instance v7, Lcom/fsck/k9/mail/CertificateValidationException;

    sget-object v8, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->MissingCapability:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-direct {v7, v8}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Lcom/fsck/k9/mail/CertificateValidationException$Reason;)V

    throw v7
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 402
    .end local v5    # "serverGreeting":Ljava/lang/String;
    .end local v6    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v0    # "e":Ljavax/net/ssl/SSLException;
    :cond_a
    :try_start_b
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "Unable to connect"

    invoke-direct {v7, v8, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFlags(Ljava/util/List;Ljava/util/Set;Z)V
    .locals 10
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    .local p2, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    const/4 v9, 0x1

    .line 994
    if-eqz p3, :cond_0

    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1021
    :cond_0
    return-void

    .line 1000
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Message;

    .line 1003
    .local v2, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1007
    .end local v2    # "message":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not get message number for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1006
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->indexUids(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1010
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Message;

    .line 1012
    .restart local v2    # "message":Lcom/fsck/k9/mail/Message;
    iget-object v6, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1013
    .local v3, "msgNum":Ljava/lang/Integer;
    if-nez v3, :cond_3

    .line 1014
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not delete message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because no msgNum found; permanent error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/MessagingException;->setPermanentFailure(Z)V

    .line 1017
    throw v1

    .line 1019
    .end local v1    # "me":Lcom/fsck/k9/mail/MessagingException;
    :cond_3
    const-string v6, "DELE %s"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public setFlags(Ljava/util/Set;Z)V
    .locals 2
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "POP3: No setFlags(Set<Flag>,boolean)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsFetchingFlags()Z
    .locals 1

    .prologue
    .line 1164
    const/4 v0, 0x0

    return v0
.end method
