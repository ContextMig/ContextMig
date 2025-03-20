.class Lcom/fsck/k9/fragment/MessageListFragment$2;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/fragment/MessageListFragment;->initializePullToRefresh(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/fragment/MessageListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment$2;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$2;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$100(Lcom/fsck/k9/fragment/MessageListFragment;)V

    .line 739
    return-void
.end method
