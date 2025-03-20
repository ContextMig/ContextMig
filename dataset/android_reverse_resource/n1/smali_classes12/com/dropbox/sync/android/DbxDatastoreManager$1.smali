.class Lcom/dropbox/sync/android/DbxDatastoreManager$1;
.super Ljava/lang/Object;
.source "DbxDatastoreManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxDatastoreManager;->listCallback(Lcom/dropbox/sync/android/NativeDatastoreManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxDatastoreManager;

.field final synthetic val$postListeners:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxDatastoreManager;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager$1;->this$0:Lcom/dropbox/sync/android/DbxDatastoreManager;

    iput-object p2, p0, Lcom/dropbox/sync/android/DbxDatastoreManager$1;->val$postListeners:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 486
    :goto_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager$1;->val$postListeners:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager$1;->val$postListeners:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxDatastoreManager$ListListener;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager$1;->this$0:Lcom/dropbox/sync/android/DbxDatastoreManager;

    invoke-interface {v0, v1}, Lcom/dropbox/sync/android/DbxDatastoreManager$ListListener;->onDatastoreListChange(Lcom/dropbox/sync/android/DbxDatastoreManager;)V

    goto :goto_0

    .line 489
    :cond_0
    return-void
.end method
