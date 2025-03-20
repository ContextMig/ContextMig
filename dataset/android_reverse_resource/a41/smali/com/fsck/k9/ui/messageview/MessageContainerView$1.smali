.class Lcom/fsck/k9/ui/messageview/MessageContainerView$1;
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

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 146
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 128
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->val$url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v3}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->access$000(Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v3}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->access$000(Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0703c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-static {v2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->access$100(Lcom/fsck/k9/ui/messageview/MessageContainerView;)Lcom/fsck/k9/helper/ClipboardManager;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/fsck/k9/helper/ClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
