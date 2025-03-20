.class Lcom/dropbox/sync/android/DbxAccount$4;
.super Ljava/lang/Object;
.source "DbxAccount.java"

# interfaces
.implements Lcom/dropbox/sync/android/NativeApp$UnlinkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxAccount;->doInitialize(Lcom/dropbox/sync/android/CoreConfig;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/NativeLib;Ljava/io/File;)Lcom/dropbox/sync/android/NativeApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxAccount;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccount$4;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlink()V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount$4;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxAccount;->access$400(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    invoke-static {}, Lcom/dropbox/sync/android/DbxAccount;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server indicated that user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxAccount$4;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-static {v3}, Lcom/dropbox/sync/android/DbxAccount;->access$300(Lcom/dropbox/sync/android/DbxAccount;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is unlinked."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->getInstance()Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount$4;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->processServerInitiatedUnlink(Lcom/dropbox/sync/android/DbxAccount;)V

    .line 223
    return-void
.end method
