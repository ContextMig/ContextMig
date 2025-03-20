.class public Lcom/dropbox/sync/android/DbxDatastoreStatus;
.super Ljava/lang/Object;
.source "DbxDatastoreStatus.java"


# instance fields
.field public final downloadError:Lcom/dropbox/sync/android/DbxThrowable;

.field public final hasIncoming:Z

.field public final hasOutgoing:Z

.field public final isConnected:Z

.field public final isDownloading:Z

.field public final isUploading:Z

.field public final needsReset:Z

.field public final uploadError:Lcom/dropbox/sync/android/DbxThrowable;


# direct methods
.method constructor <init>(ILcom/dropbox/sync/android/DbxThrowable;Lcom/dropbox/sync/android/DbxThrowable;)V
    .locals 3
    .param p1, "nativeFlags"    # I
    .param p2, "dlErr"    # Lcom/dropbox/sync/android/DbxThrowable;
    .param p3, "ulErr"    # Lcom/dropbox/sync/android/DbxThrowable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->isConnected:Z

    .line 66
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->isDownloading:Z

    .line 67
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->isUploading:Z

    .line 68
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->hasIncoming:Z

    .line 69
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->hasOutgoing:Z

    .line 70
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->needsReset:Z

    .line 71
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->downloadError:Lcom/dropbox/sync/android/DbxThrowable;

    .line 72
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->uploadError:Lcom/dropbox/sync/android/DbxThrowable;

    .line 73
    return-void

    :cond_0
    move v0, v2

    .line 65
    goto :goto_0

    :cond_1
    move v0, v2

    .line 66
    goto :goto_1

    :cond_2
    move v0, v2

    .line 67
    goto :goto_2

    :cond_3
    move v0, v2

    .line 68
    goto :goto_3

    :cond_4
    move v0, v2

    .line 69
    goto :goto_4

    :cond_5
    move v1, v2

    .line 70
    goto :goto_5
.end method


# virtual methods
.method public final anyError()Lcom/dropbox/sync/android/DbxThrowable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->downloadError:Lcom/dropbox/sync/android/DbxThrowable;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->downloadError:Lcom/dropbox/sync/android/DbxThrowable;

    .line 85
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->uploadError:Lcom/dropbox/sync/android/DbxThrowable;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->uploadError:Lcom/dropbox/sync/android/DbxThrowable;

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<status=<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->isConnected:Z

    if-eqz v1, :cond_5

    const-string v1, "connected"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->isDownloading:Z

    if-eqz v1, :cond_0

    .line 94
    const-string v1, ", downloading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->isUploading:Z

    if-eqz v1, :cond_1

    .line 97
    const-string v1, ", uploading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_1
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->hasIncoming:Z

    if-eqz v1, :cond_2

    .line 100
    const-string v1, ", incoming"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->hasOutgoing:Z

    if-eqz v1, :cond_3

    .line 103
    const-string v1, ", outgoing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_3
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->needsReset:Z

    if-eqz v1, :cond_4

    .line 106
    const-string v1, ", needsReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_4
    const-string v1, ">, downloadError=<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->downloadError:Lcom/dropbox/sync/android/DbxThrowable;

    if-nez v1, :cond_6

    const-string v1, "none"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ">, uploadError=<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->uploadError:Lcom/dropbox/sync/android/DbxThrowable;

    if-nez v1, :cond_7

    const-string v1, "none"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ">>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    :cond_5
    const-string v1, "disconnected"

    goto :goto_0

    .line 109
    :cond_6
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->downloadError:Lcom/dropbox/sync/android/DbxThrowable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 111
    :cond_7
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreStatus;->uploadError:Lcom/dropbox/sync/android/DbxThrowable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
