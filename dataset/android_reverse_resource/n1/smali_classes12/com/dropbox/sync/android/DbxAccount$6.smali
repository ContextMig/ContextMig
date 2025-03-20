.class Lcom/dropbox/sync/android/DbxAccount$6;
.super Ljava/lang/Object;
.source "DbxAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxAccount;->notifyListeners(Ljava/util/Iterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxAccount;

.field final synthetic val$listeners:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxAccount;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccount$6;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    iput-object p2, p0, Lcom/dropbox/sync/android/DbxAccount$6;->val$listeners:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 524
    :goto_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount$6;->val$listeners:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccount$6;->val$listeners:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxAccount$Listener;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount$6;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-interface {v0, v1}, Lcom/dropbox/sync/android/DbxAccount$Listener;->onAccountChange(Lcom/dropbox/sync/android/DbxAccount;)V

    goto :goto_0

    .line 527
    :cond_0
    return-void
.end method
