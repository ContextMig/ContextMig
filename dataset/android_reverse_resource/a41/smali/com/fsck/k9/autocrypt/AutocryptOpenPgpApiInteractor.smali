.class public Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;
.super Ljava/lang/Object;
.source "AutocryptOpenPgpApiInteractor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;

    invoke-direct {v0}, Lcom/fsck/k9/autocrypt/AutocryptOpenPgpApiInteractor;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getKeyMaterialFromApi(Lorg/openintents/openpgp/util/OpenPgpApi;JLjava/lang/String;)[B
    .locals 8
    .param p1, "openPgpApi"    # Lorg/openintents/openpgp/util/OpenPgpApi;
    .param p2, "keyId"    # J
    .param p4, "minimizeForUserId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 20
    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.openintents.openpgp.action.GET_KEY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v2, "retreiveKeyIntent":Landroid/content/Intent;
    const-string v3, "key_id"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 22
    const-string v3, "minimize"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    const-string v3, "minimize_user_id"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .line 25
    check-cast v3, Ljava/io/InputStream;

    invoke-virtual {p1, v2, v3, v0}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;)Landroid/content/Intent;

    move-result-object v1

    .line 27
    .local v1, "result":Landroid/content/Intent;
    const-string v3, "result_code"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 31
    :cond_0
    return-object v4
.end method
