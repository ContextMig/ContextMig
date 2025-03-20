.class Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1;
.super Ljava/lang/Object;
.source "ShoppingListViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1518358377b04a72L    # -9.54770638333481E206

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1;->$jacocoInit()[Z

    move-result-object v0

    .line 167
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1;->this$1:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1;->$jacocoInit()[Z

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-boolean v5, v1, v5

    .line 171
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1;->this$1:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;

    iget-object v0, v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$200(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    move-result-object v0

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->itemCheckBoxChange(JZ)I

    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    .line 172
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1;->this$1:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;

    iget-object v0, v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-virtual {v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->refreshListView()V

    .line 173
    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    return-void
.end method
