.class Lcom/dropbox/sync/android/DbxFile$1;
.super Ljava/lang/Object;
.source "DbxFile.java"

# interfaces
.implements Lcom/dropbox/sync/android/NativeFileSystem$FileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxFile;->addListener(Lcom/dropbox/sync/android/DbxFile$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxFile;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxFile;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFile$1;->this$0:Lcom/dropbox/sync/android/DbxFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileChange()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile$1;->this$0:Lcom/dropbox/sync/android/DbxFile;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxFile;->access$100(Lcom/dropbox/sync/android/DbxFile;)V

    .line 610
    return-void
.end method
