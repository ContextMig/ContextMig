.class public Lkdk/android/simplydo/CachingDataViewer;
.super Ljava/lang/Object;
.source "CachingDataViewer.java"

# interfaces
.implements Lkdk/android/simplydo/DataViewer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    }
.end annotation


# instance fields
.field private dataManager:Lkdk/android/simplydo/DataManager;

.field private dbUpdateThread:Ljava/lang/Thread;

.field private interruptRequire:Z

.field private itemData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ItemDesc;",
            ">;"
        }
    .end annotation
.end field

.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ListDesc;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private selectedList:Lkdk/android/simplydo/ListDesc;

.field private taskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lkdk/android/simplydo/CachingDataViewer$ViewerTask;",
            ">;"
        }
    .end annotation
.end field

.field private viewerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkdk/android/simplydo/DataManager;)V
    .locals 3
    .param p1, "dataManager"    # Lkdk/android/simplydo/DataManager;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->listData:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    .line 46
    iput-boolean v1, p0, Lkdk/android/simplydo/CachingDataViewer;->running:Z

    .line 48
    iput-boolean v1, p0, Lkdk/android/simplydo/CachingDataViewer;->interruptRequire:Z

    .line 54
    iput-object p1, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lkdk/android/simplydo/CachingDataViewer$1;

    invoke-direct {v1, p0}, Lkdk/android/simplydo/CachingDataViewer$1;-><init>(Lkdk/android/simplydo/CachingDataViewer;)V

    const-string v2, "DB Update"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->dbUpdateThread:Ljava/lang/Thread;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lkdk/android/simplydo/CachingDataViewer;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/CachingDataViewer;

    .prologue
    .line 33
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->dbUpdateLoop()V

    return-void
.end method

