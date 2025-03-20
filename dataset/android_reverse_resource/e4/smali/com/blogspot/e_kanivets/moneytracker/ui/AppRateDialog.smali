.class public Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;
.super Landroid/app/AlertDialog;
.source "AppRateDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final GP_MARKET:Ljava/lang/String; = "market://details?id="


# instance fields
.field private context:Landroid/content/Context;

.field preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x265e1783e664c46fL    # -5.919142613688869E123

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/AppRateDialog"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->context:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;)V

    .line 30
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 60
    :try_start_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    return-void

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 62
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public maybe()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090080
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->dismiss()V

    .line 49
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f0b003e

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->setContentView(I)V

    .line 36
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    .line 37
    aput-boolean v2, v0, v2

    return-void
.end method

.method public thanks()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900d9
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->appRated()V

    .line 54
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->dismiss()V

    .line 55
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public yes()V
    .locals 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09010e
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->appRated()V

    .line 43
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;->dismiss()V

    .line 44
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
