.class public Lkdk/android/simplydo/SimpleDataViewer;
.super Ljava/lang/Object;
.source "SimpleDataViewer.java"

# interfaces
.implements Lkdk/android/simplydo/DataViewer;


# instance fields
.field private dataManager:Lkdk/android/simplydo/DataManager;

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

.field private selectedList:Lkdk/android/simplydo/ListDesc;


# direct methods
.method public constructor <init>(Lkdk/android/simplydo/DataManager;)V
    .locals 1
    .param p1, "dataManager"    # Lkdk/android/simplydo/DataManager;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->itemData:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->listData:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public createItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v0

    .line 171
    .local v0, "listId":I
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v1, v0, p1}, Lkdk/android/simplydo/DataManager;->createItem(ILjava/lang/String;)I

    .line 172
    invoke-virtual {p0, v0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchItems(I)V

    .line 173
    return-void
.end method

.method public createList(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v0, p1}, Lkdk/android/simplydo/DataManager;->createList(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchLists()V

    .line 165
    return-void
.end method

.method public deleteInactive()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    if-nez v1, :cond_0

    .line 180
    const-string v1, "SimplyDo"

    const-string v2, "deleteInactive() called but no list is selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v0

    .line 185
    .local v0, "listId":I
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v1, v0}, Lkdk/android/simplydo/DataManager;->deleteInactive(I)V

    .line 186
    invoke-virtual {p0, v0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchItems(I)V

    .line 187
    invoke-virtual {p0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchLists()V

    goto :goto_0
.end method

.method public deleteItem(Lkdk/android/simplydo/ItemDesc;)V
    .locals 2
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    .line 200
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    .line 201
    .local v0, "itemId":I
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v1, v0}, Lkdk/android/simplydo/DataManager;->deleteItem(I)V

    .line 202
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lkdk/android/simplydo/SimpleDataViewer;->fetchItems(I)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchLists()V

    .line 207
    return-void
.end method

.method public deleteList(I)V
    .locals 1
    .param p1, "listId"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v0, p1}, Lkdk/android/simplydo/DataManager;->deleteList(I)V

    .line 194
    invoke-virtual {p0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchLists()V

    .line 195
    return-void
.end method

.method public fetchItems(I)V
    .locals 2
    .param p1, "listId"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->itemData:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lkdk/android/simplydo/DataManager;->fetchItems(ILjava/util/List;)V

    .line 104
    return-void
.end method

.method public fetchList(I)Lkdk/android/simplydo/ListDesc;
    .locals 4
    .param p1, "listId"    # I

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "rv":Lkdk/android/simplydo/ListDesc;
    iget-object v3, p0, Lkdk/android/simplydo/SimpleDataViewer;->listData:Ljava/util/List;

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

    .line 89
    .local v1, "list":Lkdk/android/simplydo/ListDesc;
    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 91
    move-object v2, v1

    .line 96
    .end local v1    # "list":Lkdk/android/simplydo/ListDesc;
    :cond_1
    return-object v2
.end method

.method public fetchLists()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v0}, Lkdk/android/simplydo/DataManager;->fetchLists()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->listData:Ljava/util/List;

    .line 80
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public getItemData()Ljava/util/List;
    .locals 1
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
    .line 46
    iget-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->itemData:Ljava/util/List;

    return-object v0
.end method

.method public getListData()Ljava/util/List;
    .locals 1
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
    .line 53
    iget-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->listData:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedList()Lkdk/android/simplydo/ListDesc;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    return-object v0
.end method

.method public invalidateCache()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public moveItem(Lkdk/android/simplydo/ItemDesc;I)V
    .locals 2
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;
    .param p2, "toListId"    # I

    .prologue
    .line 151
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    .line 152
    .local v0, "itemId":I
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v1, v0, p2}, Lkdk/android/simplydo/DataManager;->moveItem(II)V

    .line 153
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lkdk/android/simplydo/SimpleDataViewer;->fetchItems(I)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchLists()V

    .line 158
    return-void
.end method

.method public setSelectedList(Lkdk/android/simplydo/ListDesc;)V
    .locals 1
    .param p1, "selectedList"    # Lkdk/android/simplydo/ListDesc;

    .prologue
    .line 59
    iput-object p1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    .line 60
    if-nez p1, :cond_0

    .line 62
    iget-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->itemData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchItems(I)V

    goto :goto_0
.end method

.method public updateItemActiveness(Lkdk/android/simplydo/ItemDesc;Z)V
    .locals 2
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;
    .param p2, "active"    # Z

    .prologue
    .line 109
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    .line 110
    .local v0, "itemId":I
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v1, v0, p2}, Lkdk/android/simplydo/DataManager;->updateItemActiveness(IZ)V

    .line 111
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lkdk/android/simplydo/SimpleDataViewer;->fetchItems(I)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchLists()V

    .line 116
    return-void
.end method

.method public updateItemLabel(Lkdk/android/simplydo/ItemDesc;Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;
    .param p2, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    .line 134
    .local v0, "itemId":I
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v1, v0, p2}, Lkdk/android/simplydo/DataManager;->updateItemLabel(ILjava/lang/String;)V

    .line 135
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lkdk/android/simplydo/SimpleDataViewer;->fetchItems(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public updateItemStarness(Lkdk/android/simplydo/ItemDesc;Z)V
    .locals 2
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;
    .param p2, "star"    # Z

    .prologue
    .line 121
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    .line 122
    .local v0, "itemId":I
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v1, v0, p2}, Lkdk/android/simplydo/DataManager;->updateItemStarness(IZ)V

    .line 123
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lkdk/android/simplydo/SimpleDataViewer;->selectedList:Lkdk/android/simplydo/ListDesc;

    invoke-virtual {v1}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lkdk/android/simplydo/SimpleDataViewer;->fetchItems(I)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchLists()V

    .line 128
    return-void
.end method

.method public updateListLabel(ILjava/lang/String;)V
    .locals 1
    .param p1, "listId"    # I
    .param p2, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lkdk/android/simplydo/SimpleDataViewer;->dataManager:Lkdk/android/simplydo/DataManager;

    invoke-virtual {v0, p1, p2}, Lkdk/android/simplydo/DataManager;->updateListLabel(ILjava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lkdk/android/simplydo/SimpleDataViewer;->fetchLists()V

    .line 146
    return-void
.end method
