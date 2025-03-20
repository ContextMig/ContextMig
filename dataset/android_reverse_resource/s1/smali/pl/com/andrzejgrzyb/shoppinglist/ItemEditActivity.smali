.class public Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItemEditActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final EXTRA_ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final EXTRA_SHOPPING_LIST_ID:Ljava/lang/String; = "shoppingListId"

.field public static final EXTRA_SHOPPING_LIST_ID_CLOUD:Ljava/lang/String; = "shoppingListIdCloud"


# instance fields
.field private dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

.field private editFlag:Z

.field private itemId:J

.field private itemIdCloud:J

.field private itemNameEditText:Landroid/widget/EditText;

.field private itemQuantityEditText:Landroid/widget/EditText;

.field private itemQuantityUnit:Ljava/lang/String;

.field private itemQuantityUnitRadioGroup:Landroid/widget/RadioGroup;

.field private oldName:Ljava/lang/String;

.field private oldQuantity:D

.field private oldQuantityUnit:Ljava/lang/String;

.field private shoppingListId:J

.field private shoppingListIdCloud:J


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x73c4cb348b25e3b0L

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ItemEditActivity"

    const/16 v3, 0x68

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemQuantityEditText:Landroid/widget/EditText;

    const/16 v2, 0x67

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static decrementQuantity(D)D
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v6, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 286
    cmpg-double v3, p0, v0

    if-gtz v3, :cond_0

    .line 287
    const/16 v3, 0x5f

    aput-boolean v6, v2, v3

    .line 299
    :goto_0
    return-wide v0

    .line 289
    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    const/16 v0, 0x60

    aput-boolean v6, v2, v0

    .line 290
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    const/16 v3, 0x61

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 292
    :cond_1
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_2

    const/16 v0, 0x62

    aput-boolean v6, v2, v0

    .line 293
    div-double v0, p0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    sub-double/2addr v0, v8

    const/16 v3, 0x63

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 295
    :cond_2
    cmpg-double v0, p0, v4

    if-gtz v0, :cond_3

    const/16 v0, 0x64

    aput-boolean v6, v2, v0

    .line 296
    div-double v0, p0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    sub-double/2addr v0, v10

    const/16 v3, 0x65

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 299
    :cond_3
    div-double v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double/2addr v0, v4

    const/16 v3, 0x66

    aput-boolean v6, v2, v3

    goto :goto_0
.end method

