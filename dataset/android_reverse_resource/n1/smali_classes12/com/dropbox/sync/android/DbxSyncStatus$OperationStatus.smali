.class public final Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;
.super Ljava/lang/Object;
.source "DbxSyncStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxSyncStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationStatus"
.end annotation


# instance fields
.field public final failure:Lcom/dropbox/sync/android/DbxThrowable;

.field public final inProgress:Z


# direct methods
.method constructor <init>(ZLcom/dropbox/sync/android/DbxThrowable;)V
    .locals 0
    .param p1, "inProgress"    # Z
    .param p2, "failure"    # Lcom/dropbox/sync/android/DbxThrowable;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->inProgress:Z

    .line 31
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->inProgress:Z

    if-eqz v1, :cond_1

    const-string v1, "in progress"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    if-eqz v1, :cond_0

    .line 39
    const-string v1, ", failure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;->failure:Lcom/dropbox/sync/android/DbxThrowable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 37
    :cond_1
    const-string v1, "idle"

    goto :goto_0
.end method
