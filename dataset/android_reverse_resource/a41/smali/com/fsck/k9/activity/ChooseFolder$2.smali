.class Lcom/fsck/k9/activity/ChooseFolder$2;
.super Ljava/lang/Object;
.source "ChooseFolder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ChooseFolder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ChooseFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseFolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/ChooseFolder;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v1, "result":Landroid/content/Intent;
    const-string v2, "com.fsck.k9.ChooseFolder_account"

    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v3, v3, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v2, "com.fsck.k9.ChooseFolder_curfolder"

    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v3, v3, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "destFolderName":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v2, v2, Lcom/fsck/k9/activity/ChooseFolder;->mHeldInbox:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    const v3, 0x7f07038a

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/ChooseFolder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v0, v2, Lcom/fsck/k9/activity/ChooseFolder;->mHeldInbox:Ljava/lang/String;

    .line 131
    :cond_0
    const-string v2, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v2, v2, Lcom/fsck/k9/activity/ChooseFolder;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    if-eqz v2, :cond_1

    .line 133
    const-string v2, "com.fsck.k9.ChooseFolder_message"

    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v3, v3, Lcom/fsck/k9/activity/ChooseFolder;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/fsck/k9/activity/ChooseFolder;->setResult(ILandroid/content/Intent;)V

    .line 136
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$2;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/ChooseFolder;->finish()V

    .line 137
    return-void
.end method
