.class public Lde/baumann/browser/Activity/Settings_StartActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Settings_StartActivity.java"


# static fields
.field private static final DB_CHANGE:Ljava/lang/String; = "DB_CHANGE"


# instance fields
.field private final dbChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lde/baumann/browser/Activity/Settings_StartActivity;->dbChange:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {p0}, Lde/baumann/browser/Unit/HelperUnit;->setTheme(Landroid/content/Context;)V

    const p1, 0x7f0b001b

    .line 26
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Settings_StartActivity;->setContentView(I)V

    const p1, 0x7f090105

    .line 27
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Settings_StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 28
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/Settings_StartActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 29
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_StartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 31
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_StartActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lde/baumann/browser/Fragment/Fragment_settings_start;

    invoke-direct {v0}, Lde/baumann/browser/Fragment/Fragment_settings_start;-><init>()V

    const v1, 0x7f09003d

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_StartActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 57
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "DB_CHANGE"

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 59
    invoke-virtual {p0, p2, p1}, Lde/baumann/browser/Activity/Settings_StartActivity;->setResult(ILandroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_StartActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 42
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "DB_CHANGE"

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 46
    invoke-virtual {p0, v0, p1}, Lde/baumann/browser/Activity/Settings_StartActivity;->setResult(ILandroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lde/baumann/browser/Activity/Settings_StartActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
