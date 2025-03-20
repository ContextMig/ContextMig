.class public final Lcom/appflood/e/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/e/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/security/Key;

.field private b:Ljavax/crypto/spec/PBEParameterSpec;

.field private c:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "PBEWithMD5AndDES"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/e/j$b;->a:Ljava/security/Key;

    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v0, p0, Lcom/appflood/e/j$b;->b:Ljavax/crypto/spec/PBEParameterSpec;

    const-string v0, "PBEWithMD5AndDES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/e/j$b;->c:Ljavax/crypto/Cipher;

    const-string v0, "PBEWithMD5AndDES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/e/j$b;->c:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a([B)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appflood/e/j$b;->c:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/appflood/e/j$b;->a:Ljava/security/Key;

    iget-object v3, p0, Lcom/appflood/e/j$b;->b:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v0, p0, Lcom/appflood/e/j$b;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j$a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/appflood/e/j;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/appflood/e/j;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appflood/e/j$b;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "failed to encrypt"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
