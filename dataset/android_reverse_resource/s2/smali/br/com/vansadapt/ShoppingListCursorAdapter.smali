.class public Lbr/com/vansadapt/ShoppingListCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ShoppingListCursorAdapter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansadapt/ShoppingListCursorAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1db8dfe164585c65L    # -2.6634107565545847E165

    const-string v2, "br/com/vansadapt/ShoppingListCursorAdapter"

    const/16 v3, 0x22

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansadapt/ShoppingListCursorAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 27
    iput-object p1, p0, Lbr/com/vansadapt/ShoppingListCursorAdapter;->context:Landroid/content/Context;

    .line 28
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v5

    .line 55
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ShoppingList;

    move-result-object v6

    const/16 v0, 0xa

    aput-boolean v3, v5, v0

    .line 57
    const v0, 0x7f0c005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0xb

    aput-boolean v3, v5, v1

    .line 58
    invoke-virtual {v6}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xc

    aput-boolean v3, v5, v0

    .line 60
    const v0, 0x7f0c005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0xd

    aput-boolean v3, v5, v1

    .line 61
    invoke-virtual {v6}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v1

    invoke-static {p2, v1}, Lbr/com/dao/ItemShoppingListDAO;->isAllItemsChecked(Landroid/content/Context;I)Z

    move-result v7

    const/16 v1, 0xe

    aput-boolean v3, v5, v1

    .line 63
    if-eqz v7, :cond_0

    const v1, 0x7f020036

    const/16 v8, 0xf

    aput-boolean v3, v5, v8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x11

    aput-boolean v3, v5, v1

    .line 64
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x12

    aput-boolean v3, v5, v0

    .line 66
    const v0, 0x7f0c005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x13

    aput-boolean v3, v5, v1

    .line 67
    invoke-virtual {v6}, Lbr/com/bean/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x14

    aput-boolean v3, v5, v1

    .line 68
    if-eqz v7, :cond_1

    const/16 v1, 0x15

    aput-boolean v3, v5, v1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    const/16 v1, 0x17

    aput-boolean v3, v5, v1

    .line 69
    const/4 v2, 0x0

    if-eqz v7, :cond_2

    const/4 v1, 0x2

    const/16 v4, 0x18

    aput-boolean v3, v5, v4

    :goto_2
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v0, 0x1a

    aput-boolean v3, v5, v0

    .line 71
    const v0, 0x7f0c005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x1b

    aput-boolean v3, v5, v1

    .line 72
    invoke-virtual {v6}, Lbr/com/bean/ShoppingList;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lbr/com/vansformat/CustomDateFormat;->getFormatedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1c

    aput-boolean v3, v5, v0

    .line 74
    const v0, 0x7f0c0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x1d

    aput-boolean v3, v5, v1

    .line 75
    invoke-virtual {v6}, Lbr/com/bean/ShoppingList;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lbr/com/vansformat/CustomDateFormat;->getFormatedTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const/16 v0, 0x1e

    aput-boolean v3, v5, v0

    return-void

    .line 63
    :cond_0
    const v1, 0x7f020035

    aput-boolean v3, v5, v2

    goto/16 :goto_0

    .line 68
    :cond_1
    const/16 v1, 0x16

    aput-boolean v3, v5, v1

    move v1, v3

    goto :goto_1

    .line 69
    :cond_2
    const/16 v1, 0x19

    aput-boolean v3, v5, v1

    move v1, v4

    goto :goto_2
.end method

.method public getItem(I)Lbr/com/bean/ShoppingList;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 34
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 35
    iget-object v3, p0, Lbr/com/vansadapt/ShoppingListCursorAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lbr/com/dao/ShoppingListDAO;->returnClassInstace(Landroid/content/Context;Landroid/database/Cursor;)Lbr/com/bean/ShoppingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 37
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-virtual {p0, p1}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ShoppingList;

    move-result-object v1

    const/16 v2, 0x21

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 81
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/16 v2, 0x1f

    aput-boolean v4, v1, v2

    .line 82
    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x20

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public refreshCursorAdapter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lbr/com/vansadapt/ShoppingListCursorAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/dao/ShoppingListDAO;->selectAll(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 50
    :goto_0
    invoke-virtual {p0}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->notifyDataSetChanged()V

    .line 51
    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    return-void

    .line 45
    :catch_0
    move-exception v0

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    .line 46
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    .line 47
    iget-object v2, p0, Lbr/com/vansadapt/ShoppingListCursorAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    goto :goto_0
.end method
