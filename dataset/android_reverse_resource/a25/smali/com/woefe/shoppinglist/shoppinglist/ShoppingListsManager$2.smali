.class Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$2;
.super Ljava/lang/Object;
.source "ShoppingListsManager.java"

# interfaces
.implements Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;->addShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

.field final synthetic val$metadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$2;->this$0:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager;

    iput-object p2, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$2;->val$metadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShoppingListUpdate(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$2;->val$metadata:Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;->access$802(Lcom/woefe/shoppinglist/shoppinglist/ShoppingListsManager$ShoppingListMetadata;Z)Z

    return-void
.end method
