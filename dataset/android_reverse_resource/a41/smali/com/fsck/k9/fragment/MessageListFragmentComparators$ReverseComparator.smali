.class public Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator;
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
    name = "ReverseComparator"
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
.field private mDelegate:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator;, "Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator<TT;>;"
    .local p1, "delegate":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator;->mDelegate:Ljava/util/Comparator;

    .line 26
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator;, "Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator<TT;>;"
    .local p1, "object1":Ljava/lang/Object;, "TT;"
    .local p2, "object2":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseComparator;->mDelegate:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
