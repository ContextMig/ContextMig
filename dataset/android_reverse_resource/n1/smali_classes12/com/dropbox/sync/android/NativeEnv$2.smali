.class final Lcom/dropbox/sync/android/NativeEnv$2;
.super Ljava/lang/Object;
.source "NativeEnv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/NativeEnv;->createThread(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arg:J

.field final synthetic val$func:J


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 298
    iput-wide p1, p0, Lcom/dropbox/sync/android/NativeEnv$2;->val$func:J

    iput-wide p3, p0, Lcom/dropbox/sync/android/NativeEnv$2;->val$arg:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 302
    :try_start_0
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeEnv$2;->val$func:J

    iget-wide v4, p0, Lcom/dropbox/sync/android/NativeEnv$2;->val$arg:J

    invoke-static {v2, v3, v4, v5}, Lcom/dropbox/sync/android/NativeEnv;->access$000(JJ)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    const-string v2, "Native thread failed."

    invoke-direct {v1, v2, v0}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
