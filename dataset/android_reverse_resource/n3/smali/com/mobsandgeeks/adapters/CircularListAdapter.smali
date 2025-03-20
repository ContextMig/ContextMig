.class public Lcom/mobsandgeeks/adapters/CircularListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CircularListAdapter.java"


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListAdapterCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/mobsandgeeks/adapters/CircularListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1, "listAdapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listAdapter cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 51
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapterCount:I

    .line 52
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7fffffff

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapterCount:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapterCount:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapterCount:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapterCount:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapterCount:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapterCount:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 102
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapterCount:I

    .line 104
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/CircularListAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 110
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 111
    return-void
.end method
