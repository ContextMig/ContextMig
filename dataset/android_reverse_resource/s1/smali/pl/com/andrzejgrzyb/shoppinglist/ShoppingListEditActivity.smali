.class public Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShoppingListEditActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final EXTRA_SHOPPING_LIST_ID:Ljava/lang/String; = "shoppingListId"


# instance fields
.field private dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

.field private editFlag:Z

.field private oldDescription:Ljava/lang/String;

.field private oldName:Ljava/lang/String;

.field private shoppingListDescriptionEditText:Landroid/widget/EditText;

.field private shoppingListId:J

.field private shoppingListNameEditText:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6e6fc406a5db0e63L    # -4.38587343192708E-224

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity"

    const/16 v3, 0x34

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClickAddShoppingList(Landroid/view/View;)V
    .locals 13

    .prologue
    const-wide/16 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->$jacocoInit()[Z

    move-result-object v10

    .line 114
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->shoppingListNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x22

    aput-boolean v11, v10, v1

    .line 116
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/16 v1, 0x23

    aput-boolean v11, v10, v1

    .line 118
    const v1, 0x7f070021

    invoke-static {p0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x24

    aput-boolean v11, v10, v1

    .line 153
    .local v7, "description":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x33

    aput-boolean v11, v10, v1

    return-void

    .line 122
    .end local v7    # "description":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->shoppingListDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 123
    .restart local v7    # "description":Ljava/lang/String;
    iget-boolean v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->editFlag:Z

    if-nez v1, :cond_2

    const/16 v1, 0x25

    aput-boolean v11, v10, v1

    .line 124
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v1, v4, v5, v6, v7}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->insertShoppingList(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 128
    .local v8, "rowId":J
    const-wide/16 v2, -0x1

    cmp-long v1, v8, v2

    if-nez v1, :cond_1

    const/16 v1, 0x26

    aput-boolean v11, v10, v1

    .line 132
    :goto_1
    const/16 v1, 0x29

    aput-boolean v11, v10, v1

    .line 149
    .end local v8    # "rowId":J
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x31

    aput-boolean v11, v10, v2

    .line 150
    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x32

    aput-boolean v11, v10, v1

    goto :goto_0

    .line 128
    .restart local v8    # "rowId":J
    :cond_1
    const/16 v1, 0x27

    aput-boolean v11, v10, v1

    .line 130
    const v1, 0x7f070037

    invoke-static {p0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x28

    aput-boolean v11, v10, v1

    goto :goto_1

    .line 133
    .end local v8    # "rowId":J
    :cond_2
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->oldName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2a

    aput-boolean v11, v10, v1

    .line 134
    :goto_3
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    iget-wide v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->shoppingListId:J

    invoke-virtual/range {v1 .. v7}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateShoppingList(JJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "result":I
    if-eq v0, v11, :cond_4

    const/16 v1, 0x2c

    aput-boolean v11, v10, v1

    .line 143
    :goto_4
    const/16 v1, 0x2f

    aput-boolean v11, v10, v1

    goto :goto_2

    .line 133
    .end local v0    # "result":I
    :cond_3
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->oldDescription:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x2b

    aput-boolean v11, v10, v1

    goto :goto_3

    .line 139
    .restart local v0    # "result":I
    :cond_4
    const/16 v1, 0x2d

    aput-boolean v11, v10, v1

    .line 141
    const v1, 0x7f070038

    invoke-static {p0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x2e

    aput-boolean v11, v10, v1

    goto :goto_4

    .line 145
    .end local v0    # "result":I
    :cond_5
    const-string v1, "Nothing changed"

    invoke-static {p0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x30

    aput-boolean v11, v10, v1

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->$jacocoInit()[Z

    move-result-object v8

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v10, v8, v10

    .line 37
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->onCreate(Landroid/content/Context;)V

    aput-boolean v10, v8, v4

    .line 38
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->setContentView(I)V

    const/4 v0, 0x3

    aput-boolean v10, v8, v0

    .line 40
    const v0, 0x7f0f0069

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x4

    aput-boolean v10, v8, v1

    .line 41
    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v1, 0x5

    aput-boolean v10, v8, v1

    .line 43
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x6

    aput-boolean v10, v8, v0

    .line 55
    :goto_0
    const v0, 0x7f0f0088

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->shoppingListNameEditText:Landroid/widget/EditText;

    const/16 v0, 0xb

    aput-boolean v10, v8, v0

    .line 56
    const v0, 0x7f0f0089

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->shoppingListDescriptionEditText:Landroid/widget/EditText;

    const/16 v0, 0xc

    aput-boolean v10, v8, v0

    .line 61
    new-instance v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    const/16 v0, 0xd

    aput-boolean v10, v8, v0

    .line 66
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xe

    aput-boolean v10, v8, v1

    .line 68
    const-string v1, "shoppingListId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->editFlag:Z

    .line 70
    iget-boolean v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->editFlag:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xf

    aput-boolean v10, v8, v1

    .line 72
    const-string v1, "shoppingListId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->shoppingListId:J

    const/16 v0, 0x10

    aput-boolean v10, v8, v0

    .line 73
    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->setTitle(I)V

    const/16 v0, 0x11

    aput-boolean v10, v8, v0

    .line 75
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "shoppingLists"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v11

    const-string v3, "description"

    aput-object v3, v2, v10

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    iget-wide v6, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->shoppingListId:J

    const/16 v9, 0x12

    aput-boolean v10, v8, v9

    .line 78
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const/16 v6, 0x13

    aput-boolean v10, v8, v6

    move-object v6, v5

    move-object v7, v5

    .line 75
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x14

    aput-boolean v10, v8, v1

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x15

    aput-boolean v10, v8, v1

    .line 84
    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->oldName:Ljava/lang/String;

    const/16 v1, 0x16

    aput-boolean v10, v8, v1

    .line 85
    const-string v1, "description"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->oldDescription:Ljava/lang/String;

    const/16 v1, 0x17

    aput-boolean v10, v8, v1

    .line 87
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->shoppingListNameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->oldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x18

    aput-boolean v10, v8, v1

    .line 88
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->shoppingListDescriptionEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->oldDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x19

    aput-boolean v10, v8, v1

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x1a

    aput-boolean v10, v8, v0

    .line 94
    :goto_1
    const/16 v0, 0x1c

    aput-boolean v10, v8, v0

    .line 99
    :goto_2
    const/16 v0, 0x1e

    aput-boolean v10, v8, v0

    return-void

    .line 43
    :cond_0
    const/4 v1, 0x7

    aput-boolean v10, v8, v1

    .line 44
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0x8

    aput-boolean v10, v8, v1

    .line 45
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/16 v1, 0x9

    aput-boolean v10, v8, v1

    .line 46
    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity$1;

    invoke-direct {v1, p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity$1;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xa

    aput-boolean v10, v8, v0

    goto/16 :goto_0

    .line 92
    :cond_1
    const v0, 0x7f070022

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    const/16 v0, 0x1b

    aput-boolean v10, v8, v0

    goto :goto_1

    .line 97
    :cond_2
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->setTitle(I)V

    const/16 v0, 0x1d

    aput-boolean v10, v8, v0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    .line 109
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->closeDb()V

    .line 110
    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 104
    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
