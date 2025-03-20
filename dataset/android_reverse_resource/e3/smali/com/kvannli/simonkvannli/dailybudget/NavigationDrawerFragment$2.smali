.class Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->setUp(ILandroid/support/v4/widget/DrawerLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x785b6e65b8ae4b04L    # 5.796709554802287E271

    const-string v2, "com/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 7

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->$jacocoInit()[Z

    move-result-object v6

    .line 143
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    aput-boolean v2, v0, v2

    .line 147
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 152
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 157
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 171
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    invoke-static {v1}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->access$100(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 170
    :goto_1
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 171
    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 161
    :cond_1
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 164
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    invoke-static {v1, v3}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->access$102(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;Z)Z

    .line 165
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    .line 166
    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x9

    aput-boolean v3, v0, v2

    .line 167
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "navigation_drawer_learned"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    goto :goto_1
.end method
