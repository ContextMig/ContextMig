.class Lcom/dropbox/sync/android/DbxFileSystem$1;
.super Ljava/lang/Object;
.source "DbxFileSystem.java"

# interfaces
.implements Lcom/dropbox/sync/android/NativeFileSystem$SyncStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxFileSystem;->doInitialize(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/util/EnumSet;)Lcom/dropbox/sync/android/NativeFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxFileSystem;

.field final synthetic val$nativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxFileSystem;Lcom/dropbox/sync/android/NativeFileSystem;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFileSystem$1;->this$0:Lcom/dropbox/sync/android/DbxFileSystem;

    iput-object p2, p0, Lcom/dropbox/sync/android/DbxFileSystem$1;->val$nativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncStatusChange()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem$1;->this$0:Lcom/dropbox/sync/android/DbxFileSystem;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileSystem$1;->val$nativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/DbxFileSystem;->access$300(Lcom/dropbox/sync/android/DbxFileSystem;Lcom/dropbox/sync/android/NativeFileSystem;)V

    .line 336
    return-void
.end method
