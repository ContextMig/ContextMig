.class Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunServerInitiatedUnlink;
.super Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;
.source "CoreBackgroundProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreBackgroundProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunServerInitiatedUnlink"
.end annotation


# instance fields
.field private final mAcct:Lcom/dropbox/sync/android/DbxAccount;

.field final synthetic this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 4
    .param p2, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunServerInitiatedUnlink;->this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    .line 166
    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxAccount;->getLogger()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;-><init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/CoreLogger;)V

    .line 167
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunServerInitiatedUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    .line 168
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunServerInitiatedUnlink;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling task after server-initiated unlink of uid=\'"

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

    .line 170
    return-void
.end method


# virtual methods
.method public attemptRun()Z
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunServerInitiatedUnlink;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up account for uid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunServerInitiatedUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' after unlink from server."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunServerInitiatedUnlink;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxAccount;->doUnlink(Z)V

    .line 177
    const/4 v0, 0x1

    return v0
.end method
