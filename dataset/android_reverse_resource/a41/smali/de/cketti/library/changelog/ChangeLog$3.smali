.class Lde/cketti/library/changelog/ChangeLog$3;
.super Ljava/lang/Object;
.source "ChangeLog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/cketti/library/changelog/ChangeLog;->getChangeLogComparator()Ljava/util/Comparator;
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
        "Lde/cketti/library/changelog/ChangeLog$ReleaseItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/cketti/library/changelog/ChangeLog;


# direct methods
.method constructor <init>(Lde/cketti/library/changelog/ChangeLog;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lde/cketti/library/changelog/ChangeLog$3;->this$0:Lde/cketti/library/changelog/ChangeLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lde/cketti/library/changelog/ChangeLog$ReleaseItem;Lde/cketti/library/changelog/ChangeLog$ReleaseItem;)I
    .locals 2
    .param p1, "lhs"    # Lde/cketti/library/changelog/ChangeLog$ReleaseItem;
    .param p2, "rhs"    # Lde/cketti/library/changelog/ChangeLog$ReleaseItem;

    .prologue
    .line 562
    iget v0, p1, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;->versionCode:I

    iget v1, p2, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;->versionCode:I

    if-ge v0, v1, :cond_0

    .line 563
    const/4 v0, 0x1

    .line 567
    :goto_0
    return v0

    .line 564
    :cond_0
    iget v0, p1, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;->versionCode:I

    iget v1, p2, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;->versionCode:I

    if-le v0, v1, :cond_1

    .line 565
    const/4 v0, -0x1

    goto :goto_0

    .line 567
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 559
    check-cast p1, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lde/cketti/library/changelog/ChangeLog$ReleaseItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/cketti/library/changelog/ChangeLog$3;->compare(Lde/cketti/library/changelog/ChangeLog$ReleaseItem;Lde/cketti/library/changelog/ChangeLog$ReleaseItem;)I

    move-result v0

    return v0
.end method
