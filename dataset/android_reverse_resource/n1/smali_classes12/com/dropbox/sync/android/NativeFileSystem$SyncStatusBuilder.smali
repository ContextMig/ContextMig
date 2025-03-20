.class Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusBuilder;
.super Ljava/lang/Object;
.source "NativeFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncStatusBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/NativeFileSystem;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/NativeFileSystem;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    return-void
.end method


# virtual methods
.method public createStatus(ZZILjava/lang/String;ZILjava/lang/String;ZILjava/lang/String;)Lcom/dropbox/sync/android/DbxSyncStatus;
    .locals 9
    .param p1, "isSyncActive"    # Z
    .param p2, "metaInProgress"    # Z
    .param p3, "metaError"    # I
    .param p4, "metaMessage"    # Ljava/lang/String;
    .param p5, "downInProgres"    # Z
    .param p6, "downError"    # I
    .param p7, "downMessage"    # Ljava/lang/String;
    .param p8, "upInProgress"    # Z
    .param p9, "upError"    # I
    .param p10, "upMessage"    # Ljava/lang/String;

    .prologue
    .line 1011
    :try_start_0
    new-instance v4, Lcom/dropbox/sync/android/DbxSyncStatus;

    new-instance v5, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-direct {v5, p2, v3}, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;-><init>(ZLcom/dropbox/sync/android/DbxThrowable;)V

    new-instance v6, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    if-nez p6, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-direct {v6, p5, v3}, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;-><init>(ZLcom/dropbox/sync/android/DbxThrowable;)V

    new-instance v7, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;

    if-nez p9, :cond_2

    const/4 v3, 0x0

    :goto_2
    move/from16 v0, p8

    invoke-direct {v7, v0, v3}, Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;-><init>(ZLcom/dropbox/sync/android/DbxThrowable;)V

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/dropbox/sync/android/DbxSyncStatus;-><init>(ZLcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;Lcom/dropbox/sync/android/DbxSyncStatus$OperationStatus;)V

    return-object v4

    :cond_0
    const-string v3, "metadata sync status"

    const/4 v6, 0x0

    invoke-static {v3, p3, p4, v6}, Lcom/dropbox/sync/android/NativeLib;->exceptionFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxThrowable;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "upload status"

    const/4 v7, 0x0

    move-object/from16 v0, p7

    invoke-static {v3, p6, v0, v7}, Lcom/dropbox/sync/android/NativeLib;->exceptionFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxThrowable;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "download status"

    const/4 v8, 0x0

    move/from16 v0, p9

    move-object/from16 v1, p10

    invoke-static {v3, v0, v1, v8}, Lcom/dropbox/sync/android/NativeLib;->exceptionFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxThrowable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_2

    .line 1021
    :catch_0
    move-exception v2

    .line 1022
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-object v3, v3, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 1023
    throw v2

    .line 1024
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 1025
    .local v2, "e":Ljava/lang/Error;
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-object v3, v3, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 1026
    throw v2
.end method
