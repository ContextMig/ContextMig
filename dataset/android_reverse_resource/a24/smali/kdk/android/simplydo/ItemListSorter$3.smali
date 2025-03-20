.class Lkdk/android/simplydo/ItemListSorter$3;
.super Ljava/lang/Object;
.source "ItemListSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkdk/android/simplydo/ItemListSorter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lkdk/android/simplydo/ItemDesc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkdk/android/simplydo/ItemListSorter;


# direct methods
.method constructor <init>(Lkdk/android/simplydo/ItemListSorter;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lkdk/android/simplydo/ItemListSorter$3;->this$0:Lkdk/android/simplydo/ItemListSorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Lkdk/android/simplydo/ItemDesc;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lkdk/android/simplydo/ItemDesc;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lkdk/android/simplydo/ItemListSorter$3;->compare(Lkdk/android/simplydo/ItemDesc;Lkdk/android/simplydo/ItemDesc;)I

    move-result v0

    return v0
.end method

.method public compare(Lkdk/android/simplydo/ItemDesc;Lkdk/android/simplydo/ItemDesc;)I
    .locals 7
    .param p1, "o1"    # Lkdk/android/simplydo/ItemDesc;
    .param p2, "o2"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 76
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->isStar()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    :goto_1
    add-int v0, v2, v5

    .line 77
    .local v0, "w1":I
    invoke-virtual {p2}, Lkdk/android/simplydo/ItemDesc;->isStar()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p2}, Lkdk/android/simplydo/ItemDesc;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    add-int v1, v3, v4

    .line 78
    .local v1, "w2":I
    if-ne v1, v0, :cond_4

    .line 80
    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lkdk/android/simplydo/ItemDesc;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    .line 84
    :goto_4
    return v2

    .end local v0    # "w1":I
    .end local v1    # "w2":I
    :cond_0
    move v2, v4

    .line 76
    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    .restart local v0    # "w1":I
    :cond_2
    move v3, v4

    .line 77
    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_3

    .line 84
    .restart local v1    # "w2":I
    :cond_4
    sub-int v2, v1, v0

    goto :goto_4
.end method
