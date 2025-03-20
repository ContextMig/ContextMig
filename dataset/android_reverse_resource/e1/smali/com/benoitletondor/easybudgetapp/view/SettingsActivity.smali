.class public Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SettingsActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field protected static final APP_INVITE_REQUEST:I = 0x3e9

.field protected static final PREMIUM_ACTIVITY:I = 0x4e34

.field public static final SHOW_PREMIUM_INTENT_KEY:Ljava/lang/String; = "showPremium"

.field public static final USER_GONE_PREMIUM_INTENT:Ljava/lang/String; = "user.ispremium"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x662a632e7588bd42L    # 1.401536536286493E184

    const-string v2, "com/benoitletondor/easybudgetapp/view/SettingsActivity"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 85
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 110
    :goto_0
    return-void

    .line 90
    :cond_0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 92
    if-eq p2, v2, :cond_1

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 110
    :goto_1
    const/16 v0, 0x12

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 92
    :cond_1
    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 98
    invoke-static {p2, p3}, Lcom/google/android/gms/appinvite/AppInviteInvitation;->getInvitationIds(ILandroid/content/Intent;)[Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    .line 100
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/EasyBudget;

    array-length v2, v2

    invoke-virtual {v0, v2}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->trackNumberOfInvitsSent(I)V

    .line 101
    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    goto :goto_1

    .line 103
    :cond_2
    const/16 v0, 0x4e34

    if-eq p1, v0, :cond_3

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    goto :goto_1

    .line 105
    :cond_3
    if-eq p2, v2, :cond_4

    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    goto :goto_1

    :cond_4
    const/16 v0, 0x10

    aput-boolean v4, v1, v0

    .line 107
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "user.ispremium"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 58
    const v1, 0x7f040020

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->setContentView(I)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 60
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 61
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 70
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    const/4 v2, 0x5

    aput-boolean v1, v3, v2

    .line 72
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/SettingsActivity;->finish()V

    .line 73
    const/4 v2, 0x6

    aput-boolean v1, v3, v2

    .line 76
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    const/4 v4, 0x7

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0
.end method
