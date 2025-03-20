.class Lde/baumann/browser/Activity/BrowserActivity$19$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity$19;->onDragPositionsChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lde/baumann/browser/View/GridItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lde/baumann/browser/Activity/BrowserActivity$19;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity$19;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$19$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lde/baumann/browser/View/GridItem;Lde/baumann/browser/View/GridItem;)I
    .locals 0

    .line 1061
    invoke-virtual {p1}, Lde/baumann/browser/View/GridItem;->getOrdinal()I

    move-result p1

    invoke-virtual {p2}, Lde/baumann/browser/View/GridItem;->getOrdinal()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1058
    check-cast p1, Lde/baumann/browser/View/GridItem;

    check-cast p2, Lde/baumann/browser/View/GridItem;

    invoke-virtual {p0, p1, p2}, Lde/baumann/browser/Activity/BrowserActivity$19$1;->compare(Lde/baumann/browser/View/GridItem;Lde/baumann/browser/View/GridItem;)I

    move-result p1

    return p1
.end method
