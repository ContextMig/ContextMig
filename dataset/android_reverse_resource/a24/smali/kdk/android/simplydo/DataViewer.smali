.class public interface abstract Lkdk/android/simplydo/DataViewer;
.super Ljava/lang/Object;
.source "DataViewer.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createItem(Ljava/lang/String;)V
.end method

.method public abstract createList(Ljava/lang/String;)V
.end method

.method public abstract deleteInactive()V
.end method

.method public abstract deleteItem(Lkdk/android/simplydo/ItemDesc;)V
.end method

.method public abstract deleteList(I)V
.end method

.method public abstract fetchItems(I)V
.end method

.method public abstract fetchList(I)Lkdk/android/simplydo/ListDesc;
.end method

.method public abstract fetchLists()V
.end method

.method public abstract flush()V
.end method

.method public abstract getItemData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ItemDesc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ListDesc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedList()Lkdk/android/simplydo/ListDesc;
.end method

.method public abstract invalidateCache()V
.end method

.method public abstract moveItem(Lkdk/android/simplydo/ItemDesc;I)V
.end method

.method public abstract setSelectedList(Lkdk/android/simplydo/ListDesc;)V
.end method

.method public abstract updateItemActiveness(Lkdk/android/simplydo/ItemDesc;Z)V
.end method

.method public abstract updateItemLabel(Lkdk/android/simplydo/ItemDesc;Ljava/lang/String;)V
.end method

.method public abstract updateItemStarness(Lkdk/android/simplydo/ItemDesc;Z)V
.end method

.method public abstract updateListLabel(ILjava/lang/String;)V
.end method
