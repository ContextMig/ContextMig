.class public Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShoppingListViewActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final EXTRA_SHOPPING_LIST_ID:Ljava/lang/String; = "shoppingListId"


# instance fields
.field private cursorAdapter:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;

.field private dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

.field private itemsListView:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;

.field private mShareActionProvider:Landroid/support/v7/widget/ShareActionProvider;

.field private shoppingListId:J

.field private shoppingListItemsCursor:Landroid/database/Cursor;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xe0acf751312cadL

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity"

    const/16 v3, 0x5e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->cursorAdapter:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)J
    .locals 5

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-wide v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListId:J

    const/16 v1, 0x58

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method static synthetic access$100(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->itemsListView:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;

    const/16 v2, 0x59

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    const/16 v2, 0x5a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Landroid/database/Cursor;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    const/16 v2, 0x5c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$302(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    const/16 v1, 0x5b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$400(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->cursorAdapter:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;

    const/16 v2, 0x5d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x50

    aput-boolean v3, v0, v2

    .line 368
    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 369
    const/16 v1, 0x51

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const/16 v3, 0x2c

    aput-boolean v8, v2, v3

    .line 228
    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    iget v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v1, 0x2d

    aput-boolean v8, v2, v1

    .line 230
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    const/16 v1, 0x2e

    aput-boolean v8, v2, v1

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 234
    .local v0, "menuItemIndex":I
    packed-switch v0, :pswitch_data_0

    .line 287
    const-string v1, "WTF?!"

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    const/16 v1, 0x3d

    aput-boolean v8, v2, v1

    .line 291
    :goto_0
    const/16 v1, 0x3e

    aput-boolean v8, v2, v1

    return v8

    .line 236
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x2f

    aput-boolean v8, v2, v3

    .line 237
    const-string v3, "itemId"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v3, 0x30

    aput-boolean v8, v2, v3

    .line 238
    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 239
    const/16 v1, 0x31

    aput-boolean v8, v2, v1

    goto :goto_0

    .line 242
    :pswitch_1
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x32

    aput-boolean v8, v2, v3

    .line 244
    const v3, 0x7f07002c

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v3, 0x33

    aput-boolean v8, v2, v3

    .line 246
    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v3, v4, v5}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListIdBasedOnItemId(J)J

    move-result-wide v6

    const/16 v3, 0x34

    aput-boolean v8, v2, v3

    .line 248
    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v3, v6, v7}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getAllShoppingListsExceptOf(J)Landroid/database/Cursor;

    move-result-object v3

    const/16 v6, 0x35

    aput-boolean v8, v2, v6

    .line 251
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x36

    aput-boolean v8, v2, v6

    .line 253
    new-instance v6, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;

    invoke-direct {v6, p0, v3, v4, v5}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$6;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;Landroid/database/Cursor;J)V

    const-string v4, "name"

    invoke-virtual {v1, v3, v6, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v3, 0x37

    aput-boolean v8, v2, v3

    .line 278
    :goto_1
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/16 v3, 0x39

    aput-boolean v8, v2, v3

    .line 279
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 281
    const/16 v1, 0x3a

    aput-boolean v8, v2, v1

    goto :goto_0

    .line 274
    :cond_0
    const v3, 0x7f070034

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v3, 0x38

    aput-boolean v8, v2, v3

    goto :goto_1

    .line 283
    :pswitch_2
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v1, v4, v5}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->deleteItem(J)Z

    const/16 v1, 0x3b

    aput-boolean v8, v2, v1

    .line 284
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->refreshListView()V

    .line 285
    const/16 v1, 0x3c

    aput-boolean v8, v2, v1

    goto/16 :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00bd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/16 v4, 0x8

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x4

    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v8, v7, v8

    .line 49
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->onCreate(Landroid/content/Context;)V

    aput-boolean v8, v7, v9

    .line 50
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->setContentView(I)V

    aput-boolean v8, v7, v10

    .line 53
    const v0, 0x7f0f0069

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    aput-boolean v8, v7, v6

    .line 54
    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v1, 0x5

    aput-boolean v8, v7, v1

    .line 57
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x6

    aput-boolean v8, v7, v0

    .line 69
    :goto_0
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shoppingListId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListId:J

    const/16 v0, 0xb

    aput-boolean v8, v7, v0

    .line 72
    const v0, 0x7f0f008e

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->itemsListView:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;

    const/16 v0, 0xc

    aput-boolean v8, v7, v0

    .line 77
    new-instance v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    const/16 v0, 0xd

    aput-boolean v8, v7, v0

    .line 83
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    iget-wide v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListId:J

    invoke-virtual {v0, v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListCursor(J)Landroid/database/Cursor;

    move-result-object v1

    const/16 v0, 0xe

    aput-boolean v8, v7, v0

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v0, 0xf

    aput-boolean v8, v7, v0

    .line 87
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    aput-boolean v8, v7, v2

    .line 89
    const-string v2, "description"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    aput-boolean v8, v7, v3

    .line 92
    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x12

    aput-boolean v8, v7, v0

    .line 94
    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x13

    aput-boolean v8, v7, v3

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x14

    aput-boolean v8, v7, v2

    .line 96
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x15

    aput-boolean v8, v7, v0

    .line 101
    :goto_1
    const-string v0, "idCloud"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/16 v0, 0x17

    aput-boolean v8, v7, v0

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x18

    aput-boolean v8, v7, v0

    .line 106
    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    const/16 v1, 0x19

    aput-boolean v8, v7, v1

    .line 107
    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;

    invoke-direct {v1, p0, v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$2;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;J)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1a

    aput-boolean v8, v7, v0

    .line 118
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    iget-wide v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListId:J

    invoke-virtual {v0, v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListItemsCursor(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    const/16 v0, 0x1b

    aput-boolean v8, v7, v0

    .line 121
    new-instance v0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;

    const v2, 0x7f04002c

    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "name"

    aput-object v5, v4, v1

    const-string v1, "quantity"

    aput-object v1, v4, v8

    const-string v1, "quantityUnit"

    aput-object v1, v4, v9

    const-string v1, "checked"

    aput-object v1, v4, v10

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    const v6, 0x7f0f0098

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->cursorAdapter:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;

    const/16 v0, 0x1c

    aput-boolean v8, v7, v0

    .line 131
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->itemsListView:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;

    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->cursorAdapter:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;

    invoke-virtual {v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->setDragNDropAdapter(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;)V

    const/16 v0, 0x1d

    aput-boolean v8, v7, v0

    .line 133
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->itemsListView:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;

    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;

    invoke-direct {v1, p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$3;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)V

    invoke-virtual {v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->setOnItemDragNDropListener(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;)V

    const/16 v0, 0x1e

    aput-boolean v8, v7, v0

    .line 150
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->cursorAdapter:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;

    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;

    invoke-direct {v1, p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)V

    invoke-virtual {v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    const/16 v0, 0x1f

    aput-boolean v8, v7, v0

    .line 187
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->itemsListView:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->registerForContextMenu(Landroid/view/View;)V

    const/16 v0, 0x20

    aput-boolean v8, v7, v0

    .line 190
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->itemsListView:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;

    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$5;

    invoke-direct {v1, p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$5;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)V

    invoke-virtual {v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0x21

    aput-boolean v8, v7, v0

    .line 197
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->itemsListView:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;

    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->setEmptyView(Landroid/view/View;)V

    .line 198
    const/16 v0, 0x22

    aput-boolean v8, v7, v0

    return-void

    .line 57
    :cond_0
    const/4 v1, 0x7

    aput-boolean v8, v7, v1

    .line 58
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    aput-boolean v8, v7, v4

    .line 59
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/16 v1, 0x9

    aput-boolean v8, v7, v1

    .line 60
    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$1;

    invoke-direct {v1, p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$1;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xa

    aput-boolean v8, v7, v0

    goto/16 :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x16

    aput-boolean v8, v7, v0

    goto/16 :goto_1

    .line 121
    nop

    :array_0
    .array-data 4
        0x7f0f0099
        0x7f0f009a
        0x7f0f009b
        0x7f0f009c
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 209
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const/16 v1, 0x24

    aput-boolean v4, v0, v1

    .line 210
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0f008e

    if-eq v1, v2, :cond_0

    const/16 v1, 0x25

    aput-boolean v4, v0, v1

    .line 222
    :goto_0
    const/16 v1, 0x2b

    aput-boolean v4, v0, v1

    return-void

    .line 211
    :cond_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const/16 v1, 0x26

    aput-boolean v4, v0, v1

    .line 214
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v1, 0x27

    aput-boolean v4, v0, v1

    .line 215
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-boolean v4, v0, v2

    .line 217
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/16 v1, 0x29

    aput-boolean v4, v0, v1

    .line 220
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v1, 0x2a

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 297
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f100003

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v0, 0x3f

    aput-boolean v5, v1, v0

    .line 300
    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40

    aput-boolean v5, v1, v2

    .line 301
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->cursorAdapter:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;

    invoke-virtual {v3}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->createShareString(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x41

    aput-boolean v5, v1, v0

    .line 304
    const v0, 0x7f0f00c0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x42

    aput-boolean v5, v1, v3

    .line 307
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroid/support/v4/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ShareActionProvider;

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->mShareActionProvider:Landroid/support/v7/widget/ShareActionProvider;

    .line 309
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->mShareActionProvider:Landroid/support/v7/widget/ShareActionProvider;

    if-nez v0, :cond_0

    const/16 v0, 0x43

    aput-boolean v5, v1, v0

    .line 313
    :goto_0
    const/16 v0, 0x46

    aput-boolean v5, v1, v0

    return v5

    .line 309
    :cond_0
    const/16 v0, 0x44

    aput-boolean v5, v1, v0

    .line 310
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->mShareActionProvider:Landroid/support/v7/widget/ShareActionProvider;

    invoke-static {v2}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->createShareIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    const/16 v0, 0x45

    aput-boolean v5, v1, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 373
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const/16 v1, 0x52

    aput-boolean v2, v0, v1

    .line 375
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v1, 0x53

    aput-boolean v2, v0, v1

    .line 376
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->closeDb()V

    .line 378
    const/16 v1, 0x54

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 318
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 349
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x4f

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 320
    :pswitch_0
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    iget-wide v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListId:J

    invoke-virtual {v1, v4, v5}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->deleteCheckedItems(J)Z

    const/16 v1, 0x47

    aput-boolean v0, v2, v1

    .line 321
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->refreshListView()V

    .line 322
    const/16 v1, 0x48

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 327
    :pswitch_1
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x49

    aput-boolean v0, v2, v3

    .line 329
    const v3, 0x7f07002b

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v3, 0x4a

    aput-boolean v0, v2, v3

    .line 331
    const/high16 v3, 0x7f0c0000

    new-instance v4, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;

    invoke-direct {v4, p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$7;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v3, 0x4b

    aput-boolean v0, v2, v3

    .line 341
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/16 v3, 0x4c

    aput-boolean v0, v2, v3

    .line 342
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    const/16 v1, 0x4d

    aput-boolean v0, v2, v1

    .line 344
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->refreshListView()V

    .line 345
    const/16 v1, 0x4e

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00c1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 382
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 384
    const/16 v1, 0x55

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 202
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 204
    const/16 v1, 0x23

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public refreshListView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 387
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    iget-wide v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListId:J

    invoke-virtual {v1, v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListItemsCursor(J)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    const/16 v1, 0x56

    aput-boolean v4, v0, v1

    .line 388
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->cursorAdapter:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->shoppingListItemsCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 389
    const/16 v1, 0x57

    aput-boolean v4, v0, v1

    return-void
.end method
