.class public abstract Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;
.super Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;
.source "BaseDynamicGridAdapter.java"


# instance fields
.field private final mColumnCount:I

.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mItems:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mContext:Landroid/content/Context;

    .line 22
    iput p3, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mColumnCount:I

    .line 23
    invoke-direct {p0, p2}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->init(Ljava/util/List;)V

    return-void
.end method

.method private init(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->addAllStableId(Ljava/util/List;)V

    .line 28
    iget-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    .line 50
    invoke-virtual {p0, p2}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->addStableId(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 44
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->addStableId(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->addAllStableId(Ljava/util/List;)V

    .line 57
    iget-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public canReorder(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->clearStableIdMap()V

    .line 39
    iget-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mColumnCount:I

    return v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->removeStableID(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public reorderItems(II)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lorg/askerov/dynamicgrid/DynamicGridUtils;->reorder(Ljava/util/List;II)V

    .line 87
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public set(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->clear()V

    .line 33
    invoke-direct {p0, p1}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->init(Ljava/util/List;)V

    .line 34
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/BaseDynamicGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
