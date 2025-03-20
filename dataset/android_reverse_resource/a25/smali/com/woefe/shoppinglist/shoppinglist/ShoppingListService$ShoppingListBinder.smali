.class public Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;
.super Landroid/os/Binder;
.source "ShoppingListService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShoppingListBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;


# direct methods
.method public constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public addList(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/woefe/shoppinglist/shoppinglist/ShoppingListException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->addList(Ljava/lang/String;)V

    return-void
.end method

.method public addListChangeListener(Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->setListChangeListener(Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;)V

    return-void
.end method

.method public getList(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->getList(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object p1

    return-object p1
.end method

.method public getListNames()[Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->getListNames()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-static {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 106
    new-instance v1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder$1;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder$1;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public hasList(Ljava/lang/String;)Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->hasList(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->getListNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public removeList(Ljava/lang/String;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->removeList(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeListChangeListener(Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->removeListChangeListenerListener(Lcom/woefe/shoppinglist/shoppinglist/ListsChangeListener;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->access$100(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->size()I

    move-result v0

    return v0
.end method

.method public usesFallbackDir()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService$ShoppingListBinder;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;->access$000(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListService;)Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/DirectoryStatus;->isFallback()Z

    move-result v0

    return v0
.end method
