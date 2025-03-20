.class public final Lcom/dropbox/sync/android/DbxFileStatus;
.super Ljava/lang/Object;
.source "DbxFileStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;
    }
.end annotation


# instance fields
.field public final bytesTotal:J

.field public final bytesTransferred:J

.field public final failure:Lcom/dropbox/sync/android/DbxThrowable;

.field public isCached:Z

.field public isLatest:Z

.field public final pending:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;


# direct methods
.method constructor <init>(ZZLcom/dropbox/sync/android/DbxFileStatus$PendingOperation;Lcom/dropbox/sync/android/DbxThrowable;JJ)V
    .locals 3
    .param p1, "isCached"    # Z
    .param p2, "isLatest"    # Z
    .param p3, "pending"    # Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;
    .param p4, "failure"    # Lcom/dropbox/sync/android/DbxThrowable;
    .param p5, "bytesTransferred"    # J
    .param p7, "bytesTotal"    # J

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean p1, p0, Lcom/dropbox/sync/android/DbxFileStatus;->isCached:Z

    .line 94
    iput-boolean p2, p0, Lcom/dropbox/sync/android/DbxFileStatus;->isLatest:Z

    .line 95
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "upload must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxFileStatus;->pending:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    .line 97
    iput-object p4, p0, Lcom/dropbox/sync/android/DbxFileStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    .line 98
    iput-wide p5, p0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTransferred:J

    .line 99
    iput-wide p7, p0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTotal:J

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    instance-of v3, p1, Lcom/dropbox/sync/android/DbxFileStatus;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 106
    check-cast v0, Lcom/dropbox/sync/android/DbxFileStatus;

    .line 108
    .local v0, "other":Lcom/dropbox/sync/android/DbxFileStatus;
    iget-boolean v3, p0, Lcom/dropbox/sync/android/DbxFileStatus;->isCached:Z

    iget-boolean v4, v0, Lcom/dropbox/sync/android/DbxFileStatus;->isCached:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/sync/android/DbxFileStatus;->isLatest:Z

    iget-boolean v4, v0, Lcom/dropbox/sync/android/DbxFileStatus;->isLatest:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileStatus;->pending:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxFileStatus;->pending:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    invoke-virtual {v3, v4}, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxFileStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTransferred:J

    iget-wide v6, v0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTransferred:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTotal:J

    iget-wide v6, v0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTotal:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v4, 0x16

    const/16 v3, 0xb

    .line 118
    const/16 v0, 0x1f

    .line 119
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 120
    .local v1, "result":I
    iget-boolean v2, p0, Lcom/dropbox/sync/android/DbxFileStatus;->isCached:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 121
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Lcom/dropbox/sync/android/DbxFileStatus;->isLatest:Z

    if-eqz v5, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 122
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileStatus;->pending:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 123
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 124
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTransferred:J

    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTransferred:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 125
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTotal:J

    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTotal:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 126
    return v1

    :cond_0
    move v2, v4

    .line 120
    goto :goto_0

    :cond_1
    move v3, v4

    .line 121
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFileStatus;->isCached:Z

    if-eqz v0, :cond_0

    const-string v0, "cached"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFileStatus;->isLatest:Z

    if-eqz v0, :cond_1

    const-string v0, ", latest"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileStatus;->pending:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->getActivityDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTransferred:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFileStatus;->bytesTotal:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "uncached"

    goto :goto_0

    :cond_1
    const-string v0, "stale"

    goto :goto_1
.end method
