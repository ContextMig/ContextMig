.class public Lkdk/android/simplydo/ItemListSorter;
.super Ljava/lang/Object;
.source "ItemListSorter.java"


# static fields
.field private static final ACTIVE_STARRED:I = 0x2

.field private static final NONE:I = 0x0

.field public static final PREF_ACTIVE_STARRED:Ljava/lang/String; = "activityStarred"

.field public static final PREF_NONE:Ljava/lang/String; = "none"

.field public static final PREF_STARRED:Ljava/lang/String; = "starred"

.field private static final STARRED:I = 0x1


# instance fields
.field private activeStarredCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lkdk/android/simplydo/ItemDesc;",
            ">;"
        }
    .end annotation
.end field

.field private idCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lkdk/android/simplydo/ItemDesc;",
            ">;"
        }
    .end annotation
.end field

.field private sortingMode:I

.field private starredCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lkdk/android/simplydo/ItemDesc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lkdk/android/simplydo/ItemListSorter$1;

    invoke-direct {v0, p0}, Lkdk/android/simplydo/ItemListSorter$1;-><init>(Lkdk/android/simplydo/ItemListSorter;)V

    iput-object v0, p0, Lkdk/android/simplydo/ItemListSorter;->idCompare:Ljava/util/Comparator;

    .line 55
    new-instance v0, Lkdk/android/simplydo/ItemListSorter$2;

    invoke-direct {v0, p0}, Lkdk/android/simplydo/ItemListSorter$2;-><init>(Lkdk/android/simplydo/ItemListSorter;)V

    iput-object v0, p0, Lkdk/android/simplydo/ItemListSorter;->starredCompare:Ljava/util/Comparator;

    .line 72
    new-instance v0, Lkdk/android/simplydo/ItemListSorter$3;

    invoke-direct {v0, p0}, Lkdk/android/simplydo/ItemListSorter$3;-><init>(Lkdk/android/simplydo/ItemListSorter;)V

    iput-object v0, p0, Lkdk/android/simplydo/ItemListSorter;->activeStarredCompare:Ljava/util/Comparator;

    .line 88
    return-void
.end method

.method private markAsSorted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ItemDesc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lkdk/android/simplydo/ItemDesc;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkdk/android/simplydo/ItemDesc;

    .line 178
    .local v1, "item":Lkdk/android/simplydo/ItemDesc;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lkdk/android/simplydo/ItemDesc;->setSorted(Z)V

    goto :goto_0

    .line 180
    .end local v1    # "item":Lkdk/android/simplydo/ItemDesc;
    :cond_0
    return-void
.end method


# virtual methods
.method public markActivityUpdate(Lkdk/android/simplydo/ItemDesc;)V
    .locals 1
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    .line 126
    iget v0, p0, Lkdk/android/simplydo/ItemListSorter;->sortingMode:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkdk/android/simplydo/ItemDesc;->setSorted(Z)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public markEditUpdate(Lkdk/android/simplydo/ItemDesc;)V
    .locals 1
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    .line 114
    iget v0, p0, Lkdk/android/simplydo/ItemListSorter;->sortingMode:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 118
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkdk/android/simplydo/ItemDesc;->setSorted(Z)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public markStarredUpdate(Lkdk/android/simplydo/ItemDesc;)V
    .locals 1
    .param p1, "item"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    .line 137
    iget v0, p0, Lkdk/android/simplydo/ItemListSorter;->sortingMode:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 141
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkdk/android/simplydo/ItemDesc;->setSorted(Z)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSortingMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 92
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput v1, p0, Lkdk/android/simplydo/ItemListSorter;->sortingMode:I

    .line 109
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v0, "starred"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lkdk/android/simplydo/ItemListSorter;->sortingMode:I

    goto :goto_0

    .line 100
    :cond_1
    const-string v0, "activityStarred"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lkdk/android/simplydo/ItemListSorter;->sortingMode:I

    goto :goto_0

    .line 106
    :cond_2
    iput v1, p0, Lkdk/android/simplydo/ItemListSorter;->sortingMode:I

    .line 107
    const-string v0, "SimplyDo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item sorting mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sort(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ItemDesc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lkdk/android/simplydo/ItemDesc;>;"
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v0, p0, Lkdk/android/simplydo/ItemListSorter;->sortingMode:I

    packed-switch v0, :pswitch_data_0

    .line 157
    const-string v0, "SimplyDo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item sorting enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkdk/android/simplydo/ItemListSorter;->sortingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :pswitch_0
    iget-object v0, p0, Lkdk/android/simplydo/ItemListSorter;->idCompare:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    :goto_1
    invoke-direct {p0, p1}, Lkdk/android/simplydo/ItemListSorter;->markAsSorted(Ljava/util/List;)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lkdk/android/simplydo/ItemListSorter;->starredCompare:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 167
    :pswitch_2
    iget-object v0, p0, Lkdk/android/simplydo/ItemListSorter;->activeStarredCompare:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
