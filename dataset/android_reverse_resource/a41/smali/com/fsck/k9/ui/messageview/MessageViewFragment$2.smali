.class Lcom/fsck/k9/ui/messageview/MessageViewFragment$2;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$000(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/ui/messageview/MessageTopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->disableDownloadButton()V

    .line 193
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->access$100(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/activity/MessageLoaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->downloadCompleteMessage()V

    .line 194
    return-void
.end method
