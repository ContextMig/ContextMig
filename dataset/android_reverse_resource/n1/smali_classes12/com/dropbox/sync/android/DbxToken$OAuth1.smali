.class final Lcom/dropbox/sync/android/DbxToken$OAuth1;
.super Lcom/dropbox/sync/android/DbxToken;
.source "DbxToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OAuth1"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final secret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxToken;-><init>()V

    .line 39
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/dropbox/sync/android/DbxToken$OAuth1;->checkTokenArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "secret"

    invoke-static {p2, v0}, Lcom/dropbox/sync/android/DbxToken$OAuth1;->checkTokenArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->key:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->secret:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    instance-of v3, p1, Lcom/dropbox/sync/android/DbxToken$OAuth1;

    if-nez v3, :cond_2

    move v1, v2

    .line 57
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/dropbox/sync/android/DbxToken$OAuth1;

    .line 60
    .local v0, "other":Lcom/dropbox/sync/android/DbxToken$OAuth1;
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->secret:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->secret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 66
    const/16 v0, 0x11

    .line 67
    .local v0, "result":I
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 68
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->secret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 69
    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secret=...}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
