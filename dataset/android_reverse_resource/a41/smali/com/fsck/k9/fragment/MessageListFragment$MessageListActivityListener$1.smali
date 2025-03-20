.class Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->remoteSearchFailed(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener$1;->this$1:Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1305
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener$1;->this$1:Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;

    iget-object v1, v1, Lcom/fsck/k9/fragment/MessageListFragment$MessageListActivityListener;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1306
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1307
    const v1, 0x7f07032c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1308
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1310
    :cond_0
    return-void
.end method
