.class public Lde/baumann/browser/Activity/Settings_Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Settings_Activity.java"


# instance fields
.field private fragment:Lde/baumann/browser/Fragment/Fragment_settings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x102

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "DB_CHANGE"

    .line 83
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lde/baumann/browser/Activity/Settings_Activity;->fragment:Lde/baumann/browser/Fragment/Fragment_settings;

    const-string p2, "DB_CHANGE"

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lde/baumann/browser/Fragment/Fragment_settings;->setDBChange(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Lde/baumann/browser/Unit/HelperUnit;->setTheme(Landroid/content/Context;)V

    const p1, 0x7f0b001b

    .line 28
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Settings_Activity;->setContentView(I)V

    const p1, 0x7f090105

    .line 29
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Settings_Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 30
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Settings_Activity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 31
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    new-instance p1, Lde/baumann/browser/Fragment/Fragment_settings;

    invoke-direct {p1}, Lde/baumann/browser/Fragment/Fragment_settings;-><init>()V

    iput-object p1, p0, Lde/baumann/browser/Activity/Settings_Activity;->fragment:Lde/baumann/browser/Fragment/Fragment_settings;

    .line 34
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lde/baumann/browser/Activity/Settings_Activity;->fragment:Lde/baumann/browser/Fragment/Fragment_settings;

    const v1, 0x7f09003d

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 71
    iget-object p1, p0, Lde/baumann/browser/Activity/Settings_Activity;->fragment:Lde/baumann/browser/Fragment/Fragment_settings;

    invoke-virtual {p1}, Lde/baumann/browser/Fragment/Fragment_settings;->isDBChange()Z

    move-result p1

    invoke-static {p1}, Lde/baumann/browser/Unit/IntentUnit;->setDBChange(Z)V

    .line 72
    iget-object p1, p0, Lde/baumann/browser/Activity/Settings_Activity;->fragment:Lde/baumann/browser/Fragment/Fragment_settings;

    invoke-virtual {p1}, Lde/baumann/browser/Fragment/Fragment_settings;->isSPChange()Z

    move-result p1

    invoke-static {p1}, Lde/baumann/browser/Unit/IntentUnit;->setSPChange(Z)V

    .line 73
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/Settings_Activity;->fragment:Lde/baumann/browser/Fragment/Fragment_settings;

    invoke-virtual {p1}, Lde/baumann/browser/Fragment/Fragment_settings;->isDBChange()Z

    move-result p1

    invoke-static {p1}, Lde/baumann/browser/Unit/IntentUnit;->setDBChange(Z)V

    .line 58
    iget-object p1, p0, Lde/baumann/browser/Activity/Settings_Activity;->fragment:Lde/baumann/browser/Fragment/Fragment_settings;

    invoke-virtual {p1}, Lde/baumann/browser/Fragment/Fragment_settings;->isSPChange()Z

    move-result p1

    invoke-static {p1}, Lde/baumann/browser/Unit/IntentUnit;->setSPChange(Z)V

    .line 59
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_Activity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 39
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "restart_changed"

    const/4 v2, 0x1

    .line 42
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 43
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_Activity;->finish()V

    :cond_0
    return-void
.end method
