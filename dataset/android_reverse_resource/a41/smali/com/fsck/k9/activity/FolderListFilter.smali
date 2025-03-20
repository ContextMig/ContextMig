.class public Lcom/fsck/k9/activity/FolderListFilter;
.super Landroid/widget/Filter;
.source "FolderListFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field private mFolders:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOriginalValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ArrayAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/fsck/k9/activity/FolderListFilter;, "Lcom/fsck/k9/activity/FolderListFilter<TT;>;"
    .local p1, "folderNames":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderListFilter;->mOriginalValues:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderListFilter;->mFolders:Landroid/widget/ArrayAdapter;

    .line 39
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/fsck/k9/activity/FolderListFilter;, "Lcom/fsck/k9/activity/FolderListFilter<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderListFilter;->mOriginalValues:Ljava/util/List;

    .line 127
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 15
    .param p1, "searchTerm"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    .local p0, "this":Lcom/fsck/k9/activity/FolderListFilter;, "Lcom/fsck/k9/activity/FolderListFilter<TT;>;"
    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 53
    .local v6, "results":Landroid/widget/Filter$FilterResults;
    iget-object v13, p0, Lcom/fsck/k9/activity/FolderListFilter;->mOriginalValues:Ljava/util/List;

    if-nez v13, :cond_0

    .line 54
    iget-object v13, p0, Lcom/fsck/k9/activity/FolderListFilter;->mFolders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v13}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 55
    .local v0, "count":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v13, p0, Lcom/fsck/k9/activity/FolderListFilter;->mOriginalValues:Ljava/util/List;

    .line 56
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    iget-object v13, p0, Lcom/fsck/k9/activity/FolderListFilter;->mOriginalValues:Ljava/util/List;

    iget-object v14, p0, Lcom/fsck/k9/activity/FolderListFilter;->mFolders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v14, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 62
    .local v4, "locale":Ljava/util/Locale;
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 63
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/fsck/k9/activity/FolderListFilter;->mOriginalValues:Ljava/util/List;

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v3, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 65
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    iput v13, v6, Landroid/widget/Filter$FilterResults;->count:I

    .line 90
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    return-object v6

    .line 67
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "searchTermString":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 69
    .local v12, "words":[Ljava/lang/String;
    array-length v11, v12

    .line 71
    .local v11, "wordCount":I
    iget-object v10, p0, Lcom/fsck/k9/activity/FolderListFilter;->mOriginalValues:Ljava/util/List;

    .line 73
    .local v10, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v5, "newValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 76
    .local v8, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "valueText":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    if-ge v2, v11, :cond_3

    .line 79
    aget-object v14, v12, v2

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 80
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 86
    .end local v2    # "k":I
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    .end local v9    # "valueText":Ljava/lang/String;
    :cond_5
    iput-object v5, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 87
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    iput v13, v6, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .local p0, "this":Lcom/fsck/k9/activity/FolderListFilter;, "Lcom/fsck/k9/activity/FolderListFilter<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderListFilter;->mFolders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 105
    :try_start_0
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 106
    .local v1, "folders":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderListFilter;->mFolders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 107
    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "folder":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 110
    iget-object v3, p0, Lcom/fsck/k9/activity/FolderListFilter;->mFolders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    .end local v0    # "folder":Ljava/lang/Object;, "TT;"
    .end local v1    # "folders":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/fsck/k9/activity/FolderListFilter;->mFolders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    throw v2

    .line 114
    .restart local v1    # "folders":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    :try_start_1
    const-string v2, "FolderListFilter.publishResults - null search-result "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderListFilter;->mFolders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderListFilter;->mFolders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 123
    return-void
.end method
