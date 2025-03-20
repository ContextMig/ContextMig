.class Lkdk/android/simplydo/ItemListSorter$1;
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
    .line 47
    iput-object p1, p0, Lkdk/android/simplydo/ItemListSorter$1;->this$0:Lkdk/android/simplydo/ItemListSorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lkdk/android/simplydo/ItemDesc;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lkdk/android/simplydo/ItemDesc;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lkdk/android/simplydo/ItemListSorter$1;->compare(Lkdk/android/simplydo/ItemDesc;Lkdk/android/simplydo/ItemDesc;)I

    move-result v0

    return v0
.end method

.method public compare(Lkdk/android/simplydo/ItemDesc;Lkdk/android/simplydo/ItemDesc;)I
    .locals 2
    .param p1, "object1"    # Lkdk/android/simplydo/ItemDesc;
    .param p2, "object2"    # Lkdk/android/simplydo/ItemDesc;

    .prologue
    .line 51
    invoke-virtual {p2}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v0

    invoke-virtual {p1}, Lkdk/android/simplydo/ItemDesc;->getId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
