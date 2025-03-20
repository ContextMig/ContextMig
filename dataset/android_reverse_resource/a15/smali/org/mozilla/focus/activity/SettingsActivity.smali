.class public final Lorg/mozilla/focus/activity/SettingsActivity;
.super Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;
.source "SettingsActivity.kt"

# interfaces
.implements Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/activity/SettingsActivity$Companion;
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field public static final ACTIVITY_RESULT_LOCALE_CHANGED:I = 0x1

.field public static final Companion:Lorg/mozilla/focus/activity/SettingsActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/activity/SettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/activity/SettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/activity/SettingsActivity;->Companion:Lorg/mozilla/focus/activity/SettingsActivity$Companion;

    .line 19
    const/4 v0, 0x1

    sput v0, Lorg/mozilla/focus/activity/SettingsActivity;->ACTIVITY_RESULT_LOCALE_CHANGED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/focus/activity/SettingsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/activity/SettingsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/activity/SettingsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/activity/SettingsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public applyLocale()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/activity/SettingsActivity;->setTitle(I)V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/activity/SettingsActivity;->setContentView(I)V

    .line 26
    sget v0, Lorg/mozilla/focus/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/activity/SettingsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/activity/SettingsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 28
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 30
    :cond_0
    if-nez p1, :cond_1

    .line 31
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 32
    const v2, 0x7f090049

    invoke-static {}, Lorg/mozilla/focus/settings/SettingsFragment;->newInstance()Lorg/mozilla/focus/settings/SettingsFragment;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 39
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/SettingsActivity;->applyLocale()V

    .line 40
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47
    invoke-super {p0, p1}, Lorg/mozilla/focus/locale/LocaleAwareAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 42
    :goto_0
    return v0

    .line 44
    :pswitch_0
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/SettingsActivity;->onBackPressed()V

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public updateIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public updateTitle(I)V
    .locals 0
    .param p1, "titleResId"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/activity/SettingsActivity;->setTitle(I)V

    .line 56
    return-void
.end method
