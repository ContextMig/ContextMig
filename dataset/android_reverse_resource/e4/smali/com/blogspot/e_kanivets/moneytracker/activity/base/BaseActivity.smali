.class public abstract Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field protected progressDialog:Landroid/app/ProgressDialog;

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x62318ecf973ce6edL    # -4.129977048677861E-165

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v2, 0x12

    aput-boolean v3, v0, v2

    return-object v1

    .line 96
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected abstract getContentViewId()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected initData()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return v2
.end method

.method protected abstract initToolbar()Landroid/support/v7/widget/Toolbar;
.end method

.method protected initViews()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 54
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->initToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 55
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->getContentViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->initData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->initViews()V

    aput-boolean v2, v0, v2

    .line 39
    :goto_0
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->finish()V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected showToast(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 65
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public startProgress(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 72
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 73
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    if-nez v0, :cond_0

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    if-nez p1, :cond_1

    const/16 v2, 0xb

    aput-boolean v3, v1, v2

    .line 75
    :goto_1
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 76
    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    goto :goto_1
.end method

.method public stopProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
