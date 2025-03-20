.class Lcom/fsck/k9/activity/MessageCompose$13;
.super Landroid/os/Handler;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$13;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1783
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1804
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1807
    :goto_0
    return-void

    .line 1785
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$13;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v0, v4}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 1788
    :pswitch_2
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$13;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 1791
    :pswitch_3
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$13;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/fsck/k9/activity/MessageCompose;->access$1202(Lcom/fsck/k9/activity/MessageCompose;J)J

    .line 1792
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$13;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$13;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const v2, 0x7f0702ab

    .line 1794
    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1792
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1795
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1798
    :pswitch_4
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$13;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$13;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const v2, 0x7f0702a4

    .line 1800
    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1798
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1801
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
