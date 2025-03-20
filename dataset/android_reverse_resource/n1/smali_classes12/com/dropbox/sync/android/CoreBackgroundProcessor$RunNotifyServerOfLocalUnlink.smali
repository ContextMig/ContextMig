.class Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;
.super Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;
.source "CoreBackgroundProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreBackgroundProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunNotifyServerOfLocalUnlink"
.end annotation


# static fields
.field private static final INITIAL_RETRY_SECONDS:I = 0x5

.field private static final MAX_RETRY_SECONDS:I = 0xe10


# instance fields
.field private final mAcct:Lcom/dropbox/sync/android/DbxAccount;

.field final synthetic this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 4
    .param p2, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    .line 108
    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxAccount;->getLogger()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0xe10

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;-><init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/CoreLogger;II)V

    .line 109
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    .line 110
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling task to notify server of unlink of uid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' token=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxAccount;->getToken()Lcom/dropbox/sync/android/DbxToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public attemptRun()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying server of unlink for uid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' token=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxAccount;->getToken()Lcom/dropbox/sync/android/DbxToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxAccount;->getNativeApp()Lcom/dropbox/sync/android/NativeApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/sync/android/NativeApp;->unlinkAuth()V

    .line 120
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxAccount;->getCoreAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v2, v3}, Lcom/dropbox/sync/android/CoreAccountManager;->onServerNotifiedOfUnlink(Lcom/dropbox/sync/android/DbxAccount;)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/sync/android/DbxRuntimeException$Shutdown; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxAccount;->getNativeApp()Lcom/dropbox/sync/android/NativeApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/sync/android/NativeApp;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to notify server of unlink for uid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' token=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxAccount;->getToken()Lcom/dropbox/sync/android/DbxToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    const/4 v1, 0x0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to notify server of unlink due to shutdown for uid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' token=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxAccount;->getToken()Lcom/dropbox/sync/android/DbxToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Lcom/dropbox/sync/android/DbxRuntimeException$Shutdown;
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to notify server of unlink due to shutdown for uid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' token=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxAccount;->getToken()Lcom/dropbox/sync/android/DbxToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
