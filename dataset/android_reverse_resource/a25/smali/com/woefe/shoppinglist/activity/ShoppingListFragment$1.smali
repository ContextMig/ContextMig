.class Lcom/woefe/shoppinglist/activity/ShoppingListFragment$1;
.super Ljava/lang/Object;
.source "ShoppingListFragment.java"

# interfaces
.implements Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/ShoppingListFragment;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/ShoppingListFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment$1;->this$0:Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(I)Z
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment$1;->this$0:Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    invoke-static {v0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->access$000(Lcom/woefe/shoppinglist/activity/ShoppingListFragment;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    .line 115
    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment$1;->this$0:Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    invoke-static {v1}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->access$100(Lcom/woefe/shoppinglist/activity/ShoppingListFragment;)Lcom/woefe/shoppinglist/activity/EditBar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getQuantity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/woefe/shoppinglist/activity/EditBar;->showEdit(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
