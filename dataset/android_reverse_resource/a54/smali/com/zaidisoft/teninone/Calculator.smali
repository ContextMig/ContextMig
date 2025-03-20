.class public Lcom/zaidisoft/teninone/Calculator;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Calculator.java"


# instance fields
.field private actionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/Calculator;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zaidisoft/teninone/Calculator;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p0, "x0"    # Lcom/zaidisoft/teninone/Calculator;
    .param p1, "x1"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/zaidisoft/teninone/Calculator;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zaidisoft/teninone/Calculator;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zaidisoft/teninone/Calculator;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/zaidisoft/teninone/Calculator;->setContentView(I)V

    .line 28
    const v0, 0x7f0900fe

    invoke-virtual {p0, v0}, Lcom/zaidisoft/teninone/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 29
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v3}, Lcom/zaidisoft/teninone/Calculator;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 31
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/zaidisoft/teninone/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/zaidisoft/teninone/Calculator;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 32
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v2, p0, Lcom/zaidisoft/teninone/Calculator;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f0d003e

    const v5, 0x7f0d003d

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v0, p0, Lcom/zaidisoft/teninone/Calculator;->actionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 34
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/zaidisoft/teninone/Calculator;->actionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/Calculator;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/zaidisoft/teninone/Calculator;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 37
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f090040

    new-instance v2, Lcom/zaidisoft/teninone/TipCalculator;

    invoke-direct {v2}, Lcom/zaidisoft/teninone/TipCalculator;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 38
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator;->fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 39
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/Calculator;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 42
    :cond_0
    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/zaidisoft/teninone/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/ads/AdView;

    .line 43
    .local v7, "adView":Lcom/google/android/gms/ads/AdView;
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v6

    .line 44
    .local v6, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {v7, v6}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 46
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/zaidisoft/teninone/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/NavigationView;

    .line 47
    .local v8, "navigationView":Landroid/support/design/widget/NavigationView;
    new-instance v0, Lcom/zaidisoft/teninone/Calculator$1;

    invoke-direct {v0, p0}, Lcom/zaidisoft/teninone/Calculator$1;-><init>(Lcom/zaidisoft/teninone/Calculator;)V

    invoke-virtual {v8, v0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 135
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 140
    iget-object v0, p0, Lcom/zaidisoft/teninone/Calculator;->actionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 141
    return-void
.end method