.method private dbUpdateLoop()V
    .locals 10

    .prologue
    .line 586
    const-string v6, "SimplyDo"

    const-string v7, "CachingDataViewer.dbUpdateLoop(): Entered"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_0
    iget-boolean v6, p0, Lkdk/android/simplydo/CachingDataViewer;->running:Z

    if-eqz v6, :cond_4

    .line 593
    :try_start_0
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    :goto_1
    :try_start_1
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 597
    const/4 v6, 0x1

    iput-boolean v6, p0, Lkdk/android/simplydo/CachingDataViewer;->interruptRequire:Z

    .line 598
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 599
    const/4 v6, 0x0

    iput-boolean v6, p0, Lkdk/android/simplydo/CachingDataViewer;->interruptRequire:Z

    goto :goto_1

    .line 602
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 712
    :catch_0
    move-exception v1

    .line 714
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-boolean v6, p0, Lkdk/android/simplydo/CachingDataViewer;->running:Z

    if-eqz v6, :cond_3

    .line 716
    const-string v6, "SimplyDo"

    const-string v7, "CachingDataViewer.dbUpdateLoop(): Interrupted in DB update loop"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 601
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    .line 602
    .local v5, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    const/4 v0, 0x1

    .line 608
    .local v0, "doNotify":Z
    :try_start_4
    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$200(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 697
    const-string v6, "SimplyDo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CachingDataViewer.dbUpdateLoop(): Unknown task enumeration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$200(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 702
    :goto_2
    :try_start_5
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 704
    :try_start_6
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 705
    if-eqz v0, :cond_1

    .line 707
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 709
    :cond_1
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 723
    .end local v0    # "doNotify":Z
    .end local v5    # "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    :catch_1
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SimplyDo"

    const-string v7, "CachingDataViewer.dbUpdateLoop(): Exception in DB update loop"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 612
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "doNotify":Z
    .restart local v5    # "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    :pswitch_0
    :try_start_8
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v6}, Lkdk/android/simplydo/DataManager;->fetchLists()Ljava/util/List;

    move-result-object v4

    .line 613
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Lkdk/android/simplydo/ListDesc;>;"
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 615
    :try_start_9
    iput-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->listData:Ljava/util/List;

    .line 616
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    .line 617
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 618
    monitor-exit v7

    .line 619
    const/4 v0, 0x0

    .line 620
    goto :goto_2

    .line 618
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 702
    .end local v4    # "lists":Ljava/util/List;, "Ljava/util/List<Lkdk/android/simplydo/ListDesc;>;"
    :catchall_3
    move-exception v6

    :try_start_b
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 704
    :try_start_c
    iget-object v8, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 705
    if-eqz v0, :cond_2

    .line 707
    iget-object v8, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 709
    :cond_2
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    throw v6
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 624
    :pswitch_1
    :try_start_e
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 626
    :try_start_f
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 627
    iget-object v8, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x0

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v9, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-virtual {v8, v6, v9}, Lkdk/android/simplydo/DataManager;->fetchItems(ILjava/util/List;)V

    .line 628
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    .line 629
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 630
    monitor-exit v7

    .line 631
    const/4 v0, 0x0

    .line 632
    goto :goto_2

    .line 630
    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v6

    .line 636
    :pswitch_2
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v8, v6}, Lkdk/android/simplydo/DataManager;->updateItemActiveness(IZ)V

    .line 637
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    goto/16 :goto_2

    .line 642
    :pswitch_3
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v8, v6}, Lkdk/android/simplydo/DataManager;->updateItemStarness(IZ)V

    .line 643
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    goto/16 :goto_2

    .line 648
    :pswitch_4
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lkdk/android/simplydo/DataManager;->updateItemLabel(ILjava/lang/String;)V

    .line 649
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    goto/16 :goto_2

    .line 654
    :pswitch_5
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lkdk/android/simplydo/DataManager;->updateListLabel(ILjava/lang/String;)V

    .line 655
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    goto/16 :goto_2

    .line 660
    :pswitch_6
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v8, v6}, Lkdk/android/simplydo/DataManager;->moveItem(II)V

    .line 661
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    goto/16 :goto_2

    .line 666
    :pswitch_7
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lkdk/android/simplydo/DataManager;->deleteList(I)V

    .line 667
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    goto/16 :goto_2

    .line 672
    :pswitch_8
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lkdk/android/simplydo/DataManager;->deleteItem(I)V

    .line 673
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    goto/16 :goto_2

    .line 678
    :pswitch_9
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lkdk/android/simplydo/DataManager;->deleteInactive(I)V

    .line 679
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    goto/16 :goto_2

    .line 684
    :pswitch_a
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lkdk/android/simplydo/DataManager;->createList(Ljava/lang/String;)V

    .line 685
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z

    goto/16 :goto_2

    .line 690
    :pswitch_b
    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v3, v6, v7

    check-cast v3, Lkdk/android/simplydo/ItemDesc;

    .line 691
    .local v3, "item":Lkdk/android/simplydo/ItemDesc;
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$300(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lkdk/android/simplydo/DataManager;->createItem(ILjava/lang/String;)I

    move-result v2

    .line 692
    .local v2, "id":I
    invoke-virtual {v3, v2}, Lkdk/android/simplydo/ItemDesc;->setId(I)V

    .line 693
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$402(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;Z)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto/16 :goto_2

    .line 709
    .end local v2    # "id":I
    .end local v3    # "item":Lkdk/android/simplydo/ItemDesc;
    :catchall_5
    move-exception v6

    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v6
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 720
    .end local v0    # "doNotify":Z
    .end local v5    # "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    .local v1, "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string v6, "SimplyDo"

    const-string v7, "CachingDataViewer.dbUpdateLoop(): interrupt exit"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_4
    const-string v6, "SimplyDo"

    const-string v7, "CachingDataViewer.dbUpdateLoop(): Exit"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private doTaskAndWait(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)V
    .locals 4
    .param p1, "task"    # Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    .prologue
    .line 564
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 566
    :try_start_0
    iget-object v1, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v1, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    :goto_0
    :try_start_1
    invoke-static {p1}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$400(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    iget-object v1, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "SimplyDo"

    const-string v3, "CachingDataViewer.doTaskAndWait(): Error waiting for task"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private findList(I)Lkdk/android/simplydo/ListDesc;
    .locals 4
    .param p1, "listId"    # I

    .prologue
    .line 533
    const/4 v2, 0x0

    .line 534
    .local v2, "rvList":Lkdk/android/simplydo/ListDesc;
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->listData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkdk/android/simplydo/ListDesc;

    .line 536
    .local v1, "list":Lkdk/android/simplydo/ListDesc;
    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 538
    move-object v2, v1

    .line 543
    .end local v1    # "list":Lkdk/android/simplydo/ListDesc;
    :cond_1
    return-object v2
.end method

.method private flushTasks()V
    .locals 2

    .prologue
    .line 520
    iget-object v1, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 522
    :try_start_0
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->flushTasksNoLock()V

    .line 523
    monitor-exit v1

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private flushTasksNoLock()V
    .locals 4

    .prologue
    .line 505
    :goto_0
    iget-object v1, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    :try_start_0
    iget-object v1, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SimplyDo"

    const-string v2, "CachingDataViewer.flushTasksNoLock(): Exception waiting for flushTasksNoLock()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 516
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private itemIdBarrier(Lkdk/android/simplydo/ItemDesc;)V
    .locals 3
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    const/4 v2, -0x1

    .line 490
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 492
    const-string v0, "SimplyDo"

    const-string v1, "CachingDataViewer.itemIdBarrier(): Used"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->flushTasks()V

    .line 495
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 497
    const-string v0, "SimplyDo"

    const-string v1, "CachingDataViewer.itemIdBarrier(): failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    return-void
.end method

.method private updateListStats()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-direct {p0, v0}, Lkdk/android/simplydo/CachingDataViewer;->updateListStats(Lkdk/android/simplydo/ListDesc;)V

    .line 529
    return-void
.end method

.method private updateListStats(Lkdk/android/simplydo/ListDesc;)V
    .locals 4
    .param p1, "listDesc"    # Lkdk/android/simplydo/ListDesc;

    .prologue
    .line 549
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lkdk/android/simplydo/ListDesc;->setTotalItems(I)V

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "active":I
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkdk/android/simplydo/ItemDesc;

    .line 553
    .local v2, "item":Lkdk/android/simplydo/ItemDesc;
    invoke-virtual {v2}, Lkdk/android/simplydo/ItemDesc;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    .end local v2    # "item":Lkdk/android/simplydo/ItemDesc;
    :cond_1
    invoke-virtual {p1, v0}, Lkdk/android/simplydo/ListDesc;->setActiveItems(I)V

    .line 559
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 90
    const-string v1, "SimplyDo"

    const-string v2, "CachingDataView.close(): Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->flushTasksNoLock()V

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkdk/android/simplydo/CachingDataViewer;->running:Z

    .line 97
    iget-boolean v1, p0, Lkdk/android/simplydo/CachingDataViewer;->interruptRequire:Z

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "SimplyDo"

    const-string v3, "CachingDataView.close(): Close interrupt required"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lkdk/android/simplydo/CachingDataViewer;->dbUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 102
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    iget-object v1, p0, Lkdk/android/simplydo/CachingDataViewer;->dbUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :goto_0
    const-string v1, "SimplyDo"

    const-string v2, "CachingDataView.close(): Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 102
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SimplyDo"

    const-string v2, "CachingDataView.close(): shutdown join interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createItem(Ljava/lang/String;)V
    .locals 7
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 206
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    if-nez v3, :cond_0

    .line 208
    const-string v3, "SimplyDo"

    const-string v4, "CachingDataViewer.createItem(): called but no list is selected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v3}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v1

    .line 214
    .local v1, "listId":I
    new-instance v2, Lkdk/android/simplydo/ItemDesc;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p1, v6, v5}, Lkdk/android/simplydo/ItemDesc;-><init>(ILjava/lang/String;ZZ)V

    .line 216
    .local v2, "newItem":Lkdk/android/simplydo/ItemDesc;
    new-instance v0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 217
    .local v0, "createTask":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    const/16 v3, 0x9

    invoke-static {v0, v3}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 218
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 220
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 223
    :try_start_0
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 226
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 228
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->updateListStats()V

    .line 229
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public createList(Ljava/lang/String;)V
    .locals 5
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 236
    new-instance v0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    invoke-direct {v0, v4}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 237
    .local v0, "createTask":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    const/16 v2, 0x8

    invoke-static {v0, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 238
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 240
    new-instance v1, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    invoke-direct {v1, v4}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 241
    .local v1, "fetchTask":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    invoke-static {v1, v3}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 243
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 246
    :try_start_0
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 250
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->flushTasksNoLock()V

    .line 251
    monitor-exit v3

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public deleteInactive()V
    .locals 7

    .prologue
    .line 258
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    if-nez v4, :cond_0

    .line 260
    const-string v4, "SimplyDo"

    const-string v5, "CachingDataViewer.deleteInactive() called but no list is selected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v2, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 265
    .local v2, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    const/4 v4, 0x7

    invoke-static {v2, v4}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 266
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v6}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 268
    iget-object v5, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 271
    :try_start_0
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 275
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v3, "toDelete":Ljava/util/List;, "Ljava/util/List<Lkdk/android/simplydo/ItemDesc;>;"
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdk/android/simplydo/ItemDesc;

    .line 278
    .local v0, "i":Lkdk/android/simplydo/ItemDesc;
    invoke-virtual {v0}, Lkdk/android/simplydo/ItemDesc;->isActive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 280
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    .end local v0    # "i":Lkdk/android/simplydo/ItemDesc;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "toDelete":Ljava/util/List;, "Ljava/util/List<Lkdk/android/simplydo/ItemDesc;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 283
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "toDelete":Ljava/util/List;, "Ljava/util/List<Lkdk/android/simplydo/ItemDesc;>;"
    :cond_2
    :try_start_1
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 285
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->updateListStats()V

    .line 286
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public deleteItem(Lkdk/android/simplydo/ItemDesc;)V
    .locals 5
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lkdk/android/simplydo/CachingDataViewer;->itemIdBarrier(Lkdk/android/simplydo/ItemDesc;)V

    .line 295
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    .line 297
    .local v0, "itemId":I
    new-instance v1, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 298
    .local v1, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    const/4 v2, 0x6

    invoke-static {v1, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 299
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 301
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 304
    :try_start_0
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 308
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 309
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->updateListStats()V

    .line 310
    monitor-exit v3

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public deleteList(I)V
    .locals 7
    .param p1, "listId"    # I

    .prologue
    .line 317
    new-instance v3, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 318
    .local v3, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    const/4 v4, 0x5

    invoke-static {v3, v4}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 319
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 321
    iget-object v5, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 324
    :try_start_0
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "delete":Lkdk/android/simplydo/ListDesc;
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->listData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkdk/android/simplydo/ListDesc;

    .line 331
    .local v2, "list":Lkdk/android/simplydo/ListDesc;
    invoke-virtual {v2}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 333
    move-object v0, v2

    .line 337
    .end local v2    # "list":Lkdk/android/simplydo/ListDesc;
    :cond_1
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->listData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 338
    monitor-exit v5

    .line 340
    return-void

    .line 338
    .end local v0    # "delete":Lkdk/android/simplydo/ListDesc;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public fetchItems(I)V
    .locals 4
    .param p1, "listId"    # I

    .prologue
    const/4 v3, 0x1

    .line 194
    const-string v1, "SimplyDo"

    const-string v2, "CachingDataViewer.fetchItems(): Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 196
    .local v0, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    invoke-static {v0, v3}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 197
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 198
    invoke-direct {p0, v0}, Lkdk/android/simplydo/CachingDataViewer;->doTaskAndWait(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)V

    .line 199
    const-string v1, "SimplyDo"

    const-string v2, "CachingDataViewer.fetchItems(): Exited"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public fetchList(I)Lkdk/android/simplydo/ListDesc;
    .locals 5
    .param p1, "listId"    # I

    .prologue
    .line 173
    const/4 v2, 0x0

    .line 175
    .local v2, "rv":Lkdk/android/simplydo/ListDesc;
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 177
    :try_start_0
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->listData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkdk/android/simplydo/ListDesc;

    .line 179
    .local v1, "list":Lkdk/android/simplydo/ListDesc;
    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 181
    move-object v2, v1

    .line 185
    .end local v1    # "list":Lkdk/android/simplydo/ListDesc;
    :cond_1
    monitor-exit v4

    .line 187
    return-object v2

    .line 185
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public fetchLists()V
    .locals 3

    .prologue
    .line 164
    const-string v1, "SimplyDo"

    const-string v2, "CachingDataView.fetchLists(): Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 166
    .local v0, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 167
    invoke-direct {p0, v0}, Lkdk/android/simplydo/CachingDataViewer;->doTaskAndWait(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;)V

    .line 168
    const-string v1, "SimplyDo"

    const-string v2, "CachingDataView.fetchLists(): Exited"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->flushTasks()V

    .line 85
    return-void
.end method

.method public getItemData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ItemDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getListData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ListDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->listData:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSelectedList()Lkdk/android/simplydo/ListDesc;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    return-object v0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkdk/android/simplydo/CachingDataViewer;->setSelectedList(Lkdk/android/simplydo/ListDesc;)V

    .line 78
    invoke-virtual {p0}, Lkdk/android/simplydo/CachingDataViewer;->fetchLists()V

    .line 79
    return-void
.end method

.method public moveItem(Lkdk/android/simplydo/ItemDesc;I)V
    .locals 9
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;
    .param p2, "toListId"    # I

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lkdk/android/simplydo/CachingDataViewer;->itemIdBarrier(Lkdk/android/simplydo/ItemDesc;)V

    .line 369
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v2

    .line 371
    .local v2, "itemId":I
    new-instance v4, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 372
    .local v4, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    const/16 v6, 0xb

    invoke-static {v4, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 373
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 375
    iget-object v7, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v7

    .line 378
    :try_start_0
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, "itemInList":Lkdk/android/simplydo/ItemDesc;
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdk/android/simplydo/ItemDesc;

    .line 385
    .local v0, "i":Lkdk/android/simplydo/ItemDesc;
    invoke-virtual {v0}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 387
    move-object v3, v0

    .line 391
    .end local v0    # "i":Lkdk/android/simplydo/ItemDesc;
    :cond_1
    if-eqz v3, :cond_3

    .line 393
    iget-object v6, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 394
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->updateListStats()V

    .line 395
    invoke-direct {p0, p2}, Lkdk/android/simplydo/CachingDataViewer;->findList(I)Lkdk/android/simplydo/ListDesc;

    move-result-object v5

    .line 396
    .local v5, "toList":Lkdk/android/simplydo/ListDesc;
    invoke-virtual {v5}, Lkdk/android/simplydo/ListDesc;->getTotalItems()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lkdk/android/simplydo/ListDesc;->setTotalItems(I)V

    .line 397
    invoke-virtual {v3}, Lkdk/android/simplydo/ItemDesc;->isActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 399
    invoke-virtual {v5}, Lkdk/android/simplydo/ListDesc;->getActiveItems()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lkdk/android/simplydo/ListDesc;->setActiveItems(I)V

    .line 406
    .end local v5    # "toList":Lkdk/android/simplydo/ListDesc;
    :cond_2
    :goto_0
    monitor-exit v7

    .line 407
    return-void

    .line 404
    :cond_3
    const-string v6, "SimplyDo"

    const-string v8, "CachingDataViewer.moveItem(): Didn\'t find item in current item data"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "itemInList":Lkdk/android/simplydo/ItemDesc;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public setSelectedList(Lkdk/android/simplydo/ListDesc;)V
    .locals 3
    .param p1, "selectedList"    # Lkdk/android/simplydo/ListDesc;

    .prologue
    .line 147
    invoke-direct {p0}, Lkdk/android/simplydo/CachingDataViewer;->flushTasks()V

    .line 151
    iget-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {p1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v1

    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->itemData:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lkdk/android/simplydo/DataManager;->fetchItems(ILjava/util/List;)V

    .line 157
    :cond_0
    iput-object p1, p0, Lkdk/android/simplydo/CachingDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    .line 158
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkdk/android/simplydo/CachingDataViewer;->running:Z

    .line 71
    iget-object v0, p0, Lkdk/android/simplydo/CachingDataViewer;->dbUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

.method public updateItemActiveness(Lkdk/android/simplydo/ItemDesc;Z)V
    .locals 7
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;
    .param p2, "active"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 439
    invoke-direct {p0, p1}, Lkdk/android/simplydo/CachingDataViewer;->itemIdBarrier(Lkdk/android/simplydo/ItemDesc;)V

    .line 440
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v1

    .line 442
    .local v1, "itemId":I
    new-instance v2, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 443
    .local v2, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    invoke-static {v2, v5}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 444
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 446
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 449
    :try_start_0
    iget-object v5, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v5, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 453
    invoke-virtual {p1, p2}, Lkdk/android/simplydo/ItemDesc;->setActive(Z)V

    .line 456
    iget-object v5, p0, Lkdk/android/simplydo/CachingDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    if-eqz v5, :cond_0

    .line 458
    iget-object v5, p0, Lkdk/android/simplydo/CachingDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v5}, Lkdk/android/simplydo/ListDesc;->getActiveItems()I

    move-result v0

    .line 459
    .local v0, "activeItems":I
    if-eqz p2, :cond_1

    :goto_0
    add-int/2addr v0, v3

    .line 460
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v3, v0}, Lkdk/android/simplydo/ListDesc;->setActiveItems(I)V

    .line 462
    .end local v0    # "activeItems":I
    :cond_0
    monitor-exit v4

    .line 463
    return-void

    .line 459
    .restart local v0    # "activeItems":I
    :cond_1
    const/4 v3, -0x1

    goto :goto_0

    .line 462
    .end local v0    # "activeItems":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updateItemLabel(Lkdk/android/simplydo/ItemDesc;Ljava/lang/String;)V
    .locals 5
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;
    .param p2, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lkdk/android/simplydo/CachingDataViewer;->itemIdBarrier(Lkdk/android/simplydo/ItemDesc;)V

    .line 347
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    .line 349
    .local v0, "itemId":I
    new-instance v1, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 350
    .local v1, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 351
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 353
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 356
    :try_start_0
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 360
    invoke-virtual {p1, p2}, Lkdk/android/simplydo/ItemDesc;->setLabel(Ljava/lang/String;)V

    .line 361
    monitor-exit v3

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateItemStarness(Lkdk/android/simplydo/ItemDesc;Z)V
    .locals 5
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;
    .param p2, "star"    # Z

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lkdk/android/simplydo/CachingDataViewer;->itemIdBarrier(Lkdk/android/simplydo/ItemDesc;)V

    .line 470
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    .line 472
    .local v0, "itemId":I
    new-instance v1, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 473
    .local v1, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 474
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 476
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 479
    :try_start_0
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v2, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 483
    invoke-virtual {p1, p2}, Lkdk/android/simplydo/ItemDesc;->setStar(Z)V

    .line 484
    monitor-exit v3

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateListLabel(ILjava/lang/String;)V
    .locals 6
    .param p1, "listId"    # I
    .param p2, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 413
    new-instance v2, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;-><init>(Lkdk/android/simplydo/CachingDataViewer$1;)V

    .line 414
    .local v2, "task":Lkdk/android/simplydo/CachingDataViewer$ViewerTask;
    const/4 v3, 0x4

    invoke-static {v2, v3}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$202(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;I)I

    .line 415
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lkdk/android/simplydo/CachingDataViewer$ViewerTask;->access$302(Lkdk/android/simplydo/CachingDataViewer$ViewerTask;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 417
    iget-object v4, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 420
    :try_start_0
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->viewerLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 424
    iget-object v3, p0, Lkdk/android/simplydo/CachingDataViewer;->listData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdk/android/simplydo/ListDesc;

    .line 426
    .local v0, "i":Lkdk/android/simplydo/ListDesc;
    invoke-virtual {v0}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 428
    invoke-virtual {v0, p2}, Lkdk/android/simplydo/ListDesc;->setLabel(Ljava/lang/String;)V

    .line 432
    .end local v0    # "i":Lkdk/android/simplydo/ListDesc;
    :cond_1
    monitor-exit v4

    .line 433
    return-void

    .line 432
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
