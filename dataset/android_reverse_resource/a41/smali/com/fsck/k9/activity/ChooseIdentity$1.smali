.class Lcom/fsck/k9/activity/ChooseIdentity$1;
.super Ljava/lang/Object;
.source "ChooseIdentity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ChooseIdentity;->setupClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ChooseIdentity;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseIdentity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/ChooseIdentity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 74
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    iget-object v3, v3, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3, p3}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Identity;

    move-result-object v1

    .line 75
    .local v1, "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.fsck.k9.ChooseIdentity_identity"

    iget-object v4, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    iget-object v4, v4, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v4, p3}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Identity;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/fsck/k9/activity/ChooseIdentity;->setResult(ILandroid/content/Intent;)V

    .line 81
    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/ChooseIdentity;->finish()V

    .line 86
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    iget-object v4, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    const v5, 0x7f070264

    invoke-virtual {v4, v5}, Lcom/fsck/k9/activity/ChooseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
