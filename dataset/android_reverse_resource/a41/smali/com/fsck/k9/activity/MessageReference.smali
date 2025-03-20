.class public Lcom/fsck/k9/activity/MessageReference;
.super Ljava/lang/Object;
.source "MessageReference.java"


# static fields
.field private static final IDENTITY_SEPARATOR:Ljava/lang/String; = ":"

.field private static final IDENTITY_VERSION_1:C = '!'


# instance fields
.field private final accountUuid:Ljava/lang/String;

.field private final flag:Lcom/fsck/k9/mail/Flag;

.field private final folderName:Ljava/lang/String;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V
    .locals 1
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "flag"    # Lcom/fsck/k9/mail/Flag;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/fsck/k9/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageReference;->accountUuid:Ljava/lang/String;

    .line 56
    invoke-static {p2}, Lcom/fsck/k9/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageReference;->folderName:Ljava/lang/String;

    .line 57
    invoke-static {p3}, Lcom/fsck/k9/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageReference;->uid:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/fsck/k9/activity/MessageReference;->flag:Lcom/fsck/k9/mail/Flag;

    .line 59
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;
    .locals 10
    .param p0, "identity"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 27
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x21

    if-eq v7, v8, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v6

    .line 31
    :cond_1
    new-instance v4, Ljava/util/StringTokenizer;

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-direct {v4, v7, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    .local v4, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    .line 36
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "folderName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "uid":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_2

    .line 41
    new-instance v7, Lcom/fsck/k9/activity/MessageReference;

    invoke-direct {v7, v0, v3, v5, v6}, Lcom/fsck/k9/activity/MessageReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V

    move-object v6, v7

    goto :goto_0

    .line 46
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 51
    .local v2, "flag":Lcom/fsck/k9/mail/Flag;
    new-instance v6, Lcom/fsck/k9/activity/MessageReference;

    invoke-direct {v6, v0, v3, v5, v2}, Lcom/fsck/k9/activity/MessageReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V

    goto :goto_0

    .line 47
    .end local v2    # "flag":Lcom/fsck/k9/mail/Flag;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 81
    instance-of v1, p1, Lcom/fsck/k9/activity/MessageReference;

    if-nez v1, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 85
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/fsck/k9/activity/MessageReference;

    .line 85
    .local v0, "other":Lcom/fsck/k9/activity/MessageReference;
    iget-object v1, v0, Lcom/fsck/k9/activity/MessageReference;->accountUuid:Ljava/lang/String;

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageReference;->folderName:Ljava/lang/String;

    iget-object v3, v0, Lcom/fsck/k9/activity/MessageReference;->uid:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/fsck/k9/activity/MessageReference;->equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageReference;->accountUuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageReference;->folderName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageReference;->uid:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccountUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageReference;->accountUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Lcom/fsck/k9/mail/Flag;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageReference;->flag:Lcom/fsck/k9/mail/Flag;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageReference;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageReference;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 94
    const/16 v0, 0x1f

    .line 96
    .local v0, "MULTIPLIER":I
    const/4 v1, 0x1

    .line 97
    .local v1, "result":I
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageReference;->accountUuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 98
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageReference;->folderName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 99
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageReference;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 100
    return v1
.end method

.method public toIdentityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "refString":Ljava/lang/StringBuilder;
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->accountUuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->folderName:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->uid:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->flag:Lcom/fsck/k9/mail/Flag;

    if-eqz v1, :cond_0

    .line 72
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->flag:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Flag;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageReference{accountUuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->accountUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folderName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->flag:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withModifiedFlag(Lcom/fsck/k9/mail/Flag;)Lcom/fsck/k9/activity/MessageReference;
    .locals 4
    .param p1, "newFlag"    # Lcom/fsck/k9/mail/Flag;

    .prologue
    .line 134
    new-instance v0, Lcom/fsck/k9/activity/MessageReference;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->accountUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageReference;->folderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageReference;->uid:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fsck/k9/activity/MessageReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V

    return-object v0
.end method

.method public withModifiedUid(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;
    .locals 4
    .param p1, "newUid"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Lcom/fsck/k9/activity/MessageReference;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageReference;->accountUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageReference;->folderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageReference;->flag:Lcom/fsck/k9/mail/Flag;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fsck/k9/activity/MessageReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V

    return-object v0
.end method
