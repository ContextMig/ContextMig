.class Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$2;
.super Ljava/lang/Object;
.source "RecyclerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->onBindViewHolder(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

.field final synthetic val$holder:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$2;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    iput-object p2, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$2;->val$holder:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$2;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-static {p1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->access$000(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object p1

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$2;->val$holder:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->toggleChecked(I)V

    return-void
.end method
