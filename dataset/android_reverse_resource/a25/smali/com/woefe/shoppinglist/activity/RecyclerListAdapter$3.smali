.class Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$3;
.super Ljava/lang/Object;
.source "RecyclerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 123
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$3;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    iput-object p2, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$3;->val$holder:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$3;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-static {p1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->access$100(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$3;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    .line 127
    invoke-static {p1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->access$100(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$3;->val$holder:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;->onLongClick(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
