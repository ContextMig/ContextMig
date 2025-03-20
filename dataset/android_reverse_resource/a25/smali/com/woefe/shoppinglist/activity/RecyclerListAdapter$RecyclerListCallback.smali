.class public Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$RecyclerListCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "RecyclerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerListCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;


# direct methods
.method public constructor <init>(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$RecyclerListCallback;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/4 p1, 0x3

    const/16 p2, 0x20

    .line 187
    invoke-static {p1, p2}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$RecyclerListCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    .line 209
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    .line 211
    iget-object p2, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p5, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$RecyclerListCallback;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-static {p5}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->access$300(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p2, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p5, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$RecyclerListCallback;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-static {p5}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->access$400(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;)I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 215
    :goto_0
    iget-object p2, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 216
    iget-object p1, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 218
    :cond_1
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    :goto_1
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 192
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$RecyclerListCallback;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->move(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 202
    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$RecyclerListCallback;->this$0:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->remove(I)V

    return-void
.end method
