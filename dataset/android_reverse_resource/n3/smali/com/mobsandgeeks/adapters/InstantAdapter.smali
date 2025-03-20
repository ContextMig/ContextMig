.class public Lcom/mobsandgeeks/adapters/InstantAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InstantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstantAdapterCore:Lcom/mobsandgeeks/adapters/InstantAdapterCore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mobsandgeeks/adapters/InstantAdapterCore",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/Class;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapter;, "Lcom/mobsandgeeks/adapters/InstantAdapter<TT;>;"
    .local p3, "dataType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 50
    iput-object p1, p0, Lcom/mobsandgeeks/adapters/InstantAdapter;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;ILjava/lang/Class;)V

    iput-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapter;->mInstantAdapterCore:Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    .line 53
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapter;, "Lcom/mobsandgeeks/adapters/InstantAdapter<TT;>;"
    move-object v1, p2

    .line 69
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/mobsandgeeks/adapters/InstantAdapter;->mInstantAdapterCore:Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    iget-object v3, p0, Lcom/mobsandgeeks/adapters/InstantAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p3}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->createNewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/adapters/InstantAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/mobsandgeeks/adapters/InstantAdapter;->mInstantAdapterCore:Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    invoke-virtual {v2, p3, v1, v0, p1}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->bindToView(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;I)V

    .line 76
    return-object v1
.end method

.method public setViewHandler(ILcom/mobsandgeeks/adapters/ViewHandler;)V
    .locals 1
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mobsandgeeks/adapters/ViewHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapter;, "Lcom/mobsandgeeks/adapters/InstantAdapter<TT;>;"
    .local p2, "viewHandler":Lcom/mobsandgeeks/adapters/ViewHandler;, "Lcom/mobsandgeeks/adapters/ViewHandler<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapter;->mInstantAdapterCore:Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    invoke-virtual {v0, p1, p2}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->setViewHandler(ILcom/mobsandgeeks/adapters/ViewHandler;)V

    .line 87
    return-void
.end method
