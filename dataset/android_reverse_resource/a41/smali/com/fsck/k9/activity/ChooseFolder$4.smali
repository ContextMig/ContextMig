.class Lcom/fsck/k9/activity/ChooseFolder$4;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "ChooseFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/ChooseFolder;
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
    .line 245
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public listFolders(Lcom/fsck/k9/Account;Ljava/util/List;)V
    .locals 14
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    iget-object v11, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v11, v11, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v11}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v11, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-static {v11}, Lcom/fsck/k9/activity/ChooseFolder;->access$100(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v0

    .line 276
    .local v0, "aMode":Lcom/fsck/k9/Account$FolderMode;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v7, "newFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v10, "topFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/Folder;

    .line 280
    .local v3, "folder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "name":Ljava/lang/String;
    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-boolean v12, v12, Lcom/fsck/k9/activity/ChooseFolder;->mHideCurrentFolder:Z

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v12, v12, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v12, v12, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    .line 284
    invoke-virtual {v12}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v13, v13, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v12, v12, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    .line 285
    invoke-virtual {v12}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 288
    :cond_3
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v2

    .line 290
    .local v2, "fMode":Lcom/fsck/k9/mail/Folder$FolderClass;
    sget-object v12, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v0, v12, :cond_4

    sget-object v12, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v2, v12, :cond_2

    :cond_4
    sget-object v12, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v0, v12, :cond_5

    sget-object v12, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq v2, v12, :cond_5

    sget-object v12, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v2, v12, :cond_2

    :cond_5
    sget-object v12, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v0, v12, :cond_6

    sget-object v12, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq v2, v12, :cond_2

    .line 300
    :cond_6
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->isInTopGroup()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 301
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_7
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    .end local v2    # "fMode":Lcom/fsck/k9/mail/Folder$FolderClass;
    .end local v3    # "folder":Lcom/fsck/k9/mail/Folder;
    .end local v6    # "name":Ljava/lang/String;
    :cond_8
    new-instance v1, Lcom/fsck/k9/activity/ChooseFolder$4$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/ChooseFolder$4$1;-><init>(Lcom/fsck/k9/activity/ChooseFolder$4;)V

    .line 315
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    invoke-static {v10, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    invoke-static {v7, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 318
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    .line 319
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v12, v11

    iget-object v11, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-boolean v11, v11, Lcom/fsck/k9/activity/ChooseFolder;->mShowOptionNone:Z

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    :goto_2
    add-int/2addr v11, v12

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .local v5, "localFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-boolean v11, v11, Lcom/fsck/k9/activity/ChooseFolder;->mShowOptionNone:Z

    if-eqz v11, :cond_9

    .line 322
    const-string v11, "-NONE-"

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_9
    invoke-interface {v5, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 326
    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 328
    const/4 v9, -0x1

    .line 334
    .local v9, "selectedFolder":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v4, "folderList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 337
    .local v8, "position":I
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 338
    .restart local v6    # "name":Ljava/lang/String;
    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v12, v12, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v12}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 339
    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    const v13, 0x7f07038a

    invoke-virtual {v12, v13}, Lcom/fsck/k9/activity/ChooseFolder;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iput-object v6, v12, Lcom/fsck/k9/activity/ChooseFolder;->mHeldInbox:Ljava/lang/String;

    .line 345
    :cond_a
    :goto_4
    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v12, v12, Lcom/fsck/k9/activity/ChooseFolder;->mSelectFolder:Ljava/lang/String;

    if-eqz v12, :cond_e

    .line 351
    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v12, v12, Lcom/fsck/k9/activity/ChooseFolder;->mSelectFolder:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 352
    move v9, v8

    .line 359
    :cond_b
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 360
    goto :goto_3

    .line 319
    .end local v4    # "folderList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "localFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "position":I
    .end local v9    # "selectedFolder":I
    :cond_c
    const/4 v11, 0x0

    goto :goto_2

    .line 341
    .restart local v4    # "folderList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "localFolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "position":I
    .restart local v9    # "selectedFolder":I
    :cond_d
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 342
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 362
    .end local v6    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v11

    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    new-instance v13, Lcom/fsck/k9/activity/ChooseFolder$4$2;

    invoke-direct {v13, p0, v4}, Lcom/fsck/k9/activity/ChooseFolder$4$2;-><init>(Lcom/fsck/k9/activity/ChooseFolder$4;Ljava/util/List;)V

    invoke-virtual {v12, v13}, Lcom/fsck/k9/activity/ChooseFolder;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v11

    .line 354
    .restart local v6    # "name":Ljava/lang/String;
    :cond_e
    :try_start_1
    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v12, v12, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v12, v12, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    .line 355
    invoke-virtual {v12}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v13, v13, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v12, v12, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    .line 356
    invoke-virtual {v12}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    if-eqz v12, :cond_b

    .line 357
    :cond_f
    move v9, v8

    goto :goto_5

    .line 362
    .end local v6    # "name":Ljava/lang/String;
    :cond_10
    iget-object v11, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    new-instance v12, Lcom/fsck/k9/activity/ChooseFolder$4$2;

    invoke-direct {v12, p0, v4}, Lcom/fsck/k9/activity/ChooseFolder$4$2;-><init>(Lcom/fsck/k9/activity/ChooseFolder$4;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Lcom/fsck/k9/activity/ChooseFolder;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 383
    const/4 v11, -0x1

    if-eq v9, v11, :cond_0

    .line 384
    iget-object v11, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-static {v11}, Lcom/fsck/k9/activity/ChooseFolder;->access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->setSelectedFolder(I)V

    goto/16 :goto_0
.end method

.method public listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-static {v0}, Lcom/fsck/k9/activity/ChooseFolder;->access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->progress(Z)V

    goto :goto_0
.end method

.method public listFoldersFinished(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-static {v0}, Lcom/fsck/k9/activity/ChooseFolder;->access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->progress(Z)V

    goto :goto_0
.end method

.method public listFoldersStarted(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-static {v0}, Lcom/fsck/k9/activity/ChooseFolder;->access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;->progress(Z)V

    goto :goto_0
.end method
