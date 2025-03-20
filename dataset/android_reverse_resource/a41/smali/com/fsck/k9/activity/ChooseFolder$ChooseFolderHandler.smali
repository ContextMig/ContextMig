.class Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
.super Landroid/os/Handler;
.source "ChooseFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/ChooseFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseFolderHandler"
.end annotation


# static fields
.field private static final MSG_PROGRESS:I = 0x1

.field private static final MSG_SET_SELECTED_FOLDER:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ChooseFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseFolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/ChooseFolder;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/ChooseFolder;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public progress(Z)V
    .locals 2
    .param p1, "progress"    # Z

    .prologue
    const/4 v1, 0x1

    .line 160
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 161
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 162
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 163
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void

    .line 162
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelectedFolder(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 167
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 168
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 170
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    return-void
.end method
