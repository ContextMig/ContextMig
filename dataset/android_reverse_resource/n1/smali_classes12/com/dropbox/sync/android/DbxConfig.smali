.class final Lcom/dropbox/sync/android/DbxConfig;
.super Ljava/lang/Object;
.source "DbxConfig.java"


# static fields
.field public static final DEFAULT_APP_PLATFORM:Ljava/lang/String; = "syncsdk"

.field public static final DEFAULT_ENABLE_LEDGER:Z = false

.field public static final DEFAULT_VALIDATE_DAUTH_CONFIG:Z = true

.field public static final UNLIMITED_CACHE_SIZE:J


# instance fields
.field public final appKey:Ljava/lang/String;

.field public final appPlatform:Ljava/lang/String;

.field public final appSecret:Ljava/lang/String;

.field public final enableLedger:Z

.field public final validateApplicationDAuthConfig:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/sync/android/DbxConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "validateApplicationDAuthConfig"    # Z

    .prologue
    .line 91
    const/4 v4, 0x0

    const-string v5, "syncsdk"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/DbxConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "validateApplicationDAuthConfig"    # Z
    .param p4, "enableLedger"    # Z
    .param p5, "appPlatform"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'appKey\' shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    const-string v0, "appKey"

    invoke-static {p1, v0}, Lcom/dropbox/sync/android/DbxToken;->checkTokenArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz p2, :cond_1

    .line 105
    const-string v0, "appSecret"

    invoke-static {p2, v0}, Lcom/dropbox/sync/android/DbxToken;->checkTokenArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxConfig;->appSecret:Ljava/lang/String;

    .line 110
    iput-boolean p3, p0, Lcom/dropbox/sync/android/DbxConfig;->validateApplicationDAuthConfig:Z

    .line 111
    iput-boolean p4, p0, Lcom/dropbox/sync/android/DbxConfig;->enableLedger:Z

    .line 112
    iput-object p5, p0, Lcom/dropbox/sync/android/DbxConfig;->appPlatform:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    if-ne p0, p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    instance-of v3, p1, Lcom/dropbox/sync/android/DbxConfig;

    if-nez v3, :cond_2

    move v1, v2

    .line 126
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/dropbox/sync/android/DbxConfig;

    .line 129
    .local v0, "other":Lcom/dropbox/sync/android/DbxConfig;
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxConfig;->appSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/sync/android/DbxConfig;->appSecret:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/dropbox/sync/android/CoreStringUtil;->nullableEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/sync/android/DbxConfig;->validateApplicationDAuthConfig:Z

    iget-boolean v4, v0, Lcom/dropbox/sync/android/DbxConfig;->validateApplicationDAuthConfig:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/sync/android/DbxConfig;->enableLedger:Z

    iget-boolean v4, v0, Lcom/dropbox/sync/android/DbxConfig;->enableLedger:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 137
    const/16 v0, 0x11

    .line 138
    .local v0, "result":I
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 139
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxConfig;->appSecret:Ljava/lang/String;

    invoke-static {v2}, Lcom/dropbox/sync/android/CoreStringUtil;->nullableHashCode(Ljava/lang/String;)I

    move-result v2

    add-int v0, v1, v2

    .line 140
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxConfig;->validateApplicationDAuthConfig:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    :goto_0
    add-int v0, v2, v1

    .line 141
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxConfig;->validateApplicationDAuthConfig:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xe7c

    :goto_1
    add-int v0, v2, v1

    .line 142
    return v0

    .line 140
    :cond_0
    const/16 v1, 0x4d5

    goto :goto_0

    .line 141
    :cond_1
    const/16 v1, 0x638

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
