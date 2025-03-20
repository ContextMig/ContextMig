.class public Lorg/secuso/privacyfriendlytodolist/view/Settings;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;
    }
.end annotation


# static fields
.field public static final DEFAULT_REMINDER_TIME_KEY:Ljava/lang/String; = "pref_default_reminder_time"

.field private static final TAG:Ljava/lang/String; = "Settings"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/Settings;->startActivity(Landroid/content/Intent;)V

    .line 178
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0056

    .line 53
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/Settings;->setContentView(I)V

    const p1, 0x7f09011d

    .line 55
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/Settings;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/Settings;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/Settings;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/Settings;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 66
    :cond_1
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/Settings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090082

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;

    invoke-direct {v1}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 81
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 75
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/Settings;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/Settings;->finish()V

    const/4 p1, 0x1

    return p1
.end method
