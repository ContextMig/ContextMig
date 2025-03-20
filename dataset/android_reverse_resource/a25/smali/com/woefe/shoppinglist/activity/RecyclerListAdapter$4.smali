.class Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$4;
.super Ljava/lang/Object;
.source "RecyclerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 131
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$4;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    iput-object p2, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$4;->val$holder:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$4;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-static {p1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->access$200(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$4;->val$holder:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ViewHolder;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
