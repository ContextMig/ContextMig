.class Lde/baumann/browser/Activity/BrowserActivity$19;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragItem:Lde/baumann/browser/View/GridItem;

.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$gridList:Ljava/util/List;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/util/List;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$19;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$19;->val$gridList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragPositionsChanged(II)V
    .locals 3

    if-ge p1, p2, :cond_0

    move v0, p2

    :goto_0
    if-le v0, p1, :cond_1

    .line 1047
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$19;->val$gridList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/baumann/browser/View/GridItem;

    add-int/lit8 v2, v0, -0x1

    .line 1048
    invoke-virtual {v1, v2}, Lde/baumann/browser/View/GridItem;->setOrdinal(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_1

    .line 1052
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$19;->val$gridList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/baumann/browser/View/GridItem;

    add-int/lit8 v0, v0, 0x1

    .line 1053
    invoke-virtual {v1, v0}, Lde/baumann/browser/View/GridItem;->setOrdinal(I)V

    goto :goto_1

    .line 1056
    :cond_1
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$19;->dragItem:Lde/baumann/browser/View/GridItem;

    invoke-virtual {p1, p2}, Lde/baumann/browser/View/GridItem;->setOrdinal(I)V

    .line 1058
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$19;->val$gridList:Ljava/util/List;

    new-instance p2, Lde/baumann/browser/Activity/BrowserActivity$19$1;

    invoke-direct {p2, p0}, Lde/baumann/browser/Activity/BrowserActivity$19$1;-><init>(Lde/baumann/browser/Activity/BrowserActivity$19;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public onDragStarted(I)V
    .locals 1

    .line 1040
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$19;->val$gridList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/baumann/browser/View/GridItem;

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$19;->dragItem:Lde/baumann/browser/View/GridItem;

    return-void
.end method
