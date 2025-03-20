.class Lcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;
.super Ljava/lang/Object;
.source "NativeFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileStatusBuilder"
.end annotation


# static fields
.field private static final NATIVE_OP_DOWNLOAD:I = 0x1

.field private static final NATIVE_OP_IDLE:I = 0x0

.field private static final NATIVE_OP_UPLOAD:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/NativeFileSystem;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/NativeFileSystem;)V
    .locals 0

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    return-void
.end method

.method private xlateOp(I)Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;
    .locals 5
    .param p1, "nativeOpPending"    # I

    .prologue
    .line 1061
    packed-switch p1, :pswitch_data_0

    .line 1069
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled native pending op state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1063
    :pswitch_0
    sget-object v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->NONE:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    .line 1067
    :goto_0
    return-object v0

    .line 1065
    :pswitch_1
    sget-object v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->DOWNLOAD:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    goto :goto_0

    .line 1067
    :pswitch_2
    sget-object v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->UPLOAD:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    goto :goto_0

    .line 1061
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createStatus(ZZIILjava/lang/String;JJ)Lcom/dropbox/sync/android/DbxFileStatus;
    .locals 10
    .param p1, "isCached"    # Z
    .param p2, "isLatest"    # Z
    .param p3, "nativeOpPending"    # I
    .param p4, "errCode"    # I
    .param p5, "errMsg"    # Ljava/lang/String;
    .param p6, "bytesTransferred"    # J
    .param p8, "bytesTotal"    # J

    .prologue
    .line 1043
    :try_start_0
    new-instance v1, Lcom/dropbox/sync/android/DbxFileStatus;

    invoke-direct {p0, p3}, Lcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;->xlateOp(I)Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    move-result-object v4

    if-nez p4, :cond_0

    const/4 v5, 0x0

    :goto_0
    move v2, p1

    move v3, p2

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/dropbox/sync/android/DbxFileStatus;-><init>(ZZLcom/dropbox/sync/android/DbxFileStatus$PendingOperation;Lcom/dropbox/sync/android/DbxThrowable;JJ)V

    return-object v1

    :cond_0
    const-string v2, "download status"

    const/4 v3, 0x0

    invoke-static {v2, p4, p5, v3}, Lcom/dropbox/sync/android/NativeLib;->exceptionFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxThrowable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-object v1, v1, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 1049
    throw v0

    .line 1050
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1051
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem$FileStatusBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-object v1, v1, Lcom/dropbox/sync/android/NativeFileSystem;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/NativeFileSystem;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 1052
    throw v0
.end method
