.class public final Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;
.super Ljava/lang/Object;
.source "MainActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final accountControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ">;"
        }
    .end annotation
.end field

.field private final currencyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;",
            ">;"
        }
    .end annotation
.end field

.field private final formatControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;",
            ">;"
        }
    .end annotation
.end field

.field private final periodControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;",
            ">;"
        }
    .end annotation
.end field

.field private final preferenceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private final rateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;",
            ">;"
        }
    .end annotation
.end field

.field private final recordControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1c7b2c900d241854L    # -2.5150805048182274E171

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v2

    .line 15
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$assertionsDisabled:Z

    const/16 v0, 0x1f

    aput-boolean v1, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x1e

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 28
    :goto_0
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    .line 29
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 30
    :goto_1
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->recordControllerProvider:Ljavax/inject/Provider;

    .line 31
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 32
    :goto_2
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->rateControllerProvider:Ljavax/inject/Provider;

    .line 33
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 34
    :goto_3
    iput-object p4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->accountControllerProvider:Ljavax/inject/Provider;

    .line 35
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_8

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 36
    :goto_4
    iput-object p5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->currencyControllerProvider:Ljavax/inject/Provider;

    .line 37
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_a

    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    .line 38
    :goto_5
    iput-object p6, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->preferenceControllerProvider:Ljavax/inject/Provider;

    .line 39
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_c

    const/16 v1, 0x12

    aput-boolean v3, v0, v1

    .line 40
    :goto_6
    iput-object p7, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->periodControllerProvider:Ljavax/inject/Provider;

    .line 41
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_e

    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    .line 42
    :goto_7
    iput-object p8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->formatControllerProvider:Ljavax/inject/Provider;

    .line 43
    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    return-void

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    aput-boolean v3, v0, v3

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    throw v1

    .line 29
    :cond_2
    if-eqz p2, :cond_3

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    throw v1

    .line 31
    :cond_4
    if-eqz p3, :cond_5

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    throw v1

    .line 33
    :cond_6
    if-eqz p4, :cond_7

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    throw v1

    .line 35
    :cond_8
    if-eqz p5, :cond_9

    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    throw v1

    .line 37
    :cond_a
    if-eqz p6, :cond_b

    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    goto :goto_5

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/16 v2, 0x11

    aput-boolean v3, v0, v2

    throw v1

    .line 39
    :cond_c
    if-eqz p7, :cond_d

    const/16 v1, 0x13

    aput-boolean v3, v0, v1

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/16 v2, 0x14

    aput-boolean v3, v0, v2

    throw v1

    .line 41
    :cond_e
    if-eqz p8, :cond_f

    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/16 v2, 0x17

    aput-boolean v3, v0, v2

    throw v1
.end method

.method public static create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v9

    .line 61
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    return-object v0
.end method


# virtual methods
.method public injectMembers(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v1

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Cannot inject members into a null reference"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-boolean v3, v1, v2

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->recordControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    .line 52
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->rateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    .line 53
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->accountControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    .line 54
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->currencyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    .line 55
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->preferenceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    .line 56
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->periodControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->periodController:Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;

    .line 57
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->formatControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    .line 58
    const/16 v0, 0x1a

    aput-boolean v3, v1, v0

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->injectMembers(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
