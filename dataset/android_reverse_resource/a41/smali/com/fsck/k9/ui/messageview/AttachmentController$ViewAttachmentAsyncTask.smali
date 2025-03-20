.class Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;
.super Landroid/os/AsyncTask;
.source "AttachmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/messageview/AttachmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAttachmentAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/ui/messageview/AttachmentController;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/ui/messageview/AttachmentController;Lcom/fsck/k9/ui/messageview/AttachmentController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;
    .param p2, "x1"    # Lcom/fsck/k9/ui/messageview/AttachmentController$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;-><init>(Lcom/fsck/k9/ui/messageview/AttachmentController;)V

    return-void
.end method

.method private viewAttachment(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 332
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v2}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$700(Lcom/fsck/k9/ui/messageview/AttachmentController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Could not display attachment of type %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v4}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$100(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v2}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$700(Lcom/fsck/k9/ui/messageview/AttachmentController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702b6

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v5}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$100(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v2, v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$800(Lcom/fsck/k9/ui/messageview/AttachmentController;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$600(Lcom/fsck/k9/ui/messageview/AttachmentController;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->viewAttachment(Landroid/content/Intent;)V

    .line 327
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$200(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$100(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->enableAttachmentButtons(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 328
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 312
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$200(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->this$0:Lcom/fsck/k9/ui/messageview/AttachmentController;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->access$100(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->disableAttachmentButtons(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 317
    return-void
.end method