.method public static incrementQuantity(D)D
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v6, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 269
    cmpg-double v3, p0, v0

    if-gez v3, :cond_0

    .line 270
    const/16 v3, 0x57

    aput-boolean v6, v2, v3

    .line 282
    :goto_0
    return-wide v0

    .line 272
    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const/16 v0, 0x58

    aput-boolean v6, v2, v0

    .line 273
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    const/16 v3, 0x59

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 275
    :cond_1
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const/16 v0, 0x5a

    aput-boolean v6, v2, v0

    .line 276
    div-double v0, p0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    add-double/2addr v0, v8

    const/16 v3, 0x5b

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 278
    :cond_2
    cmpg-double v0, p0, v4

    if-gez v0, :cond_3

    const/16 v0, 0x5c

    aput-boolean v6, v2, v0

    .line 279
    div-double v0, p0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    add-double/2addr v0, v10

    const/16 v3, 0x5d

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 282
    :cond_3
    div-double v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v4

    const/16 v3, 0x5e

    aput-boolean v6, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public onClickSaveButton(Landroid/view/View;)V
    .locals 22

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->$jacocoInit()[Z

    move-result-object v21

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "name":Ljava/lang/String;
    const/4 v15, 0x0

    const/16 v3, 0x39

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v21, v3

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemQuantityEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 200
    .local v7, "quantity":D
    const/16 v3, 0x3a

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 203
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemQuantityUnitRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 205
    .local v2, "checkedRadioButtonId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3c

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    const/16 v4, 0x3d

    const/4 v5, 0x1

    aput-boolean v5, v21, v4

    .line 208
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e

    const/4 v9, 0x1

    aput-boolean v9, v21, v5

    .line 210
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x3f

    const/4 v5, 0x1

    aput-boolean v5, v21, v4

    .line 212
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 214
    .local v20, "unitCodesArray":[Ljava/lang/String;
    aget-object v16, v20, v3

    .line 216
    .local v16, "quantityUnit":Ljava/lang/String;
    const/16 v3, 0x40

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    move-object/from16 v9, v16

    .line 221
    .end local v16    # "quantityUnit":Ljava/lang/String;
    .end local v20    # "unitCodesArray":[Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    const/16 v3, 0x42

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 223
    const v3, 0x7f070021

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/16 v3, 0x43

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 265
    :goto_2
    const/16 v3, 0x56

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    return-void

    .line 197
    .end local v2    # "checkedRadioButtonId":I
    .end local v7    # "quantity":D
    :catch_0
    move-exception v14

    .line 198
    .local v14, "nfe":Ljava/lang/NumberFormatException;
    const-wide/16 v7, 0x0

    .line 199
    .restart local v7    # "quantity":D
    const/4 v15, 0x1

    .local v15, "quantityParseException":Z
    const/16 v3, 0x3b

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    goto :goto_0

    .line 218
    .end local v14    # "nfe":Ljava/lang/NumberFormatException;
    .end local v15    # "quantityParseException":Z
    .restart local v2    # "checkedRadioButtonId":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v9, v3, v4

    const/16 v3, 0x41

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    goto :goto_1

    .line 225
    :cond_1
    if-eqz v15, :cond_2

    const/16 v3, 0x44

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 227
    const v3, 0x7f070020

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/16 v3, 0x45

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    goto :goto_2

    .line 231
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->editFlag:Z

    if-nez v3, :cond_4

    const/16 v3, 0x46

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->shoppingListId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->shoppingListIdCloud:J

    invoke-virtual/range {v3 .. v13}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->insertItem(JLjava/lang/String;DLjava/lang/String;JJ)J

    move-result-wide v18

    .line 239
    .local v18, "rowId":J
    const-wide/16 v4, -0x1

    cmp-long v3, v18, v4

    if-nez v3, :cond_3

    const/16 v3, 0x47

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 243
    :goto_3
    const/16 v3, 0x4a

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 260
    .end local v18    # "rowId":J
    :goto_4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x53

    const/4 v5, 0x1

    aput-boolean v5, v21, v4

    .line 261
    const-string v4, "shoppingListId"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->shoppingListId:J

    invoke-virtual {v3, v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v4, 0x54

    const/4 v5, 0x1

    aput-boolean v5, v21, v4

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v3, 0x55

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    goto/16 :goto_2

    .line 239
    .restart local v18    # "rowId":J
    :cond_3
    const/16 v3, 0x48

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 241
    const v3, 0x7f070035

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/16 v3, 0x49

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    goto :goto_3

    .line 244
    .end local v18    # "rowId":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->oldName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x4b

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 245
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemId:J

    invoke-virtual/range {v3 .. v9}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateItem(JLjava/lang/String;DLjava/lang/String;)I

    move-result v17

    .line 250
    .local v17, "result":I
    const/4 v3, 0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_7

    const/16 v3, 0x4e

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 254
    :goto_6
    const/16 v3, 0x51

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    goto :goto_4

    .line 244
    .end local v17    # "result":I
    :cond_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->oldQuantity:D

    cmpl-double v3, v4, v7

    if-eqz v3, :cond_6

    const/16 v3, 0x4c

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->oldQuantityUnit:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x4d

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    goto :goto_5

    .line 250
    .restart local v17    # "result":I
    :cond_7
    const/16 v3, 0x4f

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    .line 252
    const v3, 0x7f070036

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/16 v3, 0x50

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    goto :goto_6

    .line 256
    .end local v17    # "result":I
    :cond_8
    const-string v3, "Nothing changed"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/16 v3, 0x52

    const/4 v4, 0x1

    aput-boolean v4, v21, v3

    goto/16 :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->$jacocoInit()[Z

    move-result-object v11

    .line 49
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v12, v11, v12

    .line 50
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->onCreate(Landroid/content/Context;)V

    const/4 v0, 0x2

    aput-boolean v12, v11, v0

    .line 51
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->setContentView(I)V

    const/4 v0, 0x3

    aput-boolean v12, v11, v0

    .line 53
    const v0, 0x7f0f0069

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x4

    aput-boolean v12, v11, v1

    .line 54
    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v1, 0x5

    aput-boolean v12, v11, v1

    .line 56
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x6

    aput-boolean v12, v11, v0

    .line 69
    :goto_0
    const v0, 0x7f0f006a

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemNameEditText:Landroid/widget/EditText;

    const/16 v0, 0xb

    aput-boolean v12, v11, v0

    .line 70
    const v0, 0x7f0f006d

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemQuantityEditText:Landroid/widget/EditText;

    const/16 v0, 0xc

    aput-boolean v12, v11, v0

    .line 71
    const v0, 0x7f0f006f

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemQuantityUnitRadioGroup:Landroid/widget/RadioGroup;

    const/16 v0, 0xd

    aput-boolean v12, v11, v0

    .line 74
    const v0, 0x7f0f006e

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0xe

    aput-boolean v12, v11, v1

    .line 75
    const v1, 0x7f0f006c

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v3, 0xf

    aput-boolean v12, v11, v3

    .line 78
    new-instance v3, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;

    const/16 v4, 0x190

    new-instance v5, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2;

    invoke-direct {v5, p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$2;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;)V

    invoke-direct {v3, v4, v13, v5}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;-><init>(IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v0, 0x10

    aput-boolean v12, v11, v0

    .line 93
    new-instance v0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;

    const/16 v3, 0x190

    new-instance v4, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$3;

    invoke-direct {v4, p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$3;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;)V

    invoke-direct {v0, v3, v13, v4}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;-><init>(IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v0, 0x11

    aput-boolean v12, v11, v0

    .line 111
    new-instance v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    const/16 v0, 0x12

    aput-boolean v12, v11, v0

    .line 116
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x13

    aput-boolean v12, v11, v1

    .line 118
    const-string v1, "itemId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->editFlag:Z

    const/16 v1, 0x14

    aput-boolean v12, v11, v1

    .line 121
    const-string v1, "shoppingListId"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->shoppingListId:J

    const/16 v1, 0x15

    aput-boolean v12, v11, v1

    .line 122
    const-string v1, "shoppingListIdCloud"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->shoppingListIdCloud:J

    .line 124
    iget-boolean v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->editFlag:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x16

    aput-boolean v12, v11, v1

    .line 126
    const-string v1, "itemId"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemId:J

    const/16 v0, 0x17

    aput-boolean v12, v11, v0

    .line 127
    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->setTitle(I)V

    const/16 v0, 0x18

    aput-boolean v12, v11, v0

    .line 129
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "items"

    const-string v3, "_id = ?"

    new-array v4, v12, [Ljava/lang/String;

    iget-wide v6, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemId:J

    const/16 v5, 0x19

    aput-boolean v12, v11, v5

    .line 132
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/16 v5, 0x1a

    aput-boolean v12, v11, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 129
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/16 v0, 0x1b

    aput-boolean v12, v11, v0

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1c

    aput-boolean v12, v11, v0

    .line 138
    const-string v0, "listId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->shoppingListId:J

    const/16 v0, 0x1d

    aput-boolean v12, v11, v0

    .line 139
    const-string v0, "listIdCloud"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->shoppingListIdCloud:J

    const/16 v0, 0x1e

    aput-boolean v12, v11, v0

    .line 140
    const-string v0, "idCloud"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemIdCloud:J

    const/16 v0, 0x1f

    aput-boolean v12, v11, v0

    .line 141
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->oldName:Ljava/lang/String;

    const/16 v0, 0x20

    aput-boolean v12, v11, v0

    .line 142
    const-string v0, "quantity"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->oldQuantity:D

    const/16 v0, 0x21

    aput-boolean v12, v11, v0

    .line 143
    const-string v0, "quantityUnit"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->oldQuantityUnit:Ljava/lang/String;

    const/16 v0, 0x22

    aput-boolean v12, v11, v0

    .line 146
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemNameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->oldName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x23

    aput-boolean v12, v11, v0

    .line 147
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemQuantityEditText:Landroid/widget/EditText;

    iget-wide v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->oldQuantity:D

    invoke-static {v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->formatQuantity(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x24

    aput-boolean v12, v11, v0

    .line 150
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->oldQuantityUnit:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 152
    .local v9, "unitId":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1

    const/16 v0, 0x25

    aput-boolean v12, v11, v0

    .line 165
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 166
    const/16 v0, 0x31

    aput-boolean v12, v11, v0

    .line 170
    :goto_2
    const/16 v0, 0x33

    aput-boolean v12, v11, v0

    .line 175
    :goto_3
    const/16 v0, 0x35

    aput-boolean v12, v11, v0

    return-void

    .line 56
    .end local v9    # "unitId":I
    :cond_0
    const/4 v1, 0x7

    aput-boolean v12, v11, v1

    .line 57
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0x8

    aput-boolean v12, v11, v1

    .line 58
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/16 v1, 0x9

    aput-boolean v12, v11, v1

    .line 59
    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$1;

    invoke-direct {v1, p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity$1;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xa

    aput-boolean v12, v11, v0

    goto/16 :goto_0

    .line 152
    .restart local v9    # "unitId":I
    :cond_1
    const/16 v0, 0x26

    aput-boolean v12, v11, v0

    .line 153
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v9

    const/16 v0, 0x27

    aput-boolean v12, v11, v0

    .line 154
    const/16 v0, 0x28

    aput-boolean v12, v11, v0

    :goto_4
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemQuantityUnitRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-lt v8, v0, :cond_2

    const/16 v0, 0x29

    aput-boolean v12, v11, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x2a

    aput-boolean v12, v11, v0

    .line 155
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->itemQuantityUnitRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v8}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 156
    .local v10, "view":Landroid/view/View;
    instance-of v0, v10, Landroid/widget/RadioButton;

    if-nez v0, :cond_3

    const/16 v0, 0x2b

    aput-boolean v12, v11, v0

    .line 154
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .local v8, "i":I
    const/16 v0, 0x30

    aput-boolean v12, v11, v0

    goto :goto_4

    .line 156
    .end local v8    # "i":I
    :cond_3
    const/16 v0, 0x2c

    aput-boolean v12, v11, v0

    move-object v0, v10

    .line 157
    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x2d

    aput-boolean v12, v11, v0

    goto :goto_5

    :cond_4
    const/16 v0, 0x2e

    aput-boolean v12, v11, v0

    .line 158
    check-cast v10, Landroid/widget/RadioButton;

    .end local v10    # "view":Landroid/view/View;
    invoke-virtual {v10, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 159
    const/16 v0, 0x2f

    aput-boolean v12, v11, v0

    goto/16 :goto_1

    .line 168
    .end local v9    # "unitId":I
    :cond_5
    const v0, 0x7f070022

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    const/16 v0, 0x32

    aput-boolean v12, v11, v0

    goto/16 :goto_2

    .line 173
    :cond_6
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->setTitle(I)V

    const/16 v0, 0x34

    aput-boolean v12, v11, v0

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const/16 v1, 0x37

    aput-boolean v2, v0, v1

    .line 186
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->dbUtilities:Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    invoke-virtual {v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->closeDb()V

    .line 187
    const/16 v1, 0x38

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ItemEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 179
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 181
    const/16 v1, 0x36

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
