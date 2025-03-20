.class public Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$RecyclerListCallback;,
        Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;,
        Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final colorBackground:I

.field private final colorChecked:I

.field private final colorDefault:I

.field private final colorRemove:I

.field private final listener:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;

.field private longClickListener:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;

.field private shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

.field private touchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$1;

    invoke-direct {v0, p0}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$1;-><init>(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)V

    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->listener:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;

    const v0, 0x7f050064

    .line 55
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorChecked:I

    const v0, 0x7f050065

    .line 56
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorDefault:I

    const v0, 0x7f050027

    .line 57
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorRemove:I

    const v0, 0x7f050028

    .line 58
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorBackground:I

    .line 59
    new-instance p1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$RecyclerListCallback;

    invoke-direct {v0, p0}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$RecyclerListCallback;-><init>(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)V

    invoke-direct {p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->touchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->longClickListener:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->touchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorBackground:I

    return p0
.end method

.method static synthetic access$400(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorRemove:I

    return p0
.end method


# virtual methods
.method public connectShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    .line 64
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->listener:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;

    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->addListener(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public disconnectShoppingList()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->listener:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->removeListener(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList$ShoppingListListener;)V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public move(II)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0, p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->move(II)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    check-cast p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->onBindViewHolder(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;I)V
    .locals 2
    .param p1    # Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    .line 102
    iget-object v0, p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->quantity:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getQuantity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 106
    iget-object p2, p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorChecked:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object p2, p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->quantity:Landroid/widget/TextView;

    iget v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorChecked:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p2, p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorDefault:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object p2, p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->quantity:Landroid/widget/TextView;

    iget v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorDefault:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    :goto_0
    iget-object p2, p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->colorBackground:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 115
    iget-object p2, p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->view:Landroid/view/View;

    new-instance v0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$2;-><init>(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p2, p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->view:Landroid/view/View;

    new-instance v0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$3;-><init>(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    iget-object p2, p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;->dragHandler:Landroid/widget/ImageView;

    new-instance v0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$4;-><init>(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0031

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    new-instance p2, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public registerRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->touchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0, p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->remove(I)Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->longClickListener:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;

    return-void
.end method
