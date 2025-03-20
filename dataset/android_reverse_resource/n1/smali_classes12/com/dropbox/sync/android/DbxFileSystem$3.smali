.class Lcom/dropbox/sync/android/DbxFileSystem$3;
.super Ljava/lang/Object;
.source "DbxFileSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxFileSystem;->syncStatusCallback(Lcom/dropbox/sync/android/NativeFileSystem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxFileSystem;

.field final synthetic val$postListeners:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxFileSystem;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFileSystem$3;->this$0:Lcom/dropbox/sync/android/DbxFileSystem;

    iput-object p2, p0, Lcom/dropbox/sync/android/DbxFileSystem$3;->val$postListeners:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1087
    :goto_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem$3;->val$postListeners:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem$3;->val$postListeners:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFileSystem$SyncStatusListener;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem$3;->this$0:Lcom/dropbox/sync/android/DbxFileSystem;

    invoke-interface {v0, v1}, Lcom/dropbox/sync/android/DbxFileSystem$SyncStatusListener;->onSyncStatusChange(Lcom/dropbox/sync/android/DbxFileSystem;)V

    goto :goto_0

    .line 1090
    :cond_0
    return-void
.end method
