.class Lcom/fsck/k9/provider/AttachmentTempFileProvider$1;
.super Landroid/os/AsyncTask;
.source "AttachmentTempFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/provider/AttachmentTempFileProvider;->onTrimMemory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/provider/AttachmentTempFileProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fsck/k9/provider/AttachmentTempFileProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/provider/AttachmentTempFileProvider;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/fsck/k9/provider/AttachmentTempFileProvider$1;->this$0:Lcom/fsck/k9/provider/AttachmentTempFileProvider;

    iput-object p2, p0, Lcom/fsck/k9/provider/AttachmentTempFileProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/provider/AttachmentTempFileProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fsck/k9/provider/AttachmentTempFileProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->deleteOldTemporaryFiles(Landroid/content/Context;)Z

    .line 156
    const/4 v0, 0x0

    return-object v0
.end method
