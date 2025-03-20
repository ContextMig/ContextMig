.class Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xbacfb507edf256L

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/MainActivity$3"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 151
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$3;->$jacocoInit()[Z

    move-result-object v1

    .line 154
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    aput-boolean v6, v1, v6

    .line 155
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    .line 157
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    const-class v5, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x3

    aput-boolean v6, v1, v4

    .line 158
    const-string v4, "shoppingListId"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v2, 0x4

    aput-boolean v6, v1, v2

    .line 159
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$3;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-virtual {v2, v0}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    return-void
.end method
