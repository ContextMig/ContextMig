.class Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;


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

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x139ecf4b822b1640L    # -1.1574153299767984E214

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/MainActivity$2"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 124
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 11

    .prologue
    const v10, 0x7f070039

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->$jacocoInit()[Z

    move-result-object v4

    .line 128
    const-string v5, "modificationDate"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-ne p3, v5, :cond_0

    aput-boolean v2, v4, v2

    .line 129
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 130
    .local v0, "modificationDate":J
    check-cast p1, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-boolean v2, v4, v3

    .line 131
    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-virtual {v3}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v3, 0x3

    aput-boolean v2, v4, v3

    .line 148
    .end local v0    # "modificationDate":J
    :goto_0
    return v2

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0f00a0

    if-ne v5, v6, :cond_1

    .line 136
    check-cast p1, Landroid/widget/TextView;

    const/4 v5, 0x4

    aput-boolean v2, v4, v5

    .line 137
    iget-object v5, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-static {v5}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->access$000(Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;)Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    move-result-object v5

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListItemsCount(J)I

    move-result v5

    const/4 v6, 0x5

    aput-boolean v2, v4, v6

    .line 138
    iget-object v6, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-virtual {v6}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0d0000

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/4 v3, 0x6

    aput-boolean v2, v4, v3

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0f009f

    if-ne v5, v6, :cond_2

    .line 142
    check-cast p1, Landroid/widget/TextView;

    const/4 v5, 0x7

    aput-boolean v2, v4, v5

    .line 143
    iget-object v5, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-static {v5}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->access$000(Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;)Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;

    move-result-object v5

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getPercentageComplete(J)D

    move-result-wide v6

    const/16 v5, 0x8

    aput-boolean v2, v4, v5

    .line 144
    iget-object v5, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-virtual {v5}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v5, 0x9

    aput-boolean v2, v4, v5

    .line 145
    iget-object v5, p0, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity$2;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;

    invoke-virtual {v5}, Lpl/com/andrzejgrzyb/shoppinglist/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v8, v3

    invoke-virtual {v5, v10, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const/16 v3, 0xa

    aput-boolean v2, v4, v3

    goto/16 :goto_0

    .line 148
    :cond_2
    const/16 v5, 0xb

    aput-boolean v2, v4, v5

    move v2, v3

    goto/16 :goto_0
.end method
