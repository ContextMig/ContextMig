.class public Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
.super Ljava/util/ArrayList;
.source "ShoppingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;,
        Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;,
        Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;,
        Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static currentID:I


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->listeners:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->listeners:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method private declared-synchronized generateID()I
    .locals 1

    monitor-enter p0

    .line 249
    :try_start_0
    sget v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->currentID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->currentID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;

    .line 254
    invoke-interface {v1, p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;->onShoppingListUpdate(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILcom/woefe/shoppinglist/shoppinglist/ListItem;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 81
    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newItemInserted(I)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {p0, p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->add(ILcom/woefe/shoppinglist/shoppinglist/ListItem;)V

    return-void
.end method

.method public add(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)Z
    .locals 2

    .line 69
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ListItem$ListItemWithID;

    invoke-direct {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->generateID()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/woefe/shoppinglist/shoppinglist/ListItem$ListItemWithID;-><init>(ILcom/woefe/shoppinglist/shoppinglist/ListItem;)V

    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 70
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newItemInserted(I)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    check-cast p1, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->add(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 75
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->add(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;)Z"
        }
    .end annotation

    .line 93
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 94
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;)Z"
        }
    .end annotation

    .line 86
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 87
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return p1
.end method

.method public addListener(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 167
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 168
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public createDescriptionIndex()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 234
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    .line 235
    invoke-virtual {v2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public editItem(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 213
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    .line 214
    invoke-virtual {v0, p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->setDescription(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p3}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->setQuantity(Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newItemChanged(I)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public getId(I)I
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woefe/shoppinglist/shoppinglist/ListItem$ListItemWithID;

    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ListItem$ListItemWithID;->getId()I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;

    invoke-super {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/util/Iterator;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$1;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;

    invoke-super {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/util/ListIterator;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$1;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;

    invoke-super {p0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/util/ListIterator;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$1;)V

    return-object v0
.end method

.method public move(II)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    invoke-static {p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newItemMoved(II)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public remove(I)Lcom/woefe/shoppinglist/shoppinglist/ListItem;
    .locals 1

    .line 107
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    .line 108
    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newItemRemoved(I)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->remove(I)Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 114
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    :cond_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 129
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    :cond_0
    return p1
.end method

.method public removeAllCheckedItems()V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 223
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    .line 225
    invoke-virtual {v1}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 229
    :cond_1
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;)Z"
        }
    .end annotation

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 140
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 143
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    :cond_1
    return p1
.end method

.method public removeListener(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected removeRange(II)V
    .locals 0

    .line 123
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 124
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 151
    invoke-super {p0, p1}, Ljava/util/ArrayList;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 152
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    :cond_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 158
    invoke-super {p0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    :cond_0
    return p1
.end method

.method public set(ILcom/woefe/shoppinglist/shoppinglist/ListItem;)Lcom/woefe/shoppinglist/shoppinglist/ListItem;
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    .line 101
    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newItemChanged(I)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-object p2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p2, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {p0, p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->set(ILcom/woefe/shoppinglist/shoppinglist/ListItem;)Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    move-result-object p1

    return-object p1
.end method

.method public setChecked(IZ)V
    .locals 1

    .line 199
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {v0, p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->setChecked(Z)V

    .line 200
    invoke-static {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newItemChanged(I)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->name:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    .line 192
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 193
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 194
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->notifyListChanged(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public toggleChecked(I)V
    .locals 1

    .line 204
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->setChecked(IZ)V

    return-void
.end method
