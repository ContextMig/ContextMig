.class Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;
.super Ljava/lang/Object;
.source "ShoppingListViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$shoppingListIdCloud:J


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x75f84eac6cb0ede4L    # -2.407731062924327E-260

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;J)V
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    iput-wide p2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;->val$shoppingListIdCloud:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    const-class v3, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-boolean v6, v0, v6

    .line 111
    const-string v2, "shoppingListId"

    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v3}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$000(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    .line 112
    const-string v2, "shoppingListIdCloud"

    iget-wide v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;->val$shoppingListIdCloud:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v6, v0, v2

    .line 113
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-virtual {v2, v1}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    return-void
.end method
