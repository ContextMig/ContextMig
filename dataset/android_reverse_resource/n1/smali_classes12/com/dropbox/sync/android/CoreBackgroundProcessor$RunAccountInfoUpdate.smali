.class Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;
.super Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;
.source "CoreBackgroundProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreBackgroundProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunAccountInfoUpdate"
.end annotation


# static fields
.field private static final INITIAL_RETRY_SECONDS:I = 0x1

.field private static final MAX_RETRY_SECONDS:I = 0x3c


# instance fields
.field private final mAcct:Lcom/dropbox/sync/android/DbxAccount;

.field final synthetic this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 4
    .param p2, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;->this$0:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    .line 199
    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxAccount;->getLogger()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x3c

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;-><init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/CoreLogger;II)V

    .line 200
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    .line 201
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling task to update account info for uid=\'"

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

    .line 203
    return-void
.end method


# virtual methods
.method public attemptRun()Z
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating account info for uid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' token=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxAccount;->getToken()Lcom/dropbox/sync/android/DbxToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->backgroundUpdateAccountInfo()Z

    move-result v0

    return v0
.end method
