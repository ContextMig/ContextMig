.class Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$5;
.super Ljava/lang/Object;
.source "ShoppingListViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3ef65f5e78358d57L    # -209940.19130410746

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$5"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 190
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$5;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 193
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$5;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-virtual {v1, p2}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->openContextMenu(Landroid/view/View;)V

    .line 194
    aput-boolean v2, v0, v2

    return-void
.end method
