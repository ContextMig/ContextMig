.class public abstract Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "AbstractDynamicGridAdapter.java"

# interfaces
.implements Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;


# static fields
.field public static final INVALID_ID:I = -0x1


# instance fields
.field private final mIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nextStableId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->nextStableId:I

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->mIdMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected addAllStableId(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->addStableId(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected addStableId(Ljava/lang/Object;)V
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->mIdMap:Ljava/util/HashMap;

    iget v1, p0, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->nextStableId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->nextStableId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected clearStableIdMap()V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getItemId(I)J
    .locals 2

    if-ltz p1, :cond_1

    .line 43
    iget-object v0, p0, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected removeStableID(Ljava/lang/Object;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/askerov/dynamicgrid/AbstractDynamicGridAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
