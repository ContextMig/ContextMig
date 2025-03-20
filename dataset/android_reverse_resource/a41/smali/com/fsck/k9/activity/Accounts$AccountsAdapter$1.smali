.class Lcom/fsck/k9/activity/Accounts$AccountsAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$1;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1810
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$1;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    iget-object v1, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$1;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    iget-object v2, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    const v3, 0x7f0703a3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1811
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1812
    return-void
.end method
