.class public abstract Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;
.source "BaseBackActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "BaseBackActivity"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6e47af3ef8ce1d78L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected initToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 37
    const v3, 0x7f0900e7

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 38
    .local v1, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 40
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_0

    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    .line 43
    :goto_0
    const/4 v3, 0x5

    aput-boolean v4, v2, v3

    return-object v1

    .line 41
    :cond_0
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v3, 0x4

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 23
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 32
    invoke-super {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v3, 0x2

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 25
    :pswitch_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onBackPressed()V

    .line 26
    aput-boolean v0, v2, v0

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
