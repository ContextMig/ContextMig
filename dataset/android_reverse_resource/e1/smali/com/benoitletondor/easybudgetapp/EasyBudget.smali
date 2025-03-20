.class public Lcom/benoitletondor/easybudgetapp/EasyBudget;
.super Landroid/app/Application;
.source "EasyBudget.java"

# interfaces
.implements Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver$IabBroadcastListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DEFAULT_LOW_MONEY_WARNING_AMOUNT:I = 0x64

.field public static final INTENT_IAB_STATUS_CHANGED:Ljava/lang/String; = "iabStatusChanged"

.field public static final INTENT_IAB_STATUS_KEY:Ljava/lang/String; = "iabKey"

.field public static final SKU_PREMIUM:Ljava/lang/String; = "premium"


# instance fields
.field private analyticsTracker:Lcom/google/android/gms/analytics/Tracker;

.field private iabBroadcastReceiver:Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;

.field private iabError:Ljava/lang/String;

.field private iabHelper:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

.field private volatile iabStatus:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

.field private inventoryListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3f1f0256c6499029L    # -34797.28829500049

    const-string v2, "com/benoitletondor/easybudgetapp/EasyBudget"

    const/16 v3, 0xc9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/benoitletondor/easybudgetapp/EasyBudget;Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->onAppForeground(Landroid/app/Activity;)V

    const/16 v1, 0xbf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->onAppBackground()V

    const/16 v1, 0xc0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$202(Lcom/benoitletondor/easybudgetapp/EasyBudget;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabError:Ljava/lang/String;

    const/16 v1, 0xc1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$300(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->setIabStatusAndNotify(Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)V

    const/16 v1, 0xc2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lcom/benoitletondor/easybudgetapp/EasyBudget;)Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabStatus:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const/16 v2, 0xc3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$402(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabStatus:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const/16 v1, 0xc8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$500(Lcom/benoitletondor/easybudgetapp/EasyBudget;)Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabBroadcastReceiver:Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;

    const/16 v2, 0xc5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$502(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;)Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabBroadcastReceiver:Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;

    const/16 v1, 0xc4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$600(Lcom/benoitletondor/easybudgetapp/EasyBudget;)Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->inventoryListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;

    const/16 v2, 0xc6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$700(Lcom/benoitletondor/easybudgetapp/EasyBudget;)Lcom/benoitletondor/easybudgetapp/iab/IabHelper;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabHelper:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    const/16 v2, 0xc7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private checkUpdateAction()V
    .locals 7

    .prologue
    const/16 v6, 0x2d

    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v1

    .line 539
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v2

    const-string v3, "appversion"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 540
    .local v0, "savedVersion":I
    if-gtz v0, :cond_0

    const/16 v2, 0x71

    aput-boolean v5, v1, v2

    .line 545
    :goto_0
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v2

    const-string v3, "appversion"

    invoke-virtual {v2, v3, v6}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putInt(Ljava/lang/String;I)V

    .line 546
    const/16 v2, 0x75

    aput-boolean v5, v1, v2

    return-void

    .line 540
    :cond_0
    if-ne v0, v6, :cond_1

    const/16 v2, 0x72

    aput-boolean v5, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x73

    aput-boolean v5, v1, v2

    .line 542
    invoke-direct {p0, v0, v6}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->onUpdate(II)V

    const/16 v2, 0x74

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method private hasRatingPopupBeenShownToday()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v5

    .line 410
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v6

    const-string v7, "rating_popup_last_auto_show"

    invoke-virtual {v6, v7, v10, v11}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 411
    .local v0, "lastRatingTS":J
    cmp-long v6, v0, v10

    if-lez v6, :cond_1

    const/16 v6, 0x4d

    aput-boolean v4, v5, v6

    .line 413
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0x4e

    aput-boolean v4, v5, v7

    .line 414
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x4f

    aput-boolean v4, v5, v8

    .line 416
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x50

    aput-boolean v4, v5, v8

    .line 417
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 419
    .local v2, "lastTimeDay":I
    if-ne v7, v2, :cond_0

    const/16 v3, 0x51

    aput-boolean v4, v5, v3

    move v3, v4

    :goto_0
    const/16 v6, 0x53

    aput-boolean v4, v5, v6

    .line 422
    .end local v2    # "lastTimeDay":I
    :goto_1
    return v3

    .line 419
    .restart local v2    # "lastTimeDay":I
    :cond_0
    const/16 v6, 0x52

    aput-boolean v4, v5, v6

    goto :goto_0

    .line 422
    .end local v2    # "lastTimeDay":I
    :cond_1
    const/16 v6, 0x54

    aput-boolean v4, v5, v6

    goto :goto_1
.end method

.method private init()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v3

    .line 207
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v4

    const-string v5, "init_date"

    invoke-virtual {v4, v5, v6, v7}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 208
    .local v0, "initDate":J
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    const/16 v4, 0x18

    aput-boolean v8, v3, v4

    .line 219
    :goto_0
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v4

    const-string v5, "local_id"

    invoke-virtual {v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "localId":Ljava/lang/String;
    if-nez v2, :cond_1

    const/16 v4, 0x1d

    aput-boolean v8, v3, v4

    .line 222
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1e

    aput-boolean v8, v3, v4

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generating local id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v4, 0x1f

    aput-boolean v8, v3, v4

    .line 225
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v4

    const-string v5, "local_id"

    invoke-virtual {v4, v5, v2}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x20

    aput-boolean v8, v3, v4

    .line 233
    :goto_1
    new-instance v4, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;-><init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V

    invoke-virtual {p0, v4}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 289
    const/16 v4, 0x22

    aput-boolean v8, v3, v4

    return-void

    .line 208
    .end local v2    # "localId":Ljava/lang/String;
    :cond_0
    const/16 v4, 0x19

    aput-boolean v8, v3, v4

    .line 210
    const-string v4, "Registering first launch date"

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v4, 0x1a

    aput-boolean v8, v3, v4

    .line 212
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v4

    const-string v5, "init_date"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putLong(Ljava/lang/String;J)V

    const/16 v4, 0x1b

    aput-boolean v8, v3, v4

    .line 213
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->setUserCurrency(Landroid/content/Context;Ljava/util/Currency;)V

    const/16 v4, 0x1c

    aput-boolean v8, v3, v4

    goto/16 :goto_0

    .line 229
    .restart local v2    # "localId":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v4, 0x21

    aput-boolean v8, v3, v4

    goto :goto_1
.end method

.method private onAppBackground()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 664
    const-string v1, "onAppBackground"

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 665
    const/16 v1, 0x9b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private onAppForeground(Landroid/app/Activity;)V
    .locals 14
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x6

    const/4 v4, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v5

    .line 599
    const-string v6, "onAppForeground"

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v6, 0x89

    aput-boolean v10, v5, v6

    .line 604
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v6

    const-string v7, "number_of_open"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v8

    const-string v9, "number_of_open"

    invoke-virtual {v8, v9, v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putInt(Ljava/lang/String;I)V

    .line 609
    const/16 v6, 0x8a

    aput-boolean v10, v5, v6

    .line 611
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v6

    const-string v7, "last_open_date"

    invoke-virtual {v6, v7, v12, v13}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 612
    .local v2, "lastOpen":J
    cmp-long v6, v2, v12

    if-lez v6, :cond_1

    const/16 v6, 0x8b

    aput-boolean v10, v5, v6

    .line 614
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0x8c

    aput-boolean v10, v5, v7

    .line 615
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x8d

    aput-boolean v10, v5, v7

    .line 617
    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x8e

    aput-boolean v10, v5, v8

    .line 619
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x8f

    aput-boolean v10, v5, v8

    .line 620
    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 622
    .local v0, "currentDay":I
    if-ne v7, v0, :cond_0

    const/16 v6, 0x90

    aput-boolean v10, v5, v6

    move v1, v4

    .line 626
    :goto_0
    const/16 v6, 0x92

    aput-boolean v10, v5, v6

    .line 633
    .end local v0    # "currentDay":I
    :goto_1
    if-nez v1, :cond_2

    const/16 v4, 0x94

    aput-boolean v10, v5, v4

    .line 641
    :goto_2
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v4

    const-string v6, "last_open_date"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v4, v6, v8, v9}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putLong(Ljava/lang/String;J)V

    const/16 v4, 0x97

    aput-boolean v10, v5, v4

    .line 646
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->showRatingPopupIfNeeded(Landroid/app/Activity;)V

    const/16 v4, 0x98

    aput-boolean v10, v5, v4

    .line 651
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->showPremiumPopupIfNeeded(Landroid/app/Activity;)V

    const/16 v4, 0x99

    aput-boolean v10, v5, v4

    .line 656
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->updateIAPStatusIfNeeded()V

    .line 657
    const/16 v4, 0x9a

    aput-boolean v10, v5, v4

    return-void

    .line 624
    .restart local v0    # "currentDay":I
    :cond_0
    const/4 v1, 0x1

    .local v1, "shouldIncrementDailyOpen":Z
    const/16 v6, 0x91

    aput-boolean v10, v5, v6

    goto :goto_0

    .line 629
    .end local v0    # "currentDay":I
    .end local v1    # "shouldIncrementDailyOpen":Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "shouldIncrementDailyOpen":Z
    const/16 v6, 0x93

    aput-boolean v10, v5, v6

    goto :goto_1

    .line 633
    .end local v1    # "shouldIncrementDailyOpen":Z
    :cond_2
    const/16 v6, 0x95

    aput-boolean v10, v5, v6

    .line 635
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v6

    const-string v7, "number_of_daily_open"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v8

    const-string v9, "number_of_daily_open"

    invoke-virtual {v8, v9, v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v7, v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0x96

    aput-boolean v10, v5, v4

    goto :goto_2
.end method

.method private onUpdate(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update detected, from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 559
    const/16 v1, 0x1c

    if-le p1, v1, :cond_0

    const/16 v1, 0x76

    aput-boolean v3, v0, v1

    .line 564
    :goto_0
    const/16 v1, 0x23

    if-eq p2, v1, :cond_1

    const/16 v1, 0x79

    aput-boolean v3, v0, v1

    .line 572
    :goto_1
    const/16 v1, 0x27

    if-eq p2, v1, :cond_4

    const/16 v1, 0x7f

    aput-boolean v3, v0, v1

    .line 584
    :goto_2
    const/16 v1, 0x2d

    if-eq p2, v1, :cond_7

    const/16 v1, 0x85

    aput-boolean v3, v0, v1

    .line 588
    :goto_3
    const/16 v1, 0x88

    aput-boolean v3, v0, v1

    return-void

    .line 559
    :cond_0
    const/16 v1, 0x77

    aput-boolean v3, v0, v1

    .line 561
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->setBatchUserPremium(Landroid/content/Context;)V

    const/16 v1, 0x78

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 564
    :cond_1
    const/16 v1, 0x7a

    aput-boolean v3, v0, v1

    .line 566
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->isUserPremium(Landroid/app/Application;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x7b

    aput-boolean v3, v0, v1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;->hasDailyReminderOptinNotifBeenShown(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x7c

    aput-boolean v3, v0, v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x7d

    aput-boolean v3, v0, v1

    .line 568
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;->showDailyReminderOptinNotif(Landroid/content/Context;)V

    const/16 v1, 0x7e

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 572
    :cond_4
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->hasUserSeenMonthlyReportNotif(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x80

    aput-boolean v3, v0, v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x81

    aput-boolean v3, v0, v1

    .line 574
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->isUserPremium(Landroid/app/Application;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x82

    aput-boolean v3, v0, v1

    .line 576
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->showPremiumNotif(Landroid/content/Context;)V

    const/16 v1, 0x83

    aput-boolean v3, v0, v1

    goto :goto_2

    .line 580
    :cond_6
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->showNotPremiumNotif(Landroid/content/Context;)V

    const/16 v1, 0x84

    aput-boolean v3, v0, v1

    goto :goto_2

    .line 584
    :cond_7
    const/16 v1, 0x86

    aput-boolean v3, v0, v1

    .line 586
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->show1_5UpdateNotif()V

    const/16 v1, 0x87

    aput-boolean v3, v0, v1

    goto :goto_3
.end method

.method private setIabStatusAndNotify(Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)V
    .locals 6
    .param p1    # Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v2

    .line 759
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabStatus:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    .line 762
    sget-object v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    if-ne p1, v0, :cond_0

    const/16 v0, 0xa7

    aput-boolean v1, v2, v0

    .line 764
    :goto_0
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v3

    const-string v4, "premium"

    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabStatus:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    sget-object v5, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    if-ne v0, v5, :cond_2

    const/16 v0, 0xaa

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xac

    aput-boolean v1, v2, v0

    .line 767
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "iabStatusChanged"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xad

    aput-boolean v1, v2, v3

    .line 768
    const-string v3, "iabKey"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v3, 0xae

    aput-boolean v1, v2, v3

    .line 770
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 771
    const/16 v0, 0xaf

    aput-boolean v1, v2, v0

    return-void

    .line 762
    :cond_0
    sget-object v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->NOT_PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa8

    aput-boolean v1, v2, v0

    goto :goto_2

    :cond_1
    const/16 v0, 0xa9

    aput-boolean v1, v2, v0

    goto :goto_0

    .line 764
    :cond_2
    const/4 v0, 0x0

    const/16 v5, 0xab

    aput-boolean v1, v2, v5

    goto :goto_1
.end method

.method private setUpBatchSDK()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 476
    new-instance v1, Lcom/batch/android/Config;

    const-string v2, "BATCH_DEV_API_KEY"

    invoke-direct {v1, v2}, Lcom/batch/android/Config;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/batch/android/Batch;->setConfig(Lcom/batch/android/Config;)V

    const/16 v1, 0x67

    aput-boolean v3, v0, v1

    .line 477
    const-string v1, "YOUR_GCM_SENDER_ID"

    invoke-static {v1}, Lcom/batch/android/Batch$Push;->setGCMSenderId(Ljava/lang/String;)V

    const/16 v1, 0x68

    aput-boolean v3, v0, v1

    .line 478
    invoke-static {v3}, Lcom/batch/android/Batch$Push;->setManualDisplay(Z)V

    const/16 v1, 0x69

    aput-boolean v3, v0, v1

    .line 479
    const v1, 0x7f020098

    invoke-static {v1}, Lcom/batch/android/Batch$Push;->setSmallIconResourceId(I)V

    const/16 v1, 0x6a

    aput-boolean v3, v0, v1

    .line 480
    const v1, 0x7f0e0005

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lcom/batch/android/Batch$Push;->setNotificationsColor(I)V

    const/16 v1, 0x6b

    aput-boolean v3, v0, v1

    .line 483
    const-class v1, Lcom/batch/android/PushNotificationType;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const/16 v2, 0x6c

    aput-boolean v3, v0, v2

    .line 484
    sget-object v2, Lcom/batch/android/PushNotificationType;->VIBRATE:Lcom/batch/android/PushNotificationType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    const/16 v2, 0x6d

    aput-boolean v3, v0, v2

    .line 485
    sget-object v2, Lcom/batch/android/PushNotificationType;->SOUND:Lcom/batch/android/PushNotificationType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    const/16 v2, 0x6e

    aput-boolean v3, v0, v2

    .line 486
    invoke-static {v1}, Lcom/batch/android/Batch$Push;->setNotificationsType(Ljava/util/EnumSet;)V

    const/16 v1, 0x6f

    aput-boolean v3, v0, v1

    .line 488
    new-instance v1, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;

    invoke-direct {v1, p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;-><init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 532
    const/16 v1, 0x70

    aput-boolean v3, v0, v1

    return-void
.end method

.method private setupIab()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v1

    .line 674
    :try_start_0
    sget-object v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->INITIALIZING:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->setIabStatusAndNotify(Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)V

    const/16 v0, 0x9c

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 676
    new-instance v0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    const-string v2, "YOUR_GOOGLE_PLAY_LICENCE_KEY"

    invoke-direct {v0, p0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabHelper:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    const/16 v0, 0x9d

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 677
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabHelper:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->enableDebugLogging(Z)V

    const/16 v0, 0x9e

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 679
    new-instance v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;

    invoke-direct {v0, p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;-><init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->inventoryListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;

    const/16 v0, 0x9f

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 706
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabHelper:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;-><init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V

    invoke-virtual {v0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->startSetup(Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    const/16 v0, 0xa0

    aput-boolean v3, v1, v0

    .line 742
    :goto_0
    const/16 v0, 0xa4

    aput-boolean v3, v1, v0

    return-void

    .line 737
    :catch_0
    move-exception v0

    const/16 v2, 0xa1

    aput-boolean v3, v1, v2

    .line 739
    const-string v2, "Error while checking iab status"

    invoke-static {v2, v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0xa2

    aput-boolean v3, v1, v0

    .line 740
    sget-object v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->ERROR:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->setIabStatusAndNotify(Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)V

    const/16 v0, 0xa3

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method private shouldShowPremiumPopup()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v4

    .line 432
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v3

    const-string v5, "premium_popup_last_auto_show"

    invoke-virtual {v3, v5, v8, v9}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 433
    .local v0, "lastPremiumTS":J
    cmp-long v3, v0, v8

    if-nez v3, :cond_0

    .line 435
    const/16 v3, 0x55

    aput-boolean v2, v4, v3

    .line 447
    :goto_0
    return v2

    .line 439
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v5, 0x56

    aput-boolean v2, v4, v5

    .line 440
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v5, 0x57

    aput-boolean v2, v4, v5

    .line 441
    const/16 v5, 0xa

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0x58

    aput-boolean v2, v4, v5

    .line 442
    const/16 v5, 0xc

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0x59

    aput-boolean v2, v4, v5

    .line 443
    const/16 v5, 0xd

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0x5a

    aput-boolean v2, v4, v5

    .line 444
    const/16 v5, 0xe

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0x5b

    aput-boolean v2, v4, v5

    .line 445
    const/4 v5, 0x6

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    const/16 v5, 0x5c

    aput-boolean v2, v4, v5

    .line 447
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    const/16 v5, 0x5d

    aput-boolean v2, v4, v5

    move v2, v3

    goto :goto_0
.end method

.method private show1_5UpdateNotif()V
    .locals 7

    .prologue
    const v4, 0x7f0800a9

    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 455
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020098

    const/16 v3, 0x5e

    aput-boolean v6, v0, v3

    .line 456
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x5f

    aput-boolean v6, v0, v2

    .line 457
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x60

    aput-boolean v6, v0, v2

    .line 458
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const/16 v3, 0x61

    aput-boolean v6, v0, v3

    .line 459
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x62

    aput-boolean v6, v0, v2

    .line 460
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0005

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x63

    aput-boolean v6, v0, v2

    .line 461
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    const/16 v5, 0x64

    aput-boolean v6, v0, v5

    .line 462
    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x65

    aput-boolean v6, v0, v2

    .line 468
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    const/16 v3, 0xfae

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 469
    const/16 v1, 0x66

    aput-boolean v6, v0, v1

    return-void
.end method

.method private showPremiumPopupIfNeeded(Landroid/app/Activity;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v2

    .line 330
    :try_start_0
    instance-of v1, p1, Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    if-eqz v1, :cond_0

    const/16 v1, 0x31

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 335
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v3, "premium_popup_complete"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x33

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 340
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->isUserPremium(Landroid/app/Application;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x35

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 345
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->hasUserCompleteRating(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x37

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 350
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->getUserStep(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    move-result-object v0

    .line 351
    .local v0, "currentStep":Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    sget-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    if-ne v0, v1, :cond_4

    const/16 v1, 0x39

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 355
    :goto_0
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->hasRatingPopupBeenShownToday()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x3d

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_1
    const/16 v1, 0x49

    aput-boolean v7, v2, v1

    .line 401
    :goto_2
    const/16 v1, 0x4c

    aput-boolean v7, v2, v1

    :goto_3
    return-void

    .line 332
    .end local v0    # "currentStep":Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    :cond_0
    const/16 v1, 0x32

    aput-boolean v7, v2, v1

    goto :goto_3

    .line 337
    :cond_1
    const/16 v1, 0x34

    aput-boolean v7, v2, v1

    goto :goto_3

    .line 342
    :cond_2
    const/16 v1, 0x36

    aput-boolean v7, v2, v1

    goto :goto_3

    .line 347
    :cond_3
    const/16 v1, 0x38

    aput-boolean v7, v2, v1

    goto :goto_3

    .line 351
    .restart local v0    # "currentStep":Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    :cond_4
    :try_start_1
    sget-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE_NOT_RATED:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    if-ne v0, v1, :cond_5

    const/16 v1, 0x3a

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v1

    const/16 v3, 0x4a

    aput-boolean v7, v2, v3

    .line 399
    const-string v3, "Error while showing become premium popup"

    invoke-static {v3, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x4b

    aput-boolean v7, v2, v1

    goto :goto_2

    .line 351
    :cond_5
    :try_start_2
    sget-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE_RATED:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3b

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    goto :goto_1

    :cond_6
    const/16 v1, 0x3c

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    goto :goto_0

    .line 355
    :cond_7
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->shouldShowPremiumPopup()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x3e

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    goto :goto_1

    :cond_8
    const/16 v1, 0x3f

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 357
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v3, "premium_popup_last_auto_show"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0x40

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 359
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080079

    const/16 v4, 0x41

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 360
    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f080076

    const/16 v4, 0x42

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 361
    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f080075

    new-instance v4, Lcom/benoitletondor/easybudgetapp/EasyBudget$4;

    invoke-direct {v4, p0, p1}, Lcom/benoitletondor/easybudgetapp/EasyBudget$4;-><init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;Landroid/app/Activity;)V

    const/16 v5, 0x43

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 362
    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f080078

    new-instance v4, Lcom/benoitletondor/easybudgetapp/EasyBudget$3;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget$3;-><init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V

    const/16 v5, 0x44

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 374
    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f080077

    new-instance v4, Lcom/benoitletondor/easybudgetapp/EasyBudget$2;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget$2;-><init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V

    const/16 v5, 0x45

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 382
    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v3, 0x46

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 391
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/16 v3, 0x47

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 393
    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->centerDialogButtons(Landroid/support/v7/app/AlertDialog;)V

    const/16 v1, 0x48

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private showRatingPopupIfNeeded(Landroid/app/Activity;)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v3

    .line 301
    :try_start_0
    instance-of v2, p1, Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    if-eqz v2, :cond_0

    const/16 v2, 0x23

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 307
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v2

    const-string v4, "number_of_daily_open"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 308
    .local v0, "dailyOpens":I
    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    const/16 v2, 0x26

    const/4 v4, 0x1

    aput-boolean v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    const/16 v2, 0x2d

    aput-boolean v8, v3, v2

    .line 324
    :goto_1
    const/16 v2, 0x30

    aput-boolean v8, v3, v2

    :goto_2
    return-void

    .line 301
    .end local v0    # "dailyOpens":I
    :cond_0
    const/16 v2, 0x24

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v3, v2

    .line 303
    const-string v2, "Not showing rating popup cause app is not opened by the MainActivity"

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    const/16 v2, 0x25

    aput-boolean v8, v3, v2

    goto :goto_2

    .line 308
    .restart local v0    # "dailyOpens":I
    :cond_1
    const/16 v2, 0x27

    const/4 v4, 0x1

    :try_start_2
    aput-boolean v4, v3, v2

    .line 310
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->hasRatingPopupBeenShownToday()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x28

    const/4 v4, 0x1

    aput-boolean v4, v3, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v2

    const/16 v4, 0x2e

    aput-boolean v8, v3, v4

    .line 322
    const-string v4, "Error while showing rating popup"

    invoke-static {v4, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0x2f

    aput-boolean v8, v3, v2

    goto :goto_1

    .line 310
    :cond_2
    const/16 v2, 0x29

    const/4 v4, 0x1

    :try_start_3
    aput-boolean v4, v3, v2

    .line 312
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-direct {v2, p1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;-><init>(Landroid/app/Activity;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->show(Z)Z

    move-result v1

    .line 313
    .local v1, "shown":Z
    if-nez v1, :cond_3

    const/16 v2, 0x2a

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    goto :goto_0

    :cond_3
    const/16 v2, 0x2b

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 315
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v2

    const-string v4, "rating_popup_last_auto_show"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x2c

    const/4 v4, 0x1

    aput-boolean v4, v3, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private updateIAPStatusIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIAPStatusIfNeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabStatus:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabStatus:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    sget-object v2, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->NOT_PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    if-eq v1, v2, :cond_0

    const/16 v1, 0xb0

    aput-boolean v3, v0, v1

    .line 785
    :goto_0
    const/16 v1, 0xb4

    aput-boolean v3, v0, v1

    return-void

    .line 780
    :cond_0
    const/16 v1, 0xb1

    aput-boolean v3, v0, v1

    .line 782
    sget-object v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->CHECKING:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-direct {p0, v1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->setIabStatusAndNotify(Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)V

    const/16 v1, 0xb2

    aput-boolean v3, v0, v1

    .line 783
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabHelper:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->inventoryListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->queryInventoryAsync(Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;)V

    const/16 v1, 0xb3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 884
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabHelper:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    const/16 v2, 0xbe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public launchPremiumPurchaseFlow(Landroid/app/Activity;Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v6

    .line 816
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabStatus:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    sget-object v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->NOT_PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    if-eq v0, v1, :cond_1

    .line 818
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabStatus:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    sget-object v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->ERROR:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb9

    aput-boolean v7, v6, v0

    .line 820
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabError:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;->onPurchaseError(Ljava/lang/String;)V

    const/16 v0, 0xba

    aput-boolean v7, v6, v0

    .line 827
    :goto_0
    const/16 v0, 0xbc

    aput-boolean v7, v6, v0

    .line 870
    :goto_1
    return-void

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Runtime error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabStatus:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;->onPurchaseError(Ljava/lang/String;)V

    const/16 v0, 0xbb

    aput-boolean v7, v6, v0

    goto :goto_0

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabHelper:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    const-string v2, "premium"

    const/16 v3, 0x2711

    new-instance v4, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;

    invoke-direct {v4, p0, p2}, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;-><init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;)V

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 870
    const/16 v0, 0xbd

    aput-boolean v7, v6, v0

    goto :goto_1
.end method

.method public launchRedeemPromocodeFlow(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v3

    .line 797
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/redeem?code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb5

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 798
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    const/16 v1, 0xb6

    aput-boolean v0, v3, v1

    .line 804
    :goto_0
    return v0

    .line 801
    :catch_0
    move-exception v2

    const/16 v4, 0xb7

    aput-boolean v0, v3, v4

    .line 803
    const-string v4, "Error while redeeming promocode"

    invoke-static {v1, v4, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    const/16 v2, 0xb8

    aput-boolean v0, v3, v2

    move v0, v1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    aput-boolean v4, v0, v4

    .line 130
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->init()V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 133
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->checkUpdateAction()V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 144
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->setUpBatchSDK()V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 147
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 148
    invoke-virtual {v1, v4}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    .line 154
    const/high16 v2, 0x7f070000

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->analyticsTracker:Lcom/google/android/gms/analytics/Tracker;

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 157
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->setupIab()V

    .line 158
    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabBroadcastReceiver:Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;

    if-nez v1, :cond_0

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 168
    :goto_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 169
    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    return-void

    .line 163
    :cond_0
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 165
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabBroadcastReceiver:Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public receivedBroadcast()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v0

    .line 748
    const-string v1, "iab: Received broadcast notification. Querying inventory."

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v1, 0xa5

    aput-boolean v3, v0, v1

    .line 749
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->iabHelper:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->inventoryListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->queryInventoryAsync(Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;)V

    .line 750
    const/16 v1, 0xa6

    aput-boolean v3, v0, v1

    return-void
.end method

.method public trackInvitationId(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->analyticsTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    const-string v3, "referral-appinvites"

    const/16 v4, 0xe

    aput-boolean v5, v1, v4

    .line 179
    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    const/16 v3, 0xf

    aput-boolean v5, v1, v3

    .line 180
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    const/16 v3, 0x10

    aput-boolean v5, v1, v3

    .line 178
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 181
    const/16 v0, 0x11

    aput-boolean v5, v1, v0

    return-void
.end method

.method public trackNumberOfInvitsSent(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->$jacocoInit()[Z

    move-result-object v2

    .line 190
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v3, "number_of_invitations"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, "invitSent":I
    add-int/2addr v0, p1

    const/16 v1, 0x12

    aput-boolean v6, v2, v1

    .line 192
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v3, "number_of_invitations"

    invoke-virtual {v1, v3, v0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x13

    aput-boolean v6, v2, v1

    .line 194
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget;->analyticsTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    int-to-float v4, v0

    const/16 v5, 0x14

    aput-boolean v6, v2, v5

    .line 195
    invoke-virtual {v1, v6, v4}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomMetric(IF)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    const/16 v4, 0x15

    aput-boolean v6, v2, v4

    .line 196
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    const/16 v4, 0x16

    aput-boolean v6, v2, v4

    .line 194
    invoke-virtual {v3, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 197
    const/16 v1, 0x17

    aput-boolean v6, v2, v1

    return-void
.end method
