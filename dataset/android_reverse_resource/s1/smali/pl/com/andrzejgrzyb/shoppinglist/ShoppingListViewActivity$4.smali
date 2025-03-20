.class Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;
.super Ljava/lang/Object;
.source "ShoppingListViewActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;


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

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x144e1fa6a678fc78L    # 7.158473943291444E-211

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;->$jacocoInit()[Z

    move-result-object v6

    .line 152
    const-string v7, "quantity"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-ne p3, v7, :cond_0

    aput-boolean v4, v6, v4

    .line 153
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 154
    .local v2, "quantity":D
    check-cast p1, Landroid/widget/TextView;

    const/4 v5, 0x2

    aput-boolean v4, v6, v5

    .line 155
    invoke-static {v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->formatQuantity(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const/4 v5, 0x3

    aput-boolean v4, v6, v5

    .line 182
    .end local v2    # "quantity":D
    :goto_0
    return v4

    .line 157
    :cond_0
    const-string v7, "checked"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-ne p3, v7, :cond_2

    const/4 v7, 0x4

    aput-boolean v4, v6, v7

    .line 158
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .local v1, "checked":I
    move-object v0, p1

    .line 159
    check-cast v0, Landroid/widget/CheckBox;

    .line 160
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-ne v1, v4, :cond_1

    const/4 v5, 0x5

    aput-boolean v4, v6, v5

    .line 161
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v5, 0x6

    aput-boolean v4, v6, v5

    .line 163
    :goto_1
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x8

    aput-boolean v4, v6, v5

    .line 164
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const/16 v5, 0x9

    aput-boolean v4, v6, v5

    .line 167
    new-instance v5, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1;

    invoke-direct {v5, p0}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4$1;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const/16 v5, 0xa

    aput-boolean v4, v6, v5

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v5, 0x7

    aput-boolean v4, v6, v5

    goto :goto_1

    .line 176
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "checked":I
    :cond_2
    const-string v7, "quantityUnit"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-ne p3, v7, :cond_3

    const/16 v5, 0xb

    aput-boolean v4, v6, v5

    .line 178
    check-cast p1, Landroid/widget/TextView;

    iget-object v5, p0, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity$4;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;

    invoke-static {v5}, Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;->access$200(Lpl/com/andrzejgrzyb/shoppinglist/ShoppingListViewActivity;)Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    move-result-object v5

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getLocalisedQuantitUnit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/16 v5, 0xc

    aput-boolean v4, v6, v5

    goto :goto_0

    .line 182
    :cond_3
    const/16 v7, 0xd

    aput-boolean v4, v6, v7

    move v4, v5

    goto :goto_0
.end method
