.class Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;
.super Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;
.source "ShoppingList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;",
        "Ljava/util/ListIterator<",
        "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;


# direct methods
.method private constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/util/ListIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    const/4 v0, 0x0

    .line 358
    invoke-direct {p0, p1, p2, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/util/Iterator;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$1;)V

    .line 359
    iput-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/util/ListIterator;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 393
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->access$200(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 353
    check-cast p1, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->add(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)V

    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Lcom/woefe/shoppinglist/shoppinglist/ListItem;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->previous()Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 386
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->access$200(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 353
    check-cast p1, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ListItr;->set(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)V

    return-void
.end method
