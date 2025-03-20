.class Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/fsck/k9/BaseAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/Accounts;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/BaseAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1743
    .local p2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/BaseAccount;>;"
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    .line 1744
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1745
    return-void
.end method

.method private createFlaggedSearchListener(Lcom/fsck/k9/BaseAccount;)Landroid/view/View$OnClickListener;
    .locals 9
    .param p1, "account"    # Lcom/fsck/k9/BaseAccount;

    .prologue
    .line 1857
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    const v4, 0x7f07033a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    const v8, 0x7f0701d2

    .line 1858
    invoke-virtual {v7, v8}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1857
    invoke-virtual {v3, v4, v5}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1861
    .local v2, "searchTitle":Ljava/lang/String;
    instance-of v3, p1, Lcom/fsck/k9/search/SearchAccount;

    if-eqz v3, :cond_0

    .line 1862
    check-cast p1, Lcom/fsck/k9/search/SearchAccount;

    .end local p1    # "account":Lcom/fsck/k9/BaseAccount;
    invoke-virtual {p1}, Lcom/fsck/k9/search/SearchAccount;->getRelatedSearch()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/search/LocalSearch;->clone()Lcom/fsck/k9/search/LocalSearch;

    move-result-object v1

    .line 1863
    .local v1, "search":Lcom/fsck/k9/search/LocalSearch;
    invoke-virtual {v1, v2}, Lcom/fsck/k9/search/LocalSearch;->setName(Ljava/lang/String;)V

    .line 1873
    :goto_0
    sget-object v3, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FLAGGED:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    const-string v4, "1"

    sget-object v5, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1, v3, v4, v5}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 1875
    new-instance v3, Lcom/fsck/k9/activity/Accounts$AccountClickListener;

    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {v3, v4, v1}, Lcom/fsck/k9/activity/Accounts$AccountClickListener;-><init>(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/search/LocalSearch;)V

    return-object v3

    .line 1865
    .end local v1    # "search":Lcom/fsck/k9/search/LocalSearch;
    .restart local p1    # "account":Lcom/fsck/k9/BaseAccount;
    :cond_0
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v1, v2}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 1866
    .restart local v1    # "search":Lcom/fsck/k9/search/LocalSearch;
    invoke-interface {p1}, Lcom/fsck/k9/BaseAccount;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    move-object v0, p1

    .line 1868
    check-cast v0, Lcom/fsck/k9/Account;

    .line 1869
    .local v0, "realAccount":Lcom/fsck/k9/Account;
    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->excludeSpecialFolders(Lcom/fsck/k9/search/LocalSearch;)V

    .line 1870
    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->limitToDisplayableFolders(Lcom/fsck/k9/search/LocalSearch;)V

    goto :goto_0
.end method

