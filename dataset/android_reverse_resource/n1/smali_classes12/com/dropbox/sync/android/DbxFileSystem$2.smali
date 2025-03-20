.class Lcom/dropbox/sync/android/DbxFileSystem$2;
.super Ljava/lang/Object;
.source "DbxFileSystem.java"

# interfaces
.implements Lcom/dropbox/sync/android/NativeFileSystem$PathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxFileSystem;->addPathListener(Lcom/dropbox/sync/android/DbxFileSystem$PathListener;Lcom/dropbox/sync/android/DbxPath;Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxFileSystem;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxFileSystem;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFileSystem$2;->this$0:Lcom/dropbox/sync/android/DbxFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPathChange(Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;)V
    .locals 1
    .param p1, "registeredKey"    # Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileSystem$2;->this$0:Lcom/dropbox/sync/android/DbxFileSystem;

    invoke-static {v0, p1}, Lcom/dropbox/sync/android/DbxFileSystem;->access$400(Lcom/dropbox/sync/android/DbxFileSystem;Lcom/dropbox/sync/android/NativeFileSystem$PathListenerKey;)V

    .line 654
    return-void
.end method
