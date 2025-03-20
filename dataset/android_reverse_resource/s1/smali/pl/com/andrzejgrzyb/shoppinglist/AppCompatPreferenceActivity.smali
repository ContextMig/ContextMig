.class public abstract Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AppCompatPreferenceActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x51ab30be3f20b1f4L    # -1.6737281143426237E-85

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity"

    const/16 v3, 0x1c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    .line 107
    :goto_0
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    const/16 v2, 0x1b

    aput-boolean v3, v0, v2

    return-object v1

    .line 104
    :cond_0
    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    .line 105
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public invalidateOptionsMenu()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 101
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 84
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    aput-boolean v2, v0, v2

    .line 26
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    .line 96
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V

    .line 97
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 33
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 72
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V

    .line 73
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 90
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    .line 91
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    .line 78
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    .line 52
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 57
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/app/AppCompatDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 42
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
