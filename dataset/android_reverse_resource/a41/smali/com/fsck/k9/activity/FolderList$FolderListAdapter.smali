.class Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderList.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/FolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/widget/Filter;

.field private mFilteredFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/FolderInfoHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/FolderInfoHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/fsck/k9/activity/ActivityListener;

.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/List;

    .line 649
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFilteredFolders:Ljava/util/List;

    .line 650
    new-instance v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$FolderListFilter;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFilter:Landroid/widget/Filter;

    .line 679
    new-instance v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    return-void
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFolders:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFilteredFolders:Ljava/util/List;

    return-object p1
.end method

.method private createFlaggedSearch(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/FolderInfoHolder;)Landroid/view/View$OnClickListener;
    .locals 11
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Lcom/fsck/k9/activity/FolderInfoHolder;

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1081
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v3, 0x7f07033a

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v6, 0x7f0702a8

    new-array v7, v7, [Ljava/lang/Object;

    .line 1082
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p2, Lcom/fsck/k9/activity/FolderInfoHolder;->displayName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v6, 0x7f0701d2

    .line 1084
    invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 1081
    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, "searchTitle":Ljava/lang/String;
    new-instance v0, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v0, v1}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 1087
    .local v0, "search":Lcom/fsck/k9/search/LocalSearch;
    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FLAGGED:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v3, "1"

    sget-object v4, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v0, v2, v3, v4}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 1089
    iget-object v2, p2, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 1092
    new-instance v2, Lcom/fsck/k9/activity/FolderList$FolderClickListener;

    iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/activity/FolderList$FolderClickListener;-><init>(Lcom/fsck/k9/activity/FolderList;Lcom/fsck/k9/search/LocalSearch;)V

    return-object v2
.end method

