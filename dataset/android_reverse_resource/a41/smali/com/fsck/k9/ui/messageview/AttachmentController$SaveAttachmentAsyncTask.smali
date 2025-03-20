.class Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;
.super Landroid/os/AsyncTask;
.source "AttachmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/messageview/AttachmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveAttachmentAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/ui/messageview/AttachmentController;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/ui/messageview/AttachmentController;Lcom/fsck/k9/ui/messageview/AttachmentController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;
    .param p2, "x1"    # Lcom/fsck/k9/ui/messageview/AttachmentController$1;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;-><init>(Lcom/fsck/k9/ui/messageview/AttachmentController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p1, "params"    # [Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 352
    const/4 v2, 0x0

    :try_start_0
    aget-object v0, p1, v2

    .line 353
    .local v0, "directory":Ljava/io/File;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v2, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$900(Lcom/fsck/k9/ui/messageview/AttachmentController;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 356
    .end local v0    # "directory":Ljava/io/File;
    :goto_0
    return-object v2

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Error saving attachment"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 342
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->doInBackground([Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$200(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$100(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->enableAttachmentButtons(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 363
    if-nez p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$1000(Lcom/fsck/k9/ui/messageview/AttachmentController;)V

    .line 366
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 342
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$200(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$100(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->disableAttachmentButtons(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 347
    return-void
.end method
