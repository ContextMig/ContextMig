.class Lcom/fsck/k9/activity/MessageCompose$10$2;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageCompose$10;->onDownloadErrorNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageCompose$10;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/MessageCompose$10;

    .prologue
    .line 1632
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$10$2;->this$1:Lcom/fsck/k9/activity/MessageCompose$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$10$2;->this$1:Lcom/fsck/k9/activity/MessageCompose$10;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageCompose$10;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const v1, 0x7f07039a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1636
    return-void
.end method
