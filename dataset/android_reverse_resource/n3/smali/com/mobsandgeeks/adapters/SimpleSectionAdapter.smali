.class public Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleSectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String;

.field private static final VIEW_TYPE_SECTION_HEADER:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mSectionHeaderLayoutId:I

.field private mSectionTitleTextViewId:I

.field private mSectionizer:Lcom/mobsandgeeks/adapters/Sectionizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mobsandgeeks/adapters/Sectionizer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSections:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;IILcom/mobsandgeeks/adapters/Sectionizer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listAdapter"    # Landroid/widget/BaseAdapter;
    .param p3, "sectionHeaderLayoutId"    # I
    .param p4, "sectionTitleTextViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/BaseAdapter;",
            "II",
            "Lcom/mobsandgeeks/adapters/Sectionizer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    .local p5, "sectionizer":Lcom/mobsandgeeks/adapters/Sectionizer;, "Lcom/mobsandgeeks/adapters/Sectionizer<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p2, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listAdapter cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    if-nez p5, :cond_2

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sectionizer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    invoke-direct {p0, p1, p3, p4}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->isTextView(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sectionTitleTextViewId should be a TextView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    iput-object p1, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 80
    iput p3, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSectionHeaderLayoutId:I

    .line 81
    iput p4, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSectionTitleTextViewId:I

    .line 82
    iput-object p5, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSectionizer:Lcom/mobsandgeeks/adapters/Sectionizer;

    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSections:Ljava/util/LinkedHashMap;

    .line 86
    invoke-direct {p0}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->findSections()V

    .line 87
    return-void
.end method

.method private findSections()V
    .locals 6

    .prologue
    .line 200
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    iget-object v4, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 201
    .local v1, "n":I
    const/4 v2, 0x0

    .line 202
    .local v2, "nSections":I
    iget-object v4, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 205
    iget-object v4, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSectionizer:Lcom/mobsandgeeks/adapters/Sectionizer;

    iget-object v5, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mobsandgeeks/adapters/Sectionizer;->getSectionTitleForItem(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "sectionName":Ljava/lang/String;
    iget-object v4, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    iget-object v4, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSections:Ljava/util/LinkedHashMap;

    add-int v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "sectionName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getSectionCount()I
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method private isTextView(Landroid/content/Context;II)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .param p3, "textViewId"    # I

    .prologue
    .line 90
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "inflatedView":Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "foundView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/TextView;

    return v2
.end method

.method private sectionTitleForPosition(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 223
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    const/4 v3, 0x0

    .line 225
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 226
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "title":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 232
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "title":Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 98
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getSectionCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getIndexForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 183
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    const/4 v3, 0x0

    .line 185
    .local v3, "nSections":I
    iget-object v4, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 186
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    sub-int v4, p1, v3

    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 161
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getIndexForPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 166
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getIndexForPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 142
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getIndexForPosition(I)I

    move-result v0

    .line 143
    .local v0, "positionInCustomAdapter":I
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    move-object v2, p2

    .line 104
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 106
    .local v0, "sectionHolder":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getItemViewType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 121
    iget-object v3, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getIndexForPosition(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 126
    :goto_0
    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->sectionTitleForPosition(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "sectionName":Ljava/lang/String;
    iget-object v3, v0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .end local v1    # "sectionName":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 108
    :pswitch_0
    if-nez v2, :cond_1

    .line 109
    iget-object v3, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSectionHeaderLayoutId:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 111
    new-instance v0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;

    .end local v0    # "sectionHolder":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;
    invoke-direct {v0}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;-><init>()V

    .line 112
    .restart local v0    # "sectionHolder":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;
    iget v3, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSectionTitleTextViewId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;->titleTextView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sectionHolder":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;
    check-cast v0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;

    .line 118
    .restart local v0    # "sectionHolder":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter$SectionHolder;
    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 155
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->getIndexForPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;, "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 172
    invoke-direct {p0}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->findSections()V

    .line 173
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 174
    return-void
.end method