.method private createUnreadSearchListener(Lcom/fsck/k9/BaseAccount;)Landroid/view/View$OnClickListener;
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/BaseAccount;

    .prologue
    .line 1879
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1, p1}, Lcom/fsck/k9/activity/Accounts;->createUnreadSearch(Landroid/content/Context;Lcom/fsck/k9/BaseAccount;)Lcom/fsck/k9/search/LocalSearch;

    move-result-object v0

    .line 1880
    .local v0, "search":Lcom/fsck/k9/search/LocalSearch;
    new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountClickListener;

    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/activity/Accounts$AccountClickListener;-><init>(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/search/LocalSearch;)V

    return-object v1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1749
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/BaseAccount;

    .line 1751
    .local v0, "account":Lcom/fsck/k9/BaseAccount;
    if-eqz p2, :cond_3

    .line 1752
    move-object v6, p2

    .line 1756
    .local v6, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;

    .line 1757
    .local v2, "holder":Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;
    if-nez v2, :cond_0

    .line 1758
    new-instance v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;

    .end local v2    # "holder":Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;
    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsAdapter;)V

    .line 1759
    .restart local v2    # "holder":Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;
    const v7, 0x7f0c0047

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->description:Landroid/widget/TextView;

    .line 1760
    const v7, 0x7f0c0048

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    .line 1761
    const v7, 0x7f0c0044

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCount:Landroid/widget/TextView;

    .line 1762
    const v7, 0x7f0c0041

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->flaggedMessageCount:Landroid/widget/TextView;

    .line 1763
    const v7, 0x7f0c0042

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCountWrapper:Landroid/view/View;

    .line 1764
    const v7, 0x7f0c003f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->flaggedMessageCountWrapper:Landroid/view/View;

    .line 1765
    const v7, 0x7f0c0043

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCountIcon:Landroid/view/View;

    .line 1766
    const v7, 0x7f0c0040

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->flaggedMessageCountIcon:Landroid/view/View;

    .line 1767
    const v7, 0x7f0c003e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->activeIcons:Landroid/widget/RelativeLayout;

    .line 1769
    const v7, 0x7f0c0046

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;

    .line 1770
    const v7, 0x7f0c004a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->folders:Landroid/widget/ImageButton;

    .line 1771
    const v7, 0x7f0c0045

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->accountsItemLayout:Landroid/widget/LinearLayout;

    .line 1773
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1775
    :cond_0
    iget-object v7, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v7}, Lcom/fsck/k9/activity/Accounts;->access$600(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-interface {v0}, Lcom/fsck/k9/BaseAccount;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/AccountStats;

    .line 1777
    .local v4, "stats":Lcom/fsck/k9/AccountStats;
    if-eqz v4, :cond_4

    instance-of v7, v0, Lcom/fsck/k9/Account;

    if-eqz v7, :cond_4

    iget-wide v8, v4, Lcom/fsck/k9/AccountStats;->size:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_4

    .line 1778
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    iget-wide v10, v4, Lcom/fsck/k9/AccountStats;->size:J

    invoke-static {v8, v10, v11}, Lcom/fsck/k9/helper/SizeFormatter;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1789
    :goto_1
    invoke-interface {v0}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 1790
    .local v1, "description":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1791
    :cond_1
    invoke-interface {v0}, Lcom/fsck/k9/BaseAccount;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 1794
    :cond_2
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1796
    const/4 v5, 0x0

    .line 1797
    .local v5, "unreadMessageCount":Ljava/lang/Integer;
    if-eqz v4, :cond_8

    .line 1798
    iget v7, v4, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1799
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCount:Landroid/widget/TextView;

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1800
    iget-object v8, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCountWrapper:Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_6

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1802
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->flaggedMessageCount:Landroid/widget/TextView;

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1803
    iget-object v8, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->flaggedMessageCountWrapper:Landroid/view/View;

    invoke-static {}, Lcom/fsck/k9/K9;->messageListStars()Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, v4, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I

    if-lez v7, :cond_7

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1805
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->flaggedMessageCountWrapper:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->createFlaggedSearchListener(Lcom/fsck/k9/BaseAccount;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1806
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCountWrapper:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->createUnreadSearchListener(Lcom/fsck/k9/BaseAccount;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1808
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->activeIcons:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$1;

    invoke-direct {v8, p0}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$1;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsAdapter;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1820
    :goto_4
    instance-of v7, v0, Lcom/fsck/k9/Account;

    if-eqz v7, :cond_9

    move-object v3, v0

    .line 1821
    check-cast v3, Lcom/fsck/k9/Account;

    .line 1823
    .local v3, "realAccount":Lcom/fsck/k9/Account;
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1825
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->flaggedMessageCountIcon:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/fsck/k9/Account;->generateColorChip(ZZ)Lcom/fsck/k9/view/ColorChip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/view/ColorChip;->drawable()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1826
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCountIcon:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/fsck/k9/Account;->generateColorChip(ZZ)Lcom/fsck/k9/view/ColorChip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/view/ColorChip;->drawable()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1837
    .end local v3    # "realAccount":Lcom/fsck/k9/Account;
    :goto_5
    iget-object v7, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v7}, Lcom/fsck/k9/activity/Accounts;->access$2300(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/FontSizes;

    move-result-object v7

    iget-object v8, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->description:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v9}, Lcom/fsck/k9/activity/Accounts;->access$2300(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/FontSizes;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fsck/k9/FontSizes;->getAccountName()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1838
    iget-object v7, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v7}, Lcom/fsck/k9/activity/Accounts;->access$2300(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/FontSizes;

    move-result-object v7

    iget-object v8, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v9}, Lcom/fsck/k9/activity/Accounts;->access$2300(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/FontSizes;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fsck/k9/FontSizes;->getAccountDescription()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 1840
    instance-of v7, v0, Lcom/fsck/k9/search/SearchAccount;

    if-eqz v7, :cond_a

    .line 1841
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->folders:Landroid/widget/ImageButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1852
    :goto_6
    return-object v6

    .line 1754
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "holder":Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;
    .end local v4    # "stats":Lcom/fsck/k9/AccountStats;
    .end local v5    # "unreadMessageCount":Ljava/lang/Integer;
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {v7}, Lcom/fsck/k9/activity/Accounts;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 1781
    .restart local v2    # "holder":Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;
    .restart local v4    # "stats":Lcom/fsck/k9/AccountStats;
    :cond_4
    invoke-interface {v0}, Lcom/fsck/k9/BaseAccount;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1782
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1784
    :cond_5
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1785
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/fsck/k9/BaseAccount;->getEmail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1800
    .restart local v1    # "description":Ljava/lang/String;
    .restart local v5    # "unreadMessageCount":Ljava/lang/Integer;
    :cond_6
    const/16 v7, 0x8

    goto/16 :goto_2

    .line 1803
    :cond_7
    const/16 v7, 0x8

    goto/16 :goto_3

    .line 1817
    :cond_8
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCountWrapper:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1818
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->flaggedMessageCountWrapper:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1829
    :cond_9
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;

    const v8, -0x666667

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1830
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCountIcon:Landroid/view/View;

    new-instance v8, Lcom/fsck/k9/view/ColorChip;

    const v9, -0x666667

    const/4 v10, 0x0

    sget-object v11, Lcom/fsck/k9/view/ColorChip;->CIRCULAR:Landroid/graphics/Path;

    invoke-direct {v8, v9, v10, v11}, Lcom/fsck/k9/view/ColorChip;-><init>(IZLandroid/graphics/Path;)V

    invoke-virtual {v8}, Lcom/fsck/k9/view/ColorChip;->drawable()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1831
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->flaggedMessageCountIcon:Landroid/view/View;

    new-instance v8, Lcom/fsck/k9/view/ColorChip;

    const v9, -0x666667

    const/4 v10, 0x0

    sget-object v11, Lcom/fsck/k9/view/ColorChip;->STAR:Landroid/graphics/Path;

    invoke-direct {v8, v9, v10, v11}, Lcom/fsck/k9/view/ColorChip;-><init>(IZLandroid/graphics/Path;)V

    invoke-virtual {v8}, Lcom/fsck/k9/view/ColorChip;->drawable()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 1843
    :cond_a
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->folders:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1844
    iget-object v7, v2, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->folders:Landroid/widget/ImageButton;

    new-instance v8, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$2;

    invoke-direct {v8, p0, v0}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$2;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsAdapter;Lcom/fsck/k9/BaseAccount;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6
.end method
