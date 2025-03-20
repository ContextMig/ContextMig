.class public Lcom/fsck/k9/fragment/MessageListFragmentComparators$ComparatorChain;
.super Ljava/lang/Object;
.source "MessageListFragmentComparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/fragment/MessageListFragmentComparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComparatorChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Comparator",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Comparator",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/fsck/k9/fragment/MessageListFragmentComparators$ComparatorChain;, "Lcom/fsck/k9/fragment/MessageListFragmentComparators$ComparatorChain<TT;>;"
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/util/Comparator<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ComparatorChain;->mChain:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/fsck/k9/fragment/MessageListFragmentComparators$ComparatorChain;, "Lcom/fsck/k9/fragment/MessageListFragmentComparators$ComparatorChain<TT;>;"
    .local p1, "object1":Ljava/lang/Object;, "TT;"
    .local p2, "object2":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 54
    .local v1, "result":I
    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ComparatorChain;->mChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 55
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 60
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_1
    return v1
.end method
