.class Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;
.super Ljava/lang/Object;
.source "ShoppingList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;


# direct methods
.method private constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/woefe/shoppinglist/shoppinglist/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/util/Iterator;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$1;)V
    .locals 0

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;-><init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/woefe/shoppinglist/shoppinglist/ListItem;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;->next()Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 349
    iget-object v0, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Itr;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-static {}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->newOther()Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->access$200(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V

    return-void
.end method
