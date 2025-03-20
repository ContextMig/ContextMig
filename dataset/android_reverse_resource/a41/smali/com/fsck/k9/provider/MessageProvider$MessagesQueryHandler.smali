.class public Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Lcom/fsck/k9/provider/MessageProvider$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MessagesQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method protected constructor <init>(Lcom/fsck/k9/provider/MessageProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/provider/MessageProvider;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMessages([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 17
    .param p1, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 514
    new-instance v13, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v13}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 517
    .local v13, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/List<Lcom/fsck/k9/activity/MessageInfoHolder;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v14}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/fsck/k9/search/SearchAccount;->createUnifiedInboxAccount(Landroid/content/Context;)Lcom/fsck/k9/search/SearchAccount;

    move-result-object v9

    .line 518
    .local v9, "integratedInboxAccount":Lcom/fsck/k9/search/SearchAccount;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v14}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v10

    .line 520
    .local v10, "msgController":Lcom/fsck/k9/controller/MessagingController;
    invoke-virtual {v9}, Lcom/fsck/k9/search/SearchAccount;->getRelatedSearch()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v14

    new-instance v15, Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v13}, Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;-><init>(Lcom/fsck/k9/provider/MessageProvider;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v10, v14, v15}, Lcom/fsck/k9/controller/MessagingController;->searchLocalMessages(Lcom/fsck/k9/search/LocalSearch;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 523
    invoke-interface {v13}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 526
    .local v7, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageInfoHolder;>;"
    new-instance v14, Lcom/fsck/k9/provider/MessageProvider$ReverseDateComparator;

    invoke-direct {v14}, Lcom/fsck/k9/provider/MessageProvider$ReverseDateComparator;-><init>()V

    invoke-static {v7, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 529
    if-nez p1, :cond_0

    .line 530
    invoke-static {}, Lcom/fsck/k9/provider/MessageProvider;->access$000()[Ljava/lang/String;

    move-result-object v12

    .line 536
    .local v12, "projectionToUse":[Ljava/lang/String;
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;->resolveMessageExtractors([Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 537
    .local v4, "extractors":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/fsck/k9/provider/MessageProvider$FieldExtractor<Lcom/fsck/k9/activity/MessageInfoHolder;*>;>;"
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    .line 539
    .local v5, "fieldCount":I
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 540
    .local v1, "actualProjection":[Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 542
    .local v2, "cursor":Landroid/database/MatrixCursor;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/activity/MessageInfoHolder;

    .line 543
    .local v6, "holder":Lcom/fsck/k9/activity/MessageInfoHolder;
    new-array v11, v5, [Ljava/lang/Object;

    .line 545
    .local v11, "o":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 546
    .local v8, "i":I
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;

    .line 547
    .local v3, "extractor":Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;, "Lcom/fsck/k9/provider/MessageProvider$FieldExtractor<Lcom/fsck/k9/activity/MessageInfoHolder;*>;"
    invoke-interface {v3, v6}, Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;->getField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v11, v8

    .line 548
    add-int/lit8 v8, v8, 0x1

    .line 549
    goto :goto_2

    .line 532
    .end local v1    # "actualProjection":[Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "extractor":Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;, "Lcom/fsck/k9/provider/MessageProvider$FieldExtractor<Lcom/fsck/k9/activity/MessageInfoHolder;*>;"
    .end local v4    # "extractors":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/fsck/k9/provider/MessageProvider$FieldExtractor<Lcom/fsck/k9/activity/MessageInfoHolder;*>;>;"
    .end local v5    # "fieldCount":I
    .end local v6    # "holder":Lcom/fsck/k9/activity/MessageInfoHolder;
    .end local v8    # "i":I
    .end local v11    # "o":[Ljava/lang/Object;
    .end local v12    # "projectionToUse":[Ljava/lang/String;
    :cond_0
    move-object/from16 v12, p1

    .restart local v12    # "projectionToUse":[Ljava/lang/String;
    goto :goto_0

    .line 551
    .restart local v1    # "actualProjection":[Ljava/lang/String;
    .restart local v2    # "cursor":Landroid/database/MatrixCursor;
    .restart local v4    # "extractors":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/fsck/k9/provider/MessageProvider$FieldExtractor<Lcom/fsck/k9/activity/MessageInfoHolder;*>;>;"
    .restart local v5    # "fieldCount":I
    .restart local v6    # "holder":Lcom/fsck/k9/activity/MessageInfoHolder;
    .restart local v8    # "i":I
    .restart local v11    # "o":[Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 554
    .end local v6    # "holder":Lcom/fsck/k9/activity/MessageInfoHolder;
    .end local v8    # "i":I
    .end local v11    # "o":[Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    const-string v0, "inbox_messages/"

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0, p2}, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;->getMessages([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method protected resolveMessageExtractors([Ljava/lang/String;I)Ljava/util/LinkedHashMap;
    .locals 5
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/provider/MessageProvider$FieldExtractor",
            "<",
            "Lcom/fsck/k9/activity/MessageInfoHolder;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 562
    .local v0, "extractors":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/fsck/k9/provider/MessageProvider$FieldExtractor<Lcom/fsck/k9/activity/MessageInfoHolder;*>;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_11

    aget-object v1, p1, v2

    .line 563
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    :cond_1
    const-string v4, "_id"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 567
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$IdExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$IdExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 568
    :cond_2
    const-string v4, "_count"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 569
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$CountExtractor;

    invoke-direct {v4, p2}, Lcom/fsck/k9/provider/MessageProvider$CountExtractor;-><init>(I)V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 570
    :cond_3
    const-string v4, "subject"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 571
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$SubjectExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$SubjectExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 572
    :cond_4
    const-string v4, "sender"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 573
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$SenderExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$SenderExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 574
    :cond_5
    const-string v4, "senderAddress"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 575
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$SenderAddressExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$SenderAddressExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 576
    :cond_6
    const-string v4, "date"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 577
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$SendDateExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$SendDateExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 578
    :cond_7
    const-string v4, "preview"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 579
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$PreviewExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$PreviewExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 580
    :cond_8
    const-string v4, "uri"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 581
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$UriExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$UriExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 582
    :cond_9
    const-string v4, "delUri"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 583
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$DeleteUriExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$DeleteUriExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 584
    :cond_a
    const-string v4, "unread"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 585
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$UnreadExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$UnreadExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 586
    :cond_b
    const-string v4, "account"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 587
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$AccountExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$AccountExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 588
    :cond_c
    const-string v4, "accountColor"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 589
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$AccountColorExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$AccountColorExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 590
    :cond_d
    const-string v4, "accountNumber"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 591
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$AccountNumberExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$AccountNumberExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 592
    :cond_e
    const-string v4, "hasAttachments"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 593
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$HasAttachmentsExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$HasAttachmentsExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 594
    :cond_f
    const-string v4, "hasStar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 595
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$HasStarExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$HasStarExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 596
    :cond_10
    const-string v4, "id"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    new-instance v4, Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;

    invoke-direct {v4}, Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 600
    .end local v1    # "field":Ljava/lang/String;
    :cond_11
    return-object v0
.end method
