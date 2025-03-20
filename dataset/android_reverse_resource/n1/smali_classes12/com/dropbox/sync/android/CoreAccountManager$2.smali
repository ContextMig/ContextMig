.class final Lcom/dropbox/sync/android/CoreAccountManager$2;
.super Ljava/lang/Object;
.source "CoreAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/CoreAccountManager;->notifyListeners(Ljava/util/Iterator;Lcom/dropbox/sync/android/DbxAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$postAccount:Lcom/dropbox/sync/android/DbxAccount;

.field final synthetic val$postListeners:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreAccountManager$2;->val$postListeners:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/dropbox/sync/android/CoreAccountManager$2;->val$postAccount:Lcom/dropbox/sync/android/DbxAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 827
    :goto_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager$2;->val$postListeners:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreAccountManager$2;->val$postListeners:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreAccountManager$2;->val$postAccount:Lcom/dropbox/sync/android/DbxAccount;

    invoke-interface {v0, v1}, Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;->onLinkedAccountChange(Lcom/dropbox/sync/android/DbxAccount;)V

    goto :goto_0

    .line 830
    :cond_0
    return-void
.end method
