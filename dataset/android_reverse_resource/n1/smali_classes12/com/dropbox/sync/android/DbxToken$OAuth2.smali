.class final Lcom/dropbox/sync/android/DbxToken$OAuth2;
.super Lcom/dropbox/sync/android/DbxToken;
.source "DbxToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OAuth2"
.end annotation


# instance fields
.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxToken;-><init>()V

    .line 90
    const-string v0, "token"

    invoke-static {v0, p1}, Lcom/dropbox/sync/android/DbxToken$OAuth2;->checkTokenArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxToken$OAuth2;->token:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 101
    if-ne p0, p1, :cond_0

    .line 102
    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    .line 104
    :cond_0
    instance-of v1, p1, Lcom/dropbox/sync/android/DbxToken$OAuth2;

    if-nez v1, :cond_1

    .line 105
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/dropbox/sync/android/DbxToken$OAuth2;

    .line 108
    .local v0, "other":Lcom/dropbox/sync/android/DbxToken$OAuth2;
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxToken$OAuth2;->token:Ljava/lang/String;

    iget-object v2, v0, Lcom/dropbox/sync/android/DbxToken$OAuth2;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxToken$OAuth2;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|oa2|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxToken$OAuth2;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{oauth2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxToken$OAuth2;->token:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
