.class Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;
.super Ljava/lang/Object;
.source "ShoppingListViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3b3352f54cddb7b9L    # 1.5984484053004953E-23

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 332
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 334
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v1}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$200(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    move-result-object v1

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v2}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$000(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->sortItems(IJ)Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v4, v0, v4

    .line 337
    :goto_0
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void

    .line 334
    :cond_0
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 335
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-virtual {v1}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->refreshListView()V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
