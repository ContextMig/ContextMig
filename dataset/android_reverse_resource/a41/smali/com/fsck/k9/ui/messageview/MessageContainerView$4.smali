.class Lcom/fsck/k9/ui/messageview/MessageContainerView$4;
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

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 300
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 282
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;->val$email:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 283
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 284
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v5}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->access$000(Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_1
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v4}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v0

    .line 289
    .local v0, "contacts":Lcom/fsck/k9/helper/Contacts;
    new-instance v4, Lcom/fsck/k9/mail/Address;

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;->val$email:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/fsck/k9/helper/Contacts;->createContact(Lcom/fsck/k9/mail/Address;)V

    goto :goto_0

    .line 293
    .end local v0    # "contacts":Lcom/fsck/k9/helper/Contacts;
    :pswitch_2
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v4}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0703bd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "label":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;->this$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-static {v4}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->access$100(Lcom/fsck/k9/ui/messageview/MessageContainerView;)Lcom/fsck/k9/helper/ClipboardManager;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$4;->val$email:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lcom/fsck/k9/helper/ClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
