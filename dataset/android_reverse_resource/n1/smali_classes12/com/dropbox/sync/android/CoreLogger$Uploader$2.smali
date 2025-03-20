.class Lcom/dropbox/sync/android/CoreLogger$Uploader$2;
.super Ljava/lang/Object;
.source "CoreLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/CoreLogger$Uploader;-><init>(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/CoreLogger$Uploader;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/CoreLogger$Uploader;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader$2;->this$0:Lcom/dropbox/sync/android/CoreLogger$Uploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader$2;->this$0:Lcom/dropbox/sync/android/CoreLogger$Uploader;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreLogger$Uploader;->access$200(Lcom/dropbox/sync/android/CoreLogger$Uploader;)Lcom/dropbox/sync/android/LogUploaderInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/LogUploaderInterface;->logUploadThread()V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException$Unauthorized; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
