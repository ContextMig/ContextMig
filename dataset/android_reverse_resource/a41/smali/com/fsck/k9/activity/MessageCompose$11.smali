.class Lcom/fsck/k9/activity/MessageCompose$11;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
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
    .line 1647
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$11;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "oldUid"    # Ljava/lang/String;
    .param p4, "newUid"    # Ljava/lang/String;

    .prologue
    .line 1651
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose$11;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v4}, Lcom/fsck/k9/activity/MessageCompose;->access$700(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1655
    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose$11;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v4}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose$11;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 1656
    invoke-static {v5}, Lcom/fsck/k9/activity/MessageCompose;->access$700(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v1

    .line 1657
    .local v1, "sourceAccount":Lcom/fsck/k9/Account;
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose$11;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v4}, Lcom/fsck/k9/activity/MessageCompose;->access$700(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    .line 1658
    .local v2, "sourceFolder":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose$11;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v4}, Lcom/fsck/k9/activity/MessageCompose;->access$700(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 1661
    .local v3, "sourceMessageUid":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 1662
    .local v0, "changedMessageIsCurrent":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 1663
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose$11;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose$11;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-static {v5}, Lcom/fsck/k9/activity/MessageCompose;->access$700(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/fsck/k9/activity/MessageReference;->withModifiedUid(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fsck/k9/activity/MessageCompose;->access$702(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/activity/MessageReference;

    goto :goto_0

    .line 1661
    .end local v0    # "changedMessageIsCurrent":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
