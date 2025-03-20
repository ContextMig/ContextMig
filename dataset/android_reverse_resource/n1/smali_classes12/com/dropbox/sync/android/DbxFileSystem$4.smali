.class Lcom/dropbox/sync/android/DbxFileSystem$4;
.super Ljava/lang/Object;
.source "DbxFileSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxFileSystem;->pathCallback(Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxFileSystem;

.field final synthetic val$postListeners:Ljava/util/Iterator;

.field final synthetic val$postMode:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

.field final synthetic val$postPath:Lcom/dropbox/sync/android/DbxPath;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxFileSystem;Ljava/util/Iterator;Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;)V
    .locals 0

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFileSystem$4;->this$0:Lcom/dropbox/sync/android/DbxFileSystem;

    iput-object p2, p0, Lcom/dropbox/sync/android/DbxFileSystem$4;->val$postListeners:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/dropbox/sync/android/DbxFileSystem$4;->val$postPath:Lcom/dropbox/sync/android/DbxPath;

    iput-object p4, p0, Lcom/dropbox/sync/android/DbxFileSystem$4;->val$postMode:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1105
    :goto_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem$4;->val$postListeners:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem$4;->val$postListeners:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem$4;->this$0:Lcom/dropbox/sync/android/DbxFileSystem;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileSystem$4;->val$postPath:Lcom/dropbox/sync/android/DbxPath;

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileSystem$4;->val$postMode:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    invoke-interface {v0, v1, v2, v3}, Lcom/dropbox/sync/android/DbxFileSystem$PathListener;->onPathChange(Lcom/dropbox/sync/android/DbxFileSystem;Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;)V

    goto :goto_0

    .line 1108
    :cond_0
    return-void
.end method
