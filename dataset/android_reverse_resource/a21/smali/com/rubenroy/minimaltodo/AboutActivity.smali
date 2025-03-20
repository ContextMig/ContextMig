.class public Lcom/rubenroy/minimaltodo/AboutActivity;
.super Landroid/support/v7/a/u;


# instance fields
.field i:Ljava/lang/String;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:Landroid/support/v7/widget/Toolbar;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/rubenroy/minimaltodo/AnalyticsApplication;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/a/u;-><init>()V

    const-string v0, "0.1"

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/AboutActivity;)Lcom/rubenroy/minimaltodo/AnalyticsApplication;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->n:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AboutActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->n:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->n:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    invoke-virtual {v0, p0}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;)V

    const-string v0, "com.avjindersekhon.themepref"

    invoke-virtual {p0, v0, v5}, Lcom/rubenroy/minimaltodo/AboutActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.avjindersekhon.savedtheme"

    const-string v2, "com.avjindersekon.lighttheme"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->i:Ljava/lang/String;

    const-string v1, "com.avjindersekon.darktheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OskarSchindler"

    const-string v1, "One"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AboutActivity;->setTheme(I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/a/u;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AboutActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AboutActivity;->getIntent()Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const v0, 0x7f0e006b

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->k:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e007d

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->l:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f0e006c

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->m:Landroid/widget/TextView;

    new-instance v2, Lcom/rubenroy/minimaltodo/a;

    invoke-direct {v2, p0}, Lcom/rubenroy/minimaltodo/a;-><init>(Lcom/rubenroy/minimaltodo/AboutActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AboutActivity;->l:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AboutActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AboutActivity;->f()Landroid/support/v7/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AboutActivity;->f()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AboutActivity;->f()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "OskarSchindler"

    const-string v1, "One"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AboutActivity;->setTheme(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
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
