.class Lcom/fsck/k9/message/MessageBuilder$2;
.super Landroid/os/AsyncTask;
.source "MessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/message/MessageBuilder;->onActivityResult(IILandroid/content/Intent;Lcom/fsck/k9/message/MessageBuilder$Callback;)V
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
.field final synthetic this$0:Lcom/fsck/k9/message/MessageBuilder;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/message/MessageBuilder;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/message/MessageBuilder;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder$2;->this$0:Lcom/fsck/k9/message/MessageBuilder;

    iput p2, p0, Lcom/fsck/k9/message/MessageBuilder$2;->val$requestCode:I

    iput-object p3, p0, Lcom/fsck/k9/message/MessageBuilder$2;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/MessageBuilder$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder$2;->this$0:Lcom/fsck/k9/message/MessageBuilder;

    iget v1, p0, Lcom/fsck/k9/message/MessageBuilder$2;->val$requestCode:I

    iget-object v2, p0, Lcom/fsck/k9/message/MessageBuilder$2;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/message/MessageBuilder;->buildMessageOnActivityResult(ILandroid/content/Intent;)V

    .line 528
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 524
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/MessageBuilder$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder$2;->this$0:Lcom/fsck/k9/message/MessageBuilder;

    invoke-virtual {v0}, Lcom/fsck/k9/message/MessageBuilder;->deliverResult()V

    .line 534
    return-void
.end method
