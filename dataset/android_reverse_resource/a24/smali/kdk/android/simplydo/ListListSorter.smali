.class public Lkdk/android/simplydo/ListListSorter;
.super Ljava/lang/Object;
.source "ListListSorter.java"


# static fields
.field private static final ALPHA:I = 0x1

.field private static final NONE:I = 0x0

.field public static final PREF_ALPHA:Ljava/lang/String; = "alphabetical"

.field public static final PREF_NONE:Ljava/lang/String; = "none"


# instance fields
.field private alphaCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lkdk/android/simplydo/ListDesc;",
            ">;"
        }
    .end annotation
.end field

.field private idCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lkdk/android/simplydo/ListDesc;",
            ">;"
        }
    .end annotation
.end field

.field private sortingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lkdk/android/simplydo/ListListSorter$1;

    invoke-direct {v0, p0}, Lkdk/android/simplydo/ListListSorter$1;-><init>(Lkdk/android/simplydo/ListListSorter;)V

    iput-object v0, p0, Lkdk/android/simplydo/ListListSorter;->idCompare:Ljava/util/Comparator;

    .line 51
    new-instance v0, Lkdk/android/simplydo/ListListSorter$2;

    invoke-direct {v0, p0}, Lkdk/android/simplydo/ListListSorter$2;-><init>(Lkdk/android/simplydo/ListListSorter;)V

    iput-object v0, p0, Lkdk/android/simplydo/ListListSorter;->alphaCompare:Ljava/util/Comparator;

    .line 58
    return-void
.end method


# virtual methods
.method public setSortingMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 63
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput v1, p0, Lkdk/android/simplydo/ListListSorter;->sortingMode:I

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "alphabetical"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lkdk/android/simplydo/ListListSorter;->sortingMode:I

    goto :goto_0

    .line 73
    :cond_1
    iput v1, p0, Lkdk/android/simplydo/ListListSorter;->sortingMode:I

    .line 74
    const-string v0, "SimplyDo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown list sorting mode "

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
            "Lkdk/android/simplydo/ListDesc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lkdk/android/simplydo/ListDesc;>;"
    iget v0, p0, Lkdk/android/simplydo/ListListSorter;->sortingMode:I

    packed-switch v0, :pswitch_data_0

    .line 84
    const-string v0, "SimplyDo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown list sorting enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkdk/android/simplydo/ListListSorter;->sortingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :pswitch_0
    iget-object v0, p0, Lkdk/android/simplydo/ListListSorter;->idCompare:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :pswitch_1
    iget-object v0, p0, Lkdk/android/simplydo/ListListSorter;->alphaCompare:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
