.class Lcom/dropbox/sync/android/CoreLogger$Uploader$1;
.super Ljava/lang/Object;
.source "CoreLogger.java"

# interfaces
.implements Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;


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
    .line 34
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader$1;->this$0:Lcom/dropbox/sync/android/CoreLogger$Uploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStatusChange()V
    .locals 6

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getInstance()Lcom/dropbox/sync/android/CoreNetworkStatus;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getStatus(Landroid/content/Context;)Lcom/dropbox/sync/android/DbxNetworkStatus;

    move-result-object v1

    .line 39
    .local v1, "status":Lcom/dropbox/sync/android/DbxNetworkStatus;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v2

    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting network status on global NativeEnv: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxNetworkStatus;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader$1;->this$0:Lcom/dropbox/sync/android/CoreLogger$Uploader;

    invoke-static {v2}, Lcom/dropbox/sync/android/CoreLogger$Uploader;->access$100(Lcom/dropbox/sync/android/CoreLogger$Uploader;)Lcom/dropbox/sync/android/NativeEnv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dropbox/sync/android/NativeEnv;->setNetworkStatus(Lcom/dropbox/sync/android/DbxNetworkStatus;)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "status":Lcom/dropbox/sync/android/DbxNetworkStatus;
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v2

    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to set online status on global NativeEnv."

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
