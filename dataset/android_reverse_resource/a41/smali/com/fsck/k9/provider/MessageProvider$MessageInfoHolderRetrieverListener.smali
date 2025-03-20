.class public Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MessageInfoHolderRetrieverListener"
.end annotation


# instance fields
.field private holders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageInfoHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageInfoHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/provider/MessageProvider;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fsck/k9/provider/MessageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageInfoHolder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1087
    .local p2, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/List<Lcom/fsck/k9/activity/MessageInfoHolder;>;>;"
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;->holders:Ljava/util/List;

    .line 1088
    iput-object p2, p0, Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 1089
    return-void
.end method


# virtual methods
.method public listLocalMessagesAddMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1093
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    iget-object v6, p0, Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v6}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1095
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 1096
    .local v2, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    new-instance v5, Lcom/fsck/k9/activity/MessageInfoHolder;

    invoke-direct {v5}, Lcom/fsck/k9/activity/MessageInfoHolder;-><init>()V

    .line 1097
    .local v5, "messageInfoHolder":Lcom/fsck/k9/activity/MessageInfoHolder;
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v4

    .line 1098
    .local v4, "messageFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalMessage;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v3

    .line 1100
    .local v3, "messageAccount":Lcom/fsck/k9/Account;
    new-instance v1, Lcom/fsck/k9/activity/FolderInfoHolder;

    invoke-direct {v1, v0, v4, v3}, Lcom/fsck/k9/activity/FolderInfoHolder;-><init>(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/Account;)V

    .line 1101
    .local v1, "folderInfoHolder":Lcom/fsck/k9/activity/FolderInfoHolder;
    iget-object v7, p0, Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-static {v7}, Lcom/fsck/k9/provider/MessageProvider;->access$300(Lcom/fsck/k9/provider/MessageProvider;)Lcom/fsck/k9/helper/MessageHelper;

    move-result-object v7

    invoke-virtual {v7, v5, v2, v1, v3}, Lcom/fsck/k9/helper/MessageHelper;->populate(Lcom/fsck/k9/activity/MessageInfoHolder;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/activity/FolderInfoHolder;Lcom/fsck/k9/Account;)V

    .line 1103
    iget-object v7, p0, Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;->holders:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1105
    .end local v1    # "folderInfoHolder":Lcom/fsck/k9/activity/FolderInfoHolder;
    .end local v2    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v3    # "messageAccount":Lcom/fsck/k9/Account;
    .end local v4    # "messageFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v5    # "messageInfoHolder":Lcom/fsck/k9/activity/MessageInfoHolder;
    :cond_0
    return-void
.end method

.method public searchStats(Lcom/fsck/k9/AccountStats;)V
    .locals 3
    .param p1, "stats"    # Lcom/fsck/k9/AccountStats;

    .prologue
    .line 1110
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;->queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;->holders:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :goto_0
    return-void

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Unable to return message list back to caller"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
