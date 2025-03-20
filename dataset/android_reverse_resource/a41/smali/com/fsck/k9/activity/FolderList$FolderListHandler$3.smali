.class Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList$FolderListHandler;->workingAccount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

.field final synthetic val$res:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iput p2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;->val$res:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 143
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v2, v2, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    iget v3, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;->val$res:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v5, v5, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v5}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "toastText":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v2, v2, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 145
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    return-void
.end method
