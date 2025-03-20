.class Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$1;
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


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x72b153791237a152L    # 2.9575797542053715E244

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$1;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$1;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-virtual {v1}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->onBackPressed()V

    .line 64
    aput-boolean v2, v0, v2

    return-void
.end method
