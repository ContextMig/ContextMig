.class public Lcom/mobapphome/mahencryptorlib/MAHEncryptor;
.super Ljava/lang/Object;
.source "MAHEncryptor.java"


# instance fields
.field base64decoder:Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

.field base64encoder:Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

.field private key:Ljavax/crypto/SecretKey;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    const-string v1, "UTF8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([BI)V

    const-string p1, "DES"

    .line 30
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->key:Ljavax/crypto/SecretKey;

    .line 32
    invoke-static {}, Lcom/mobapphome/mahencryptorlib/Base64;->getEncoder()Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

    move-result-object p1

    iput-object p1, p0, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->base64encoder:Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

    .line 33
    invoke-static {}, Lcom/mobapphome/mahencryptorlib/Base64;->getDecoder()Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

    move-result-object p1

    iput-object p1, p0, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->base64decoder:Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/mobapphome/mahencryptorlib/MAHEncryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    invoke-direct {v0, p0}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstanceOrRetunNull(Ljava/lang/String;)Lcom/mobapphome/mahencryptorlib/MAHEncryptor;
    .locals 1

    .line 56
    :try_start_0
    new-instance v0, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    invoke-direct {v0, p0}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->base64decoder:Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

    invoke-virtual {v0, p1}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "DES"

    .line 116
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->key:Ljavax/crypto/SecretKey;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 118
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public decodeOrReturnNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    const-string v0, "UTF8"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "DES"

    .line 80
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->key:Ljavax/crypto/SecretKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 82
    iget-object v1, p0, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->base64encoder:Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeOrReturnNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
