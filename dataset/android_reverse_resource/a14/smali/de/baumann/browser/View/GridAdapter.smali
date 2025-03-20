.class public Lde/baumann/browser/View/GridAdapter;
.super Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;
.source "GridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/baumann/browser/View/GridAdapter$Holder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/baumann/browser/View/GridItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lde/baumann/browser/View/GridItem;",
            ">;I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 33
    iput-object p1, p0, Lde/baumann/browser/View/GridAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lde/baumann/browser/View/GridAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lde/baumann/browser/View/GridItem;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lde/baumann/browser/View/GridAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 43
    iget-object p2, p0, Lde/baumann/browser/View/GridAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0037

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    new-instance p3, Lde/baumann/browser/View/GridAdapter$Holder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lde/baumann/browser/View/GridAdapter$Holder;-><init>(Lde/baumann/browser/View/GridAdapter$1;)V

    const v0, 0x7f090073

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lde/baumann/browser/View/GridAdapter$Holder;->title:Landroid/widget/TextView;

    const v0, 0x7f090072

    .line 46
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lde/baumann/browser/View/GridAdapter$Holder;->cover:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lde/baumann/browser/View/GridAdapter$Holder;

    .line 52
    :goto_0
    iget-object v0, p0, Lde/baumann/browser/View/GridAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/baumann/browser/View/GridItem;

    .line 53
    iget-object v0, p3, Lde/baumann/browser/View/GridAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lde/baumann/browser/View/GridItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p3, p3, Lde/baumann/browser/View/GridAdapter$Holder;->cover:Landroid/widget/ImageView;

    iget-object v0, p0, Lde/baumann/browser/View/GridAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lde/baumann/browser/View/GridItem;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lde/baumann/browser/Unit/BrowserUnit;->file2Bitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
