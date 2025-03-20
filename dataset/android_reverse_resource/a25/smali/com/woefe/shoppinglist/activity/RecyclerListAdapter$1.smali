.class Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$1;
.super Ljava/lang/Object;
.source "RecyclerListAdapter.java"

# interfaces
.implements Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$1;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShoppingListUpdate(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;)V
    .locals 1

    .line 35
    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 49
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$1;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-virtual {p1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 46
    :pswitch_0
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$1;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->getIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 37
    :pswitch_1
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$1;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->getIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$1;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->getIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$1;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->getOldIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$Event;->getNewIndex()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->notifyItemMoved(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
