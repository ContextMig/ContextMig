.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final MAIN_CONTENT_FADEIN_DURATION:I = 0xfa

.field public static final MAIN_CONTENT_FADEOUT_DURATION:I = 0x96

.field public static final NAVDRAWER_LAUNCH_DELAY:I = 0xfa


# instance fields
.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mHandler:Landroid/os/Handler;

.field private mNavigationView:Landroid/support/design/widget/NavigationView;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x75cd2183e782c5abL

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity"

    const/16 v3, 0x49

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;I)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->callDrawerItem(I)V

    const/16 v1, 0x48

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private callDrawerItem(I)V
    .locals 5

    .prologue
    const/high16 v3, 0x4000000

    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 163
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0x24

    aput-boolean v4, v0, v1

    .line 196
    :goto_0
    const/16 v1, 0x36

    aput-boolean v4, v0, v1

    return-void

    .line 166
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x25

    aput-boolean v4, v0, v2

    .line 167
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0x26

    aput-boolean v4, v0, v2

    .line 168
    invoke-virtual {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    const/16 v1, 0x27

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 171
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x28

    aput-boolean v4, v0, v2

    .line 172
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0x29

    aput-boolean v4, v0, v2

    .line 173
    invoke-virtual {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    const/16 v1, 0x2a

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 176
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/about/AboutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x2b

    aput-boolean v4, v0, v2

    .line 177
    invoke-direct {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->createBackStack(Landroid/content/Intent;)V

    .line 178
    const/16 v1, 0x2c

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 180
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/help/HelpActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x2d

    aput-boolean v4, v0, v2

    .line 181
    invoke-direct {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->createBackStack(Landroid/content/Intent;)V

    .line 182
    const/16 v1, 0x2e

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 184
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x2f

    aput-boolean v4, v0, v2

    .line 185
    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/TutorialActivity;->ACTION_SHOW_ANYWAYS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x30

    aput-boolean v4, v0, v2

    .line 186
    invoke-direct {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->createBackStack(Landroid/content/Intent;)V

    .line 187
    const/16 v1, 0x31

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 189
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x32

    aput-boolean v4, v0, v2

    .line 190
    const-string v2, ":android:show_fragment"

    const-class v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x33

    aput-boolean v4, v0, v2

    .line 191
    const-string v2, ":android:no_headers"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x34

    aput-boolean v4, v0, v2

    .line 192
    invoke-direct {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->createBackStack(Landroid/content/Intent;)V

    .line 193
    const/16 v1, 0x35

    aput-boolean v4, v0, v1

    goto/16 :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7f100118
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private createBackStack(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 145
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    .line 147
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    const/16 v2, 0x1e

    aput-boolean v3, v0, v2

    .line 148
    invoke-virtual {v1, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    const/16 v2, 0x1f

    aput-boolean v3, v0, v2

    .line 149
    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 150
    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    .line 156
    :goto_0
    const/16 v1, 0x23

    aput-boolean v3, v0, v1

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    .line 154
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->finish()V

    const/16 v1, 0x22

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private selectNavigationItem(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 130
    const/16 v2, 0x16

    aput-boolean v3, v4, v2

    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v2}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/16 v2, 0x17

    aput-boolean v3, v4, v2

    .line 132
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v2}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne p1, v2, :cond_0

    const/16 v2, 0x18

    aput-boolean v3, v4, v2

    move v2, v3

    :goto_1
    const/16 v5, 0x1a

    aput-boolean v3, v4, v5

    .line 133
    iget-object v5, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v5}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 130
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x1b

    aput-boolean v3, v4, v2

    goto :goto_0

    .line 132
    :cond_0
    const/16 v2, 0x19

    aput-boolean v3, v4, v2

    move v2, v1

    goto :goto_1

    .line 135
    :cond_1
    const/16 v1, 0x1c

    aput-boolean v3, v4, v1

    return-void
.end method


# virtual methods
.method protected getNavigationDrawerID()I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public goToNavigationItem(I)Z
    .locals 8

    .prologue
    const v7, 0x800003

    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->getNavigationDrawerID()I

    move-result v2

    if-ne p1, v2, :cond_0

    const/16 v2, 0xd

    aput-boolean v6, v1, v2

    .line 100
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v7}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 101
    const/16 v2, 0xe

    aput-boolean v6, v1, v2

    .line 124
    .local v0, "mainContent":Landroid/view/View;
    :goto_0
    return v6

    .line 105
    .end local v0    # "mainContent":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity$1;

    invoke-direct {v3, p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity$1;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;I)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v2, 0xf

    aput-boolean v6, v1, v2

    .line 114
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v7}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/16 v2, 0x10

    aput-boolean v6, v1, v2

    .line 116
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->selectNavigationItem(I)V

    const/16 v2, 0x11

    aput-boolean v6, v1, v2

    .line 119
    const v2, 0x7f100073

    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .restart local v0    # "mainContent":Landroid/view/View;
    if-nez v0, :cond_1

    const/16 v2, 0x12

    aput-boolean v6, v1, v2

    .line 124
    :goto_1
    const/16 v2, 0x15

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 120
    :cond_1
    const/16 v2, 0x13

    aput-boolean v6, v1, v2

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/16 v2, 0x14

    aput-boolean v6, v1, v2

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const v4, 0x800003

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 70
    const v0, 0x7f10007d

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 71
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    .line 73
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 79
    :goto_0
    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    return-void

    .line 77
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 56
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 64
    invoke-virtual {p0, v3, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->overridePendingTransition(II)V

    .line 65
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    .line 91
    invoke-virtual {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->goToNavigationItem(I)Z

    move-result v1

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 201
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x37

    aput-boolean v8, v7, v0

    .line 203
    const v0, 0x7f1000a5

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    const/16 v0, 0x38

    aput-boolean v8, v7, v0

    .line 204
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    aput-boolean v8, v7, v0

    .line 209
    :goto_0
    const v0, 0x7f10007d

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/16 v0, 0x3c

    aput-boolean v8, v7, v0

    .line 210
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f090072

    const v5, 0x7f090071

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    const/16 v1, 0x3d

    aput-boolean v8, v7, v1

    .line 212
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    const/16 v1, 0x3e

    aput-boolean v8, v7, v1

    .line 213
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    const/16 v0, 0x3f

    aput-boolean v8, v7, v0

    .line 216
    const v0, 0x7f10007f

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const/16 v0, 0x40

    aput-boolean v8, v7, v0

    .line 217
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    const/16 v0, 0x41

    aput-boolean v8, v7, v0

    .line 219
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->getNavigationDrawerID()I

    move-result v0

    invoke-direct {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->selectNavigationItem(I)V

    const/16 v0, 0x42

    aput-boolean v8, v7, v0

    .line 221
    const v0, 0x7f100073

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 222
    .local v6, "mainContent":Landroid/view/View;
    if-nez v6, :cond_1

    const/16 v0, 0x43

    aput-boolean v8, v7, v0

    .line 227
    :goto_1
    const/16 v0, 0x47

    aput-boolean v8, v7, v0

    return-void

    .line 204
    .end local v6    # "mainContent":Landroid/view/View;
    :cond_0
    const/16 v0, 0x3a

    aput-boolean v8, v7, v0

    .line 206
    invoke-virtual {p0, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/16 v0, 0x3b

    aput-boolean v8, v7, v0

    goto :goto_0

    .line 222
    .restart local v6    # "mainContent":Landroid/view/View;
    :cond_1
    const/16 v0, 0x44

    aput-boolean v8, v7, v0

    .line 224
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    const/16 v0, 0x45

    aput-boolean v8, v7, v0

    .line 225
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/16 v0, 0x46

    aput-boolean v8, v7, v0

    goto :goto_1
.end method
