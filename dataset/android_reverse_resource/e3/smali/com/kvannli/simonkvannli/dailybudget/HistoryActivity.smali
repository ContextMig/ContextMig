.class public Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "HistoryActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "com.example.simonkvannli.dailybudget.HISTORYMESSAGE"


# instance fields
.field historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

.field listView:Landroid/widget/ListView;

.field mAdView:Lcom/google/android/gms/ads/AdView;

.field mAdapter:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

.field private mTabHost:Landroid/widget/TabHost;

.field private tabMode:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x41470044285d6f6L    # -8.393893249737847E288

    const-string v2, "com/kvannli/simonkvannli/dailybudget/HistoryActivity"

    const/16 v3, 0x3d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 31
    iput v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->tabMode:I

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;)Landroid/widget/TabHost;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mTabHost:Landroid/widget/TabHost;

    const/16 v2, 0x3b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$102(Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;I)I
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iput p1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->tabMode:I

    const/16 v1, 0x3c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method private static createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 108
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x16

    aput-boolean v4, v1, v0

    .line 109
    const v0, 0x7f0e00a3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x17

    aput-boolean v4, v1, v3

    .line 110
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/16 v0, 0x18

    aput-boolean v4, v1, v0

    return-object v2
.end method

.method private setupTab(Landroid/view/View;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x13

    aput-boolean v3, v0, v2

    .line 103
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v3, v0, v2

    .line 104
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 105
    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    return-void
.end method

.method private setupTabHost()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 74
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mTabHost:Landroid/widget/TabHost;

    const/16 v0, 0x10

    aput-boolean v3, v1, v0

    .line 75
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    const/16 v0, 0x11

    aput-boolean v3, v1, v0

    .line 76
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mTabHost:Landroid/widget/TabHost;

    new-instance v2, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;

    invoke-direct {v2, p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity$1;-><init>(Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 99
    const/16 v0, 0x12

    aput-boolean v3, v1, v0

    return-void
.end method


# virtual methods
.method public fillListView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 132
    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->tabMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/16 v2, 0x1f

    aput-boolean v6, v3, v2

    .line 133
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->get30HistoryObjectsPlus()Ljava/util/List;

    move-result-object v1

    .local v1, "historyObjects":Ljava/util/List;, "Ljava/util/List<Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;>;"
    const/16 v2, 0x20

    aput-boolean v6, v3, v2

    .line 140
    .end local v1    # "historyObjects":Ljava/util/List;, "Ljava/util/List<Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;>;"
    :goto_0
    new-instance v2, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    invoke-direct {v2, p0, v6}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mAdapter:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    .line 141
    const-string v0, ""

    const/16 v2, 0x24

    aput-boolean v6, v3, v2

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v2, 0x25

    aput-boolean v6, v3, v2

    .local v0, "date":Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    const/16 v5, 0x26

    aput-boolean v6, v3, v5

    .line 143
    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_date()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x27

    aput-boolean v6, v3, v5

    .line 148
    :goto_2
    iget-object v5, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mAdapter:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    invoke-virtual {v5, v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->addItem(Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;)V

    .line 152
    const/16 v2, 0x2b

    aput-boolean v6, v3, v2

    goto :goto_1

    .line 134
    .end local v0    # "date":Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->tabMode:I

    if-ne v2, v6, :cond_1

    const/16 v2, 0x21

    aput-boolean v6, v3, v2

    .line 135
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->get30HistoryObjectsMinus()Ljava/util/List;

    move-result-object v1

    .restart local v1    # "historyObjects":Ljava/util/List;, "Ljava/util/List<Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;>;"
    const/16 v2, 0x22

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 137
    .end local v1    # "historyObjects":Ljava/util/List;, "Ljava/util/List<Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;>;"
    :cond_1
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->get30HistoryObjects()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x23

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 143
    .restart local v0    # "date":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x28

    aput-boolean v6, v3, v5

    .line 144
    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_date()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x29

    aput-boolean v6, v3, v5

    .line 145
    iget-object v5, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mAdapter:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    invoke-virtual {v5, v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->addSectionHeaderItem(Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;)V

    const/16 v5, 0x2a

    aput-boolean v6, v3, v5

    goto :goto_2

    .line 153
    :cond_3
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mAdapter:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    const/16 v2, 0x2c

    aput-boolean v6, v3, v2

    return-void
.end method

.method public fillListViewAll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 158
    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->tabMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/16 v2, 0x2d

    aput-boolean v6, v3, v2

    .line 159
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getAllHistoryObjectsPlus()Ljava/util/List;

    move-result-object v1

    .local v1, "historyObjects":Ljava/util/List;, "Ljava/util/List<Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;>;"
    const/16 v2, 0x2e

    aput-boolean v6, v3, v2

    .line 167
    .end local v1    # "historyObjects":Ljava/util/List;, "Ljava/util/List<Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;>;"
    :goto_0
    new-instance v2, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mAdapter:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    .line 168
    const-string v0, ""

    const/16 v2, 0x32

    aput-boolean v6, v3, v2

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v2, 0x33

    aput-boolean v6, v3, v2

    .local v0, "date":Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    const/16 v5, 0x34

    aput-boolean v6, v3, v5

    .line 170
    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_date()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x35

    aput-boolean v6, v3, v5

    .line 176
    :goto_2
    iget-object v5, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mAdapter:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    invoke-virtual {v5, v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->addItem(Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;)V

    .line 180
    const/16 v2, 0x39

    aput-boolean v6, v3, v2

    goto :goto_1

    .line 160
    .end local v0    # "date":Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->tabMode:I

    if-ne v2, v6, :cond_1

    const/16 v2, 0x2f

    aput-boolean v6, v3, v2

    .line 161
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getAllHistoryObjectsMinus()Ljava/util/List;

    move-result-object v1

    .restart local v1    # "historyObjects":Ljava/util/List;, "Ljava/util/List<Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;>;"
    const/16 v2, 0x30

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 163
    .end local v1    # "historyObjects":Ljava/util/List;, "Ljava/util/List<Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;>;"
    :cond_1
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getAllHistoryObjects()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x31

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 170
    .restart local v0    # "date":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x36

    aput-boolean v6, v3, v5

    .line 171
    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_date()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x37

    aput-boolean v6, v3, v5

    .line 172
    iget-object v5, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mAdapter:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    invoke-virtual {v5, v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->addSectionHeaderItem(Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;)V

    const/16 v5, 0x38

    aput-boolean v6, v3, v5

    goto :goto_2

    .line 181
    :cond_3
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mAdapter:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    const/16 v2, 0x3a

    aput-boolean v6, v3, v2

    return-void
.end method

.method public fillTabs()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    invoke-direct {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->setupTabHost()V

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    .line 64
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const v2, 0x7f02001e

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setDividerDrawable(I)V

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 66
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "+ / \u2015"

    const v3, 0x7f0e005d

    invoke-direct {p0, v1, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->setupTab(Landroid/view/View;Ljava/lang/String;I)V

    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    .line 67
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u2015"

    const v3, 0x7f0e005e

    invoke-direct {p0, v1, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->setupTab(Landroid/view/View;Ljava/lang/String;I)V

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    .line 68
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "+"

    const v3, 0x7f0e005f

    invoke-direct {p0, v1, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->setupTab(Landroid/view/View;Ljava/lang/String;I)V

    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    .line 70
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 71
    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    return-void
.end method

.method public historyPressed(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x1c

    aput-boolean v3, v0, v2

    .line 124
    const-string v2, "com.example.simonkvannli.dailybudget.HISTORYMESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x1d

    aput-boolean v3, v0, v2

    .line 125
    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    const/16 v1, 0x1e

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v1, v2

    .line 39
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 42
    new-instance v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-direct {v0, p0, v3, v3, v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 43
    const v0, 0x7f0e0060

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->listView:Landroid/widget/ListView;

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 45
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->showMyAd()V

    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    .line 47
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->fillListView()V

    const/4 v0, 0x6

    aput-boolean v2, v1, v0

    .line 49
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->fillTabs()V

    .line 52
    const/4 v0, 0x7

    aput-boolean v2, v1, v0

    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 58
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->fillListView()V

    .line 60
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-void
.end method

.method public showMyAd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 115
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/16 v0, 0x19

    aput-boolean v3, v1, v0

    .line 117
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    const/16 v2, 0x1a

    aput-boolean v3, v1, v2

    .line 118
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 119
    const/16 v0, 0x1b

    aput-boolean v3, v1, v0

    return-void
.end method
