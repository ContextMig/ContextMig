.class public Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;
.super Landroid/widget/Filter;
.source "FolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderListFilter"
.end annotation


# instance fields
.field private mSearchTerm:Ljava/lang/CharSequence;

.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public getSearchTerm()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;->mSearchTerm:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 12
    .param p1, "searchTerm"    # Ljava/lang/CharSequence;

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;->mSearchTerm:Ljava/lang/CharSequence;

    .line 1149
    new-instance v4, Landroid/widget/Filter$FilterResults;

    invoke-direct {v4}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 1151
    .local v4, "results":Landroid/widget/Filter$FilterResults;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1152
    .local v2, "locale":Ljava/util/Locale;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 1153
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v10}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$700(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1154
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/FolderInfoHolder;>;"
    iput-object v1, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1155
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    iput v10, v4, Landroid/widget/Filter$FilterResults;->count:I

    .line 1181
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/FolderInfoHolder;>;"
    :goto_0
    return-object v4

    .line 1157
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 1158
    .local v5, "searchTermString":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1159
    .local v9, "words":[Ljava/lang/String;
    array-length v8, v9

    .line 1161
    .local v8, "wordCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v3, "newValues":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/FolderInfoHolder;>;"
    iget-object v10, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-static {v10}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$700(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 1164
    .local v6, "value":Lcom/fsck/k9/activity/FolderInfoHolder;
    iget-object v11, v6, Lcom/fsck/k9/activity/FolderInfoHolder;->displayName:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 1167
    iget-object v11, v6, Lcom/fsck/k9/activity/FolderInfoHolder;->displayName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 1169
    .local v7, "valueText":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_2
    if-ge v0, v8, :cond_2

    .line 1170
    aget-object v11, v9, v0

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1171
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1169
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1177
    .end local v0    # "k":I
    .end local v6    # "value":Lcom/fsck/k9/activity/FolderInfoHolder;
    .end local v7    # "valueText":Ljava/lang/String;
    :cond_4
    iput-object v3, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1178
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    iput v10, v4, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 1192
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$802(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 1194
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->notifyDataSetChanged()V

    .line 1195
    return-void
.end method
