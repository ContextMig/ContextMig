.class public Lcom/fsck/k9/fragment/MessageListHandler;
.super Landroid/os/Handler;
.source "MessageListHandler.java"


# static fields
.field private static final ACTION_FOLDER_LOADING:I = 0x1

.field private static final ACTION_GO_BACK:I = 0x5

.field private static final ACTION_OPEN_MESSAGE:I = 0x7

.field private static final ACTION_PROGRESS:I = 0x3

.field private static final ACTION_REFRESH_TITLE:I = 0x2

.field private static final ACTION_REMOTE_SEARCH_FINISHED:I = 0x4

.field private static final ACTION_RESTORE_LIST_POSITION:I = 0x6


# instance fields
.field private mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fsck/k9/fragment/MessageListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fsck/k9/fragment/MessageListFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fsck/k9/fragment/MessageListHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/fragment/MessageListHandler;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/fragment/MessageListHandler;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListHandler;->mFragment:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public folderLoading(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "loading"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-static {p0, v2, v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 38
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 36
    goto :goto_0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 70
    const/4 v1, 0x5

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 92
    iget-object v7, p0, Lcom/fsck/k9/fragment/MessageListHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/fragment/MessageListFragment;

    .line 93
    .local v2, "fragment":Lcom/fsck/k9/fragment/MessageListFragment;
    if-nez v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 106
    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 107
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 111
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_1

    :pswitch_0
    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "folder":Ljava/lang/String;
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v3, :cond_2

    .line 115
    .local v3, "loading":Z
    :goto_1
    invoke-virtual {v2, v1, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->folderLoading(Ljava/lang/String;Z)V

    goto :goto_0

    .line 100
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "folder":Ljava/lang/String;
    .end local v3    # "loading":Z
    :pswitch_2
    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->remoteSearchFinished()V

    goto :goto_0

    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "folder":Ljava/lang/String;
    :cond_2
    move v3, v6

    .line 114
    goto :goto_1

    .line 119
    .end local v1    # "folder":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->updateTitle()V

    goto :goto_0

    .line 123
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v3, :cond_3

    move v5, v3

    .line 124
    .local v5, "progress":Z
    :goto_2
    invoke-virtual {v2, v5}, Lcom/fsck/k9/fragment/MessageListFragment;->progress(Z)V

    goto :goto_0

    .end local v5    # "progress":Z
    :cond_3
    move v5, v6

    .line 123
    goto :goto_2

    .line 128
    :pswitch_5
    iget-object v6, v2, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v6}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->goBack()V

    goto :goto_0

    .line 132
    :pswitch_6
    iget-object v7, v2, Lcom/fsck/k9/fragment/MessageListFragment;->listView:Landroid/widget/ListView;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 136
    :pswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/fsck/k9/activity/MessageReference;

    .line 137
    .local v4, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget-object v6, v2, Lcom/fsck/k9/fragment/MessageListFragment;->fragmentListener:Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;

    invoke-interface {v6, v4}, Lcom/fsck/k9/fragment/MessageListFragment$MessageListFragmentListener;->openMessage(Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch

    .line 111
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public openMessage(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 2
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 85
    const/4 v1, 0x7

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return-void
.end method

.method public progress(Z)V
    .locals 4
    .param p1, "progress"    # Z

    .prologue
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 49
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 47
    goto :goto_0
.end method

.method public refreshTitle()V
    .locals 2

    .prologue
    .line 42
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 43
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    return-void
.end method

.method public remoteSearchFinished()V
    .locals 2

    .prologue
    .line 53
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 54
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    return-void
.end method

.method public restoreListPosition()V
    .locals 4

    .prologue
    .line 75
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/fragment/MessageListFragment;

    .line 76
    .local v0, "fragment":Lcom/fsck/k9/fragment/MessageListFragment;
    if-eqz v0, :cond_0

    .line 77
    const/4 v2, 0x6

    iget-object v3, v0, Lcom/fsck/k9/fragment/MessageListFragment;->savedListState:Landroid/os/Parcelable;

    invoke-static {p0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 79
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/fsck/k9/fragment/MessageListFragment;->savedListState:Landroid/os/Parcelable;

    .line 80
    invoke-virtual {p0, v1}, Lcom/fsck/k9/fragment/MessageListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public updateFooter(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lcom/fsck/k9/fragment/MessageListHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/fragment/MessageListHandler$1;-><init>(Lcom/fsck/k9/fragment/MessageListHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fsck/k9/fragment/MessageListHandler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method
