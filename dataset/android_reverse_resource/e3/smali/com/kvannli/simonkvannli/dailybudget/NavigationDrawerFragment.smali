.class public Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;
.super Landroid/support/v4/app/Fragment;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$NavigationDrawerCallbacks;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final PREF_USER_LEARNED_DRAWER:Ljava/lang/String; = "navigation_drawer_learned"

.field private static final STATE_SELECTED_POSITION:Ljava/lang/String; = "selected_navigation_drawer_position"


# instance fields
.field private mCallbacks:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$NavigationDrawerCallbacks;

.field private mCurrentSelectedPosition:I

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerListView:Landroid/widget/ListView;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mFragmentContainerView:Landroid/view/View;

.field private mFromSavedInstanceState:Z

.field private mUserLearnedDrawer:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3370087dc23dadeeL    # 6.235915948803799E-61

    const-string v2, "com/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment"

    const/16 v3, 0x3a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 55
    iput v2, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 60
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0, p1}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->selectItem(I)V

    const/16 v1, 0x36

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-boolean v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    const/16 v2, 0x37

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$102(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;Z)Z
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iput-boolean p1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    const/16 v1, 0x38

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$200(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;)Landroid/support/v4/app/ActionBarDrawerToggle;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    const/16 v2, 0x39

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getActionBar()Landroid/support/v7/app/ActionBar;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 272
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/16 v2, 0x35

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method private selectItem(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 192
    iput p1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 193
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    const/16 v1, 0x1e

    aput-boolean v3, v0, v1

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v1, :cond_1

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    .line 199
    :goto_1
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mCallbacks:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$NavigationDrawerCallbacks;

    if-nez v1, :cond_2

    const/16 v1, 0x24

    aput-boolean v3, v0, v1

    .line 202
    :goto_2
    const/16 v1, 0x27

    aput-boolean v3, v0, v1

    return-void

    .line 193
    :cond_0
    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    .line 194
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 196
    :cond_1
    const/16 v1, 0x22

    aput-boolean v3, v0, v1

    .line 197
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    const/16 v1, 0x23

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 199
    :cond_2
    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    .line 200
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mCallbacks:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$NavigationDrawerCallbacks;

    invoke-interface {v1, p1}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$NavigationDrawerCallbacks;->onNavigationDrawerItemSelected(I)V

    const/16 v1, 0x26

    aput-boolean v3, v0, v1

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 84
    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->setHasOptionsMenu(Z)V

    .line 85
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 206
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const/16 v1, 0x28

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v0, v1

    .line 208
    check-cast p1, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$NavigationDrawerCallbacks;

    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mCallbacks:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$NavigationDrawerCallbacks;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/16 v1, 0x2b

    aput-boolean v3, v0, v1

    return-void

    .line 209
    :catch_0
    move-exception v1

    const/16 v1, 0x29

    aput-boolean v3, v0, v1

    .line 210
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Activity must implement NavigationDrawerCallbacks."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2a

    aput-boolean v3, v0, v2

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 228
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/16 v1, 0x2f

    aput-boolean v2, v0, v1

    .line 230
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    const/16 v1, 0x30

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v3, v0, v3

    .line 68
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 69
    const-string v2, "navigation_drawer_learned"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    .line 71
    if-nez p1, :cond_0

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 77
    :goto_0
    iget v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    invoke-direct {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->selectItem(I)V

    .line 78
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void

    .line 71
    :cond_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 72
    const-string v1, "selected_navigation_drawer_position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 73
    iput-boolean v3, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 90
    const v0, 0x7f04001c

    invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    const/16 v0, 0x9

    aput-boolean v10, v1, v0

    .line 92
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    new-instance v2, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$1;

    invoke-direct {v2, p0}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$1;-><init>(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const/16 v3, 0xa

    aput-boolean v10, v1, v3

    .line 99
    invoke-direct {p0}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090016

    const v5, 0x1020014

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const v7, 0x7f07007e

    const/16 v8, 0xb

    aput-boolean v10, v1, v8

    .line 103
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f070083

    const/16 v8, 0xc

    aput-boolean v10, v1, v8

    .line 104
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    const v8, 0x7f07007f

    const/16 v9, 0xd

    aput-boolean v10, v1, v9

    .line 105
    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const v8, 0x7f070080

    const/16 v9, 0xe

    aput-boolean v10, v1, v9

    .line 106
    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const v8, 0x7f070081

    const/16 v9, 0xf

    aput-boolean v10, v1, v9

    .line 107
    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    const/16 v3, 0x10

    aput-boolean v10, v1, v3

    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x11

    aput-boolean v10, v1, v0

    .line 109
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    invoke-virtual {v0, v2, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 110
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    const/16 v2, 0x12

    aput-boolean v10, v1, v2

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 216
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mCallbacks:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$NavigationDrawerCallbacks;

    .line 218
    const/16 v1, 0x2c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 248
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const/16 v1, 0x31

    aput-boolean v0, v2, v1

    .line 257
    :goto_0
    return v0

    .line 252
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0e00a4

    if-ne v1, v3, :cond_1

    const/16 v1, 0x32

    aput-boolean v0, v2, v1

    .line 253
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "Example action."

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 254
    const/16 v1, 0x33

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 257
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x34

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 222
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    .line 223
    const-string v1, "selected_navigation_drawer_position"

    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const/16 v1, 0x2e

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setUp(ILandroid/support/v4/widget/DrawerLayout;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->$jacocoInit()[Z

    move-result-object v7

    .line 124
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    .line 125
    iput-object p2, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/16 v0, 0x13

    aput-boolean v8, v7, v0

    .line 128
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f020051

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    const/16 v0, 0x14

    aput-boolean v8, v7, v0

    .line 131
    invoke-direct {p0}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x15

    aput-boolean v8, v7, v1

    .line 132
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0x16

    aput-boolean v8, v7, v1

    .line 133
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 137
    new-instance v0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;

    const/16 v1, 0x17

    aput-boolean v8, v7, v1

    .line 138
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f020052

    const v5, 0x7f070060

    const v6, 0x7f07005f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;-><init>(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 176
    iget-boolean v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    aput-boolean v8, v7, v0

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$3;

    invoke-direct {v1, p0}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$3;-><init>(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0x1c

    aput-boolean v8, v7, v0

    .line 188
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 189
    const/16 v0, 0x1d

    aput-boolean v8, v7, v0

    return-void

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    aput-boolean v8, v7, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1a

    aput-boolean v8, v7, v0

    .line 177
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    const/16 v0, 0x1b

    aput-boolean v8, v7, v0

    goto :goto_0
.end method
