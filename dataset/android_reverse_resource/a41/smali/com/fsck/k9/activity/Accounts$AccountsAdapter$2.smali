.class Lcom/fsck/k9/activity/Accounts$AccountsAdapter$2;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

.field final synthetic val$account:Lcom/fsck/k9/BaseAccount;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsAdapter;Lcom/fsck/k9/BaseAccount;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$2;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$2;->val$account:Lcom/fsck/k9/BaseAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$2;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    iget-object v1, v0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$2;->val$account:Lcom/fsck/k9/BaseAccount;

    check-cast v0, Lcom/fsck/k9/Account;

    invoke-static {v1, v0}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccount(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    .line 1848
    return-void
.end method
