.class Lde/baumann/browser/View/CompleteAdapter$CompleteFilter$1;
.super Ljava/lang/Object;
.source "CompleteAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lde/baumann/browser/View/CompleteAdapter$CompleteItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;


# direct methods
.method constructor <init>(Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter$1;->this$1:Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lde/baumann/browser/View/CompleteAdapter$CompleteItem;Lde/baumann/browser/View/CompleteAdapter$CompleteItem;)I
    .locals 0

    .line 45
    invoke-virtual {p1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getIndex()I

    move-result p1

    invoke-virtual {p2}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;

    check-cast p2, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;

    invoke-virtual {p0, p1, p2}, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter$1;->compare(Lde/baumann/browser/View/CompleteAdapter$CompleteItem;Lde/baumann/browser/View/CompleteAdapter$CompleteItem;)I

    move-result p1

    return p1
.end method
