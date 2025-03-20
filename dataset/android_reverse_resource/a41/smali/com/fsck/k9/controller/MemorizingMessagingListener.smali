.class Lcom/fsck/k9/controller/MemorizingMessagingListener;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "MemorizingMessagingListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;,
        Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;
    }
.end annotation


# instance fields
.field memories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener;->memories:Ljava/util/Map;

    return-void
.end method

.method private getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener;->memories:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemoryKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .line 209
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    invoke-direct {v0, p1, p2}, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;-><init>(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 211
    .restart local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    iget-object v1, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener;->memories:Ljava/util/Map;

    iget-object v2, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v3, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemoryKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    return-object v0
.end method

.method private static getMemoryKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "taccount"    # Lcom/fsck/k9/Account;
    .param p1, "tfolderName"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "commandTitle"    # Ljava/lang/String;

    .prologue
    .line 203
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 204
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->processingCommandTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 203
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "commandTitle"    # Ljava/lang/String;

    .prologue
    .line 197
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 198
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    iput-object p2, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->processingCommandTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 197
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pendingCommandsFinished(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 191
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 192
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->processingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 191
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 183
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 184
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->processingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    .line 185
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderCompleted:I

    .line 186
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 183
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized refreshOther(Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 10
    .param p1, "other"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 30
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 32
    const/4 v4, 0x0

    .line 33
    .local v4, "syncStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    const/4 v2, 0x0

    .line 34
    .local v2, "sendStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    const/4 v1, 0x0

    .line 36
    .local v1, "processingStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :try_start_0
    iget-object v5, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener;->memories:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    .line 38
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    if-eqz v6, :cond_1

    .line 39
    sget-object v6, Lcom/fsck/k9/controller/MemorizingMessagingListener$1;->$SwitchMap$com$fsck$k9$controller$MemorizingMessagingListener$MemorizingState:[I

    iget-object v7, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    invoke-virtual {v7}, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 54
    :cond_1
    :goto_1
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->sendingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    if-eqz v6, :cond_2

    .line 55
    sget-object v6, Lcom/fsck/k9/controller/MemorizingMessagingListener$1;->$SwitchMap$com$fsck$k9$controller$MemorizingMessagingListener$MemorizingState:[I

    iget-object v7, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->sendingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    invoke-virtual {v7}, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 67
    :cond_2
    :goto_2
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->pushingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    if-eqz v6, :cond_3

    .line 68
    sget-object v6, Lcom/fsck/k9/controller/MemorizingMessagingListener$1;->$SwitchMap$com$fsck$k9$controller$MemorizingMessagingListener$MemorizingState:[I

    iget-object v7, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->pushingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    invoke-virtual {v7}, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 79
    :cond_3
    :goto_3
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->processingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    if-eqz v6, :cond_0

    .line 80
    sget-object v6, Lcom/fsck/k9/controller/MemorizingMessagingListener$1;->$SwitchMap$com$fsck$k9$controller$MemorizingMessagingListener$MemorizingState:[I

    iget-object v7, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->processingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    invoke-virtual {v7}, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    goto :goto_0

    .line 82
    :pswitch_0
    move-object v1, v0

    .line 83
    goto :goto_0

    .line 41
    :pswitch_1
    move-object v4, v0

    .line 42
    goto :goto_1

    .line 44
    :pswitch_2
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderName:Ljava/lang/String;

    iget v8, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingTotalMessagesInMailbox:I

    iget v9, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingNumNewMessages:I

    invoke-interface {p1, v6, v7, v8, v9}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 30
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 48
    .restart local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :pswitch_3
    :try_start_1
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderName:Ljava/lang/String;

    iget-object v8, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->failureMessage:Ljava/lang/String;

    invoke-interface {p1, v6, v7, v8}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :pswitch_4
    move-object v2, v0

    .line 58
    goto :goto_2

    .line 60
    :pswitch_5
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    invoke-interface {p1, v6}, Lcom/fsck/k9/controller/MessagingListener;->sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V

    goto :goto_2

    .line 63
    :pswitch_6
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    invoke-interface {p1, v6}, Lcom/fsck/k9/controller/MessagingListener;->sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V

    goto :goto_2

    .line 70
    :pswitch_7
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderName:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-interface {p1, v6, v7, v8}, Lcom/fsck/k9/controller/MessagingListener;->setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V

    goto :goto_3

    .line 73
    :pswitch_8
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {p1, v6, v7, v8}, Lcom/fsck/k9/controller/MessagingListener;->setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V

    goto :goto_3

    .line 86
    :pswitch_9
    iget-object v6, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    invoke-interface {p1, v6}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V

    goto/16 :goto_0

    .line 91
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :cond_4
    const/4 v3, 0x0

    .line 92
    .local v3, "somethingStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    if-eqz v4, :cond_5

    .line 93
    iget-object v5, v4, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v6, v4, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderName:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 94
    move-object v3, v4

    .line 96
    :cond_5
    if-eqz v2, :cond_6

    .line 97
    iget-object v5, v2, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    invoke-interface {p1, v5}, Lcom/fsck/k9/controller/MessagingListener;->sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V

    .line 98
    move-object v3, v2

    .line 100
    :cond_6
    if-eqz v1, :cond_7

    .line 101
    iget-object v5, v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    invoke-interface {p1, v5}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandsProcessing(Lcom/fsck/k9/Account;)V

    .line 102
    iget-object v5, v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->processingCommandTitle:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 103
    iget-object v5, v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v6, v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->processingCommandTitle:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 109
    :goto_4
    move-object v3, v1

    .line 111
    :cond_7
    if-eqz v3, :cond_8

    iget v5, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I

    if-lez v5, :cond_8

    .line 112
    iget-object v5, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v6, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderName:Ljava/lang/String;

    iget v7, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderCompleted:I

    iget v8, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I

    invoke-interface {p1, v5, v6, v7, v8}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local v1    # "processingStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    .end local v2    # "sendStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    .end local v3    # "somethingStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    .end local v4    # "syncStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :cond_8
    monitor-exit p0

    return-void

    .line 107
    .restart local v1    # "processingStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    .restart local v2    # "sendStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    .restart local v3    # "somethingStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    .restart local v4    # "syncStarted":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :cond_9
    :try_start_2
    iget-object v5, v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 55
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 68
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 80
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method declared-synchronized removeAccount(Lcom/fsck/k9/Account;)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener;->memories:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 18
    .local v0, "memIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 21
    .local v1, "memoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    iget-object v3, v3, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "uuidForMemory":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 16
    .end local v0    # "memIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;>;>;"
    .end local v1    # "memoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;>;"
    .end local v2    # "uuidForMemory":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 27
    .restart local v0    # "memIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;>;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 161
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 162
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->sendingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 161
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 167
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 168
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->FAILED:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->sendingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 167
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 153
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 154
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->sendingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    .line 155
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderCompleted:I

    .line 156
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 153
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "active"    # Z

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 148
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    if-eqz p3, :cond_0

    sget-object v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    :goto_0
    iput-object v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->pushingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    sget-object v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 141
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->FAILED:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    .line 142
    iput-object p3, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->failureMessage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 131
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    .line 132
    iput p3, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingTotalMessagesInMailbox:I

    .line 133
    iput p4, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingNumNewMessages:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 130
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "completed"    # I
    .param p4, "total"    # I

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 176
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    iput p3, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderCompleted:I

    .line 177
    iput p4, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 175
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MemorizingMessagingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;

    move-result-object v0

    .line 122
    .local v0, "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    .line 123
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderCompleted:I

    .line 124
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 121
    .end local v0    # "memory":Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
