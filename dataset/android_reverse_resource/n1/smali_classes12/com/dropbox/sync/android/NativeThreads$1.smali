.class final Lcom/dropbox/sync/android/NativeThreads$1;
.super Ljava/lang/Object;
.source "NativeThreads.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/NativeThreads;->createNativeThreads(Lcom/dropbox/sync/android/CoreLogger;JJ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nativeObjHandle:J

.field final synthetic val$nativeRunFuncHandle:J

.field final synthetic val$threadIndex:I


# direct methods
.method constructor <init>(JJI)V
    .locals 1

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/dropbox/sync/android/NativeThreads$1;->val$nativeRunFuncHandle:J

    iput-wide p3, p0, Lcom/dropbox/sync/android/NativeThreads$1;->val$nativeObjHandle:J

    iput p5, p0, Lcom/dropbox/sync/android/NativeThreads$1;->val$threadIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 148
    :try_start_0
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeThreads$1;->val$nativeRunFuncHandle:J

    iget-wide v4, p0, Lcom/dropbox/sync/android/NativeThreads$1;->val$nativeObjHandle:J

    iget v1, p0, Lcom/dropbox/sync/android/NativeThreads$1;->val$threadIndex:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/dropbox/sync/android/NativeThreads;->access$000(JJI)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    const-string v2, "Native thread failed."

    invoke-direct {v1, v2, v0}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
