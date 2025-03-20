.class public final Lcom/dropbox/sync/android/DbxSyncStatus;
.super Ljava/lang/Object;
.source "DbxSyncStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;
    }
.end annotation


# instance fields
.field public final download:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

.field public final isSyncActive:Z

.field public final metadata:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

.field public final upload:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;


# direct methods
.method constructor <init>(ZLcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;)V
    .locals 2
    .param p1, "isSyncActive"    # Z
    .param p2, "metadata"    # Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;
    .param p3, "download"    # Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;
    .param p4, "upload"    # Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean p1, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->isSyncActive:Z

    .line 118
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "metadata must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->metadata:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    .line 120
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "download must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->download:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    .line 122
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "upload must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    iput-object p4, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->upload:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    .line 124
    return-void
.end method


# virtual methods
.method public anyFailure()Lcom/dropbox/sync/android/DbxThrowable;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->metadata:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    iget-object v0, v0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->metadata:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    iget-object v0, v0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    .line 106
    :goto_0
    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->download:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    iget-object v0, v0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->download:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    iget-object v0, v0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->upload:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    iget-object v0, v0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->upload:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    iget-object v0, v0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyInProgress()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->metadata:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    iget-boolean v0, v0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->inProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->download:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    iget-boolean v0, v0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->inProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->upload:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    iget-boolean v0, v0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->inProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->isSyncActive:Z

    if-eqz v0, :cond_0

    const-string v0, "sync active"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->metadata:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->download:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncStatus;->upload:Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "sync idle"

    goto :goto_0
.end method
