.class Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;
.super Ljava/lang/Object;
.source "ShoppingListViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

.field final synthetic val$allShoppingListsCursor:Landroid/database/Cursor;

.field final synthetic val$itemId:J


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x352da63e0ceb934bL    # 1.5477700795539967E-52

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;Landroid/database/Cursor;J)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->$jacocoInit()[Z

    move-result-object v0

    .line 253
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    iput-object p2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->val$allShoppingListsCursor:Landroid/database/Cursor;

    iput-wide p3, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->val$itemId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->$jacocoInit()[Z

    move-result-object v1

    .line 257
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->val$allShoppingListsCursor:Landroid/database/Cursor;

    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    aput-boolean v8, v1, v8

    .line 258
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->val$allShoppingListsCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->val$allShoppingListsCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    aput-boolean v8, v1, v4

    .line 260
    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v4}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$200(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    move-result-object v4

    iget-wide v6, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->val$itemId:J

    invoke-virtual {v4, v6, v7, v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->moveItemToAnotherShoppingList(JJ)I

    move-result v0

    .line 261
    .local v0, "result":I
    if-gtz v0, :cond_0

    const/4 v2, 0x3

    aput-boolean v8, v1, v2

    .line 266
    :goto_0
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-virtual {v2}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->refreshListView()V

    .line 267
    const/16 v2, 0x9

    aput-boolean v8, v1, v2

    return-void

    .line 261
    :cond_0
    const/4 v2, 0x4

    aput-boolean v8, v1, v2

    .line 262
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-virtual {v2}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-virtual {v4}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->val$allShoppingListsCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;->val$allShoppingListsCursor:Landroid/database/Cursor;

    const-string v6, "name"

    const/4 v7, 0x5

    aput-boolean v8, v1, v7

    .line 263
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x6

    aput-boolean v8, v1, v5

    .line 262
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/4 v3, 0x7

    aput-boolean v8, v1, v3

    .line 264
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x8

    aput-boolean v8, v1, v2

    goto :goto_0
.end method
