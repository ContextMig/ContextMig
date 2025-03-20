.class Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;
.super Ljava/lang/Object;
.source "ShoppingListViewActivity.java"

# interfaces
.implements Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x753c176eac82e8afL    # 5.272441324630603E256

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 133
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemDrag(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onItemDrop(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;Landroid/view/View;IIJ)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->$jacocoInit()[Z

    move-result-object v6

    .line 143
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$100(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;

    move-result-object v0

    invoke-virtual {v0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    const/4 v0, 0x2

    aput-boolean v7, v6, v0

    .line 144
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$200(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    move-result-object v0

    move-wide v2, p5

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->changeItemPosition(Landroid/database/Cursor;JII)V

    const/4 v0, 0x3

    aput-boolean v7, v6, v0

    .line 146
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v1}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$200(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    move-result-object v1

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v2}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$000(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListItemsCursor(J)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$302(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    const/4 v0, 0x4

    aput-boolean v7, v6, v0

    .line 147
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$400(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;

    move-result-object v0

    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v1}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$300(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 148
    const/4 v0, 0x5

    aput-boolean v7, v6, v0

    return-void
.end method
