.class public Lcom/rubenroy/minimaltodo/SettingsActivity;
.super Landroid/support/v7/a/u;


# instance fields
.field i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/SettingsActivity;->i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v0, "com.avjindersekhon.themepref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rubenroy/minimaltodo/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.avjindersekhon.savedtheme"

    const-string v2, "com.avjindersekon.lighttheme"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avjindersekon.lighttheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->setTheme(I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/a/u;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->setContentView(I)V

    const v0, 0x7f0e007d

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->f()Landroid/support/v7/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->f()Landroid/support/v7/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->f()Landroid/support/v7/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e007e

    new-instance v2, Lcom/rubenroy/minimaltodo/v;

    invoke-direct {v2}, Lcom/rubenroy/minimaltodo/v;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_2
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/SettingsActivity;->setTheme(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/a/u;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/b/ax;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/b/ax;->a(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/a/u;->onResume()V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/SettingsActivity;->i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    invoke-virtual {v0, p0}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;)V

    return-void
.end method
