.class public Lorg/mozilla/focus/fragment/FirstrunFragment;
.super Landroid/support/v4/app/Fragment;
.source "FirstrunFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private background:Landroid/view/View;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/focus/fragment/FirstrunFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/fragment/FirstrunFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->background:Landroid/view/View;

    return-object v0
.end method

.method public static create()Lorg/mozilla/focus/fragment/FirstrunFragment;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/mozilla/focus/fragment/FirstrunFragment;

    invoke-direct {v0}, Lorg/mozilla/focus/fragment/FirstrunFragment;-><init>()V

    return-object v0
.end method

.method private finishFirstrun()V
    .locals 5

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/FirstrunFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 144
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/FirstrunFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 145
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "firstrun_shown"

    const/4 v4, 0x1

    .line 146
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 151
    invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 154
    const-string v2, "url_input"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/mozilla/focus/fragment/UrlInputFragment;

    .line 155
    .local v1, "inputFragment":Lorg/mozilla/focus/fragment/UrlInputFragment;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 157
    invoke-virtual {v1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->showKeyboard()V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    const/high16 v2, 0x7f120000

    .line 45
    invoke-virtual {v1, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v0

    .line 47
    .local v0, "transition":Landroid/transition/Transition;
    invoke-virtual {p0, v0}, Lorg/mozilla/focus/fragment/FirstrunFragment;->setExitTransition(Ljava/lang/Object;)V

    .line 51
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->showFirstRunPageEvent(I)V

    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :sswitch_0
    iget-object v0, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 139
    :goto_0
    return-void

    .line 127
    :sswitch_1
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/FirstrunFragment;->finishFirstrun()V

    .line 128
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->skipFirstRunEvent()V

    goto :goto_0

    .line 132
    :sswitch_2
    invoke-direct {p0}, Lorg/mozilla/focus/fragment/FirstrunFragment;->finishFirstrun()V

    .line 133
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->finishFirstRunEvent()V

    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090079 -> :sswitch_2
        0x7f0900b4 -> :sswitch_0
        0x7f0900f9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 56
    const v5, 0x7f0b003b

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 58
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0900f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v5, 0x7f090028

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->background:Landroid/view/View;

    .line 62
    new-instance v0, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 64
    .local v0, "adapter":Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;
    const v5, 0x7f0900bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 65
    iget-object v5, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 67
    iget-object v5, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lorg/mozilla/focus/fragment/FirstrunFragment$1;

    invoke-direct {v6, p0}, Lorg/mozilla/focus/fragment/FirstrunFragment$1;-><init>(Lorg/mozilla/focus/fragment/FirstrunFragment;)V

    invoke-virtual {v5, v7, v6}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 73
    iget-object v5, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lorg/mozilla/focus/fragment/FirstrunFragment$2;

    invoke-direct {v6, p0}, Lorg/mozilla/focus/fragment/FirstrunFragment$2;-><init>(Lorg/mozilla/focus/fragment/FirstrunFragment;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 86
    iget-object v5, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v8}, Landroid/support/v4/view/ViewPager;->setClipToPadding(Z)V

    .line 87
    iget-object v5, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 88
    iget-object v5, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lorg/mozilla/focus/fragment/FirstrunFragment$3;

    invoke-direct {v6, p0, v0}, Lorg/mozilla/focus/fragment/FirstrunFragment$3;-><init>(Lorg/mozilla/focus/fragment/FirstrunFragment;Lorg/mozilla/focus/firstrun/FirstrunPagerAdapter;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 107
    const v5, 0x7f09010f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout;

    .line 108
    .local v2, "tabLayout":Landroid/support/design/widget/TabLayout;
    iget-object v5, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5, v7}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;Z)V

    .line 110
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/FirstrunFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 111
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v5, "url_input"

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lorg/mozilla/focus/fragment/UrlInputFragment;

    .line 112
    .local v3, "urlInputFragment":Lorg/mozilla/focus/fragment/UrlInputFragment;
    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 116
    :cond_0
    return-object v4
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 164
    iget-object v0, p0, Lorg/mozilla/focus/fragment/FirstrunFragment;->background:Landroid/view/View;

    new-instance v1, Lorg/mozilla/focus/fragment/FirstrunFragment$4;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/fragment/FirstrunFragment$4;-><init>(Lorg/mozilla/focus/fragment/FirstrunFragment;)V

    invoke-static {v0, v1}, Lorg/mozilla/focus/utils/StatusBarUtils;->getStatusBarHeight(Landroid/view/View;Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;)V

    .line 170
    return-void
.end method