.method private createUnreadSearch(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/FolderInfoHolder;)Landroid/view/View$OnClickListener;
    .locals 11
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Lcom/fsck/k9/activity/FolderInfoHolder;

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1096
    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v3, 0x7f07033a

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v6, 0x7f0702a8

    new-array v7, v7, [Ljava/lang/Object;

    .line 1097
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p2, Lcom/fsck/k9/activity/FolderInfoHolder;->displayName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v6, 0x7f0703a7

    .line 1099
    invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 1096
    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "searchTitle":Ljava/lang/String;
    new-instance v0, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v0, v1}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v0, "search":Lcom/fsck/k9/search/LocalSearch;
    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->READ:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v3, "1"

    sget-object v4, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v0, v2, v3, v4}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 1104
    iget-object v2, p2, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 1107
    new-instance v2, Lcom/fsck/k9/activity/FolderList$FolderClickListener;

    iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/activity/FolderList$FolderClickListener;-><init>(Lcom/fsck/k9/activity/FolderList;Lcom/fsck/k9/search/LocalSearch;)V

    return-object v2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFilteredFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderInfoHolder;
    .locals 3
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 926
    const/4 v0, 0x0

    .line 928
    .local v0, "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolderIndex(Ljava/lang/String;)I

    move-result v1

    .line 929
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 930
    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    check-cast v0, Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 931
    .restart local v0    # "holder":Lcom/fsck/k9/activity/FolderInfoHolder;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 935
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFolderIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 920
    new-instance v0, Lcom/fsck/k9/activity/FolderInfoHolder;

    invoke-direct {v0}, Lcom/fsck/k9/activity/FolderInfoHolder;-><init>()V

    .line 921
    .local v0, "searchHolder":Lcom/fsck/k9/activity/FolderInfoHolder;
    iput-object p1, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    .line 922
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFilteredFolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 657
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFilteredFolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItem(J)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 653
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 662
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFilteredFolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "itemPosition"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 948
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 950
    .local v10, "folder":Lcom/fsck/k9/activity/FolderInfoHolder;
    if-eqz p2, :cond_1

    .line 951
    move-object/from16 v14, p2

    .line 956
    .local v14, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;

    .line 958
    .local v13, "holder":Lcom/fsck/k9/activity/FolderList$FolderViewHolder;
    if-nez v13, :cond_0

    .line 959
    new-instance v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;

    .end local v13    # "holder":Lcom/fsck/k9/activity/FolderList$FolderViewHolder;
    invoke-direct {v13}, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;-><init>()V

    .line 960
    .restart local v13    # "holder":Lcom/fsck/k9/activity/FolderList$FolderViewHolder;
    const v2, 0x7f0c0071

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderName:Landroid/widget/TextView;

    .line 961
    const v2, 0x7f0c0044

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCount:Landroid/widget/TextView;

    .line 962
    const v2, 0x7f0c0041

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->flaggedMessageCount:Landroid/widget/TextView;

    .line 963
    const v2, 0x7f0c0042

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCountWrapper:Landroid/view/View;

    .line 964
    const v2, 0x7f0c003f

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->flaggedMessageCountWrapper:Landroid/view/View;

    .line 965
    const v2, 0x7f0c0043

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCountIcon:Landroid/view/View;

    .line 966
    const v2, 0x7f0c0040

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->flaggedMessageCountIcon:Landroid/view/View;

    .line 968
    const v2, 0x7f0c0072

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderStatus:Landroid/widget/TextView;

    .line 969
    const v2, 0x7f0c003e

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->activeIcons:Landroid/widget/RelativeLayout;

    .line 970
    const v2, 0x7f0c0046

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->chip:Landroid/view/View;

    .line 971
    const v2, 0x7f0c0070

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderListItemLayout:Landroid/widget/LinearLayout;

    .line 972
    iget-object v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    iput-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->rawFolderName:Ljava/lang/String;

    .line 974
    invoke-virtual {v14, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 977
    :cond_0
    if-nez v10, :cond_2

    .line 1077
    :goto_1
    return-object v14

    .line 953
    .end local v13    # "holder":Lcom/fsck/k9/activity/FolderList$FolderViewHolder;
    .end local v14    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v2}, Lcom/fsck/k9/activity/FolderList;->access$1400(Lcom/fsck/k9/activity/FolderList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001b

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .restart local v14    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 983
    .restart local v13    # "holder":Lcom/fsck/k9/activity/FolderList$FolderViewHolder;
    :cond_2
    iget-boolean v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->loading:Z

    if-eqz v2, :cond_5

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v3, 0x7f070394

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1008
    .local v11, "folderStatus":Ljava/lang/String;
    :goto_2
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderName:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    if-eqz v11, :cond_a

    .line 1010
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderStatus:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1016
    :goto_3
    iget v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->unreadMessageCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1017
    const/4 v2, 0x0

    iput v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->unreadMessageCount:I

    .line 1019
    :try_start_0
    iget-object v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v2

    iput v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->unreadMessageCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    :cond_3
    :goto_4
    iget v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->unreadMessageCount:I

    if-lez v2, :cond_b

    .line 1025
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCount:Landroid/widget/TextView;

    const-string v3, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v15, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->unreadMessageCount:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCountWrapper:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    .line 1027
    invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->createUnreadSearch(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/FolderInfoHolder;)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 1026
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1028
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCountWrapper:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCountIcon:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    .line 1030
    invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/fsck/k9/Account;->generateColorChip(ZZ)Lcom/fsck/k9/view/ColorChip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/view/ColorChip;->drawable()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    .line 1029
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1035
    :goto_5
    iget v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->flaggedMessageCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 1036
    const/4 v2, 0x0

    iput v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->flaggedMessageCount:I

    .line 1038
    :try_start_1
    iget-object v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->folder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getFlaggedMessageCount()I

    move-result v2

    iput v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->flaggedMessageCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1044
    :cond_4
    :goto_6
    invoke-static {}, Lcom/fsck/k9/K9;->messageListStars()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->flaggedMessageCount:I

    if-lez v2, :cond_c

    .line 1045
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->flaggedMessageCount:Landroid/widget/TextView;

    const-string v3, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v15, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->flaggedMessageCount:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->flaggedMessageCountWrapper:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    .line 1047
    invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->createFlaggedSearch(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/FolderInfoHolder;)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 1046
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1048
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->flaggedMessageCountWrapper:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->flaggedMessageCountIcon:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    .line 1050
    invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/fsck/k9/Account;->generateColorChip(ZZ)Lcom/fsck/k9/view/ColorChip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/view/ColorChip;->drawable()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    .line 1049
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1055
    :goto_7
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->activeIcons:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$2;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->chip:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v2}, Lcom/fsck/k9/activity/FolderList;->access$1500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/FontSizes;

    move-result-object v2

    iget-object v3, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v6}, Lcom/fsck/k9/activity/FolderList;->access$1500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/FontSizes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/FontSizes;->getFolderName()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1067
    invoke-static {}, Lcom/fsck/k9/K9;->wrapFolderNames()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1068
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1069
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1075
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v2}, Lcom/fsck/k9/activity/FolderList;->access$1500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/FontSizes;

    move-result-object v2

    iget-object v3, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v6}, Lcom/fsck/k9/activity/FolderList;->access$1500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/FontSizes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/FontSizes;->getFolderStatus()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 985
    .end local v11    # "folderStatus":Ljava/lang/String;
    :cond_5
    iget-object v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->status:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 986
    iget-object v11, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->status:Ljava/lang/String;

    .restart local v11    # "folderStatus":Ljava/lang/String;
    goto/16 :goto_2

    .line 987
    .end local v11    # "folderStatus":Ljava/lang/String;
    :cond_6
    iget-wide v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->lastChecked:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9

    .line 988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 989
    .local v4, "now":J
    const/16 v8, 0x15

    .line 992
    .local v8, "flags":I
    iget-wide v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->lastChecked:J

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v6, 0x240c8400

    cmp-long v2, v2, v6

    if-lez v2, :cond_7

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v3, 0x7f070309

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    .line 994
    invoke-static {v15}, Lcom/fsck/k9/activity/FolderList;->access$1300(Lcom/fsck/k9/activity/FolderList;)Landroid/content/Context;

    move-result-object v15

    iget-wide v0, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->lastChecked:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v15, v0, v1, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    .line 993
    invoke-virtual {v2, v3, v6}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1000
    .local v12, "formattedDate":Ljava/lang/CharSequence;
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    iget-boolean v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->pushActive:Z

    if-eqz v2, :cond_8

    const v2, 0x7f070278

    :goto_a
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    invoke-virtual {v3, v2, v6}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1004
    .restart local v11    # "folderStatus":Ljava/lang/String;
    goto/16 :goto_2

    .line 996
    .end local v11    # "folderStatus":Ljava/lang/String;
    .end local v12    # "formattedDate":Ljava/lang/CharSequence;
    :cond_7
    iget-wide v2, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->lastChecked:J

    const-wide/32 v6, 0xea60

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v12

    .restart local v12    # "formattedDate":Ljava/lang/CharSequence;
    goto :goto_9

    .line 1000
    :cond_8
    const v2, 0x7f070277

    goto :goto_a

    .line 1005
    .end local v4    # "now":J
    .end local v8    # "flags":I
    .end local v12    # "formattedDate":Ljava/lang/CharSequence;
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "folderStatus":Ljava/lang/String;
    goto/16 :goto_2

    .line 1013
    :cond_a
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderStatus:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1020
    :catch_0
    move-exception v9

    .line 1021
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "Unable to get unreadMessageCount for %s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v7}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1032
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_b
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->newMessageCountWrapper:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1039
    :catch_1
    move-exception v9

    .line 1040
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v2, "Unable to get flaggedMessageCount for %s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v7}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    iget-object v7, v10, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1052
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_c
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->flaggedMessageCountWrapper:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1072
    :cond_d
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderName:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1073
    iget-object v2, v13, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->folderName:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 940
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 943
    :goto_0
    return-object v0

    .line 942
    :cond_0
    const-string v0, "getView with illegal position=%d called! count is only %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 671
    const/4 v0, 0x1

    return v0
.end method

.method public isItemSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1116
    const/4 v0, 0x1

    return v0
.end method

.method public setFilter(Landroid/widget/Filter;)V
    .locals 0
    .param p1, "filter"    # Landroid/widget/Filter;

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mFilter:Landroid/widget/Filter;

    .line 1121
    return-void
.end method
