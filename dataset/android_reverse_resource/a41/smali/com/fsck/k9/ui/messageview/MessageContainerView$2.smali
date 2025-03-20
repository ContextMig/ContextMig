.class Lcom/fsck/k9/ui/messageview/MessageContainerView$2;
.super Ljava/lang/Object;
.source "MessageContainerView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/MessageContainerView;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

.field final synthetic val$attachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

.field final synthetic val$inlineImage:Z

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;ZLcom/fsck/k9/mailstore/AttachmentViewInfo;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    iput-boolean p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->val$inlineImage:Z

    iput-object p3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->val$attachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iput-object p4, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 205
    :goto_0
    return v6

    .line 181
    :pswitch_0
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->val$inlineImage:Z

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-static {v2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->access$200(Lcom/fsck/k9/ui/messageview/MessageContainerView;)Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->val$attachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-interface {v2, v3}, Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;->onViewAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->val$uri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v3}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->access$000(Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->val$inlineImage:Z

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-static {v2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->access$200(Lcom/fsck/k9/ui/messageview/MessageContainerView;)Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->val$attachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-interface {v2, v3}, Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;->onSaveAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    goto :goto_0

    .line 194
    :cond_1
    new-instance v2, Lcom/fsck/k9/ui/messageview/DownloadImageTask;

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v3}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;-><init>(Landroid/content/Context;)V

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/fsck/k9/ui/messageview/DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0703c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-static {v2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->access$100(Lcom/fsck/k9/ui/messageview/MessageContainerView;)Lcom/fsck/k9/helper/ClipboardManager;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/fsck/k9/helper/ClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
