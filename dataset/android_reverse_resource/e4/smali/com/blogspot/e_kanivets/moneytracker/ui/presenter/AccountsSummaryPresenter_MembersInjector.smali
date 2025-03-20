.class public final Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "AccountsSummaryPresenter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;",
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

.field private final supertypeInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x63d581fdf775f1eL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$jacocoInit()[Z

    move-result-object v2

    .line 12
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x14

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$assertionsDisabled:Z

    const/16 v0, 0x16

    aput-boolean v1, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x15

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;",
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
            "Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 22
    :goto_0
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    .line 23
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 24
    :goto_1
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->rateControllerProvider:Ljavax/inject/Provider;

    .line 25
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 26
    :goto_2
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->accountControllerProvider:Ljavax/inject/Provider;

    .line 27
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 28
    :goto_3
    iput-object p4, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->currencyControllerProvider:Ljavax/inject/Provider;

    .line 29
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_8

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 30
    :goto_4
    iput-object p5, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->formatControllerProvider:Ljavax/inject/Provider;

    .line 31
    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    return-void

    .line 21
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

    .line 23
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

    .line 25
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

    .line 27
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

    .line 29
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
.end method

.method public static create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;",
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
            "Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$jacocoInit()[Z

    move-result-object v6

    .line 46
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    return-object v0
.end method


# virtual methods
.method public injectMembers(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$jacocoInit()[Z

    move-result-object v1

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Cannot inject members into a null reference"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-boolean v3, v1, v2

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->rateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    .line 40
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->accountControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    .line 41
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->currencyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    .line 42
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->formatControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    .line 43
    const/16 v0, 0x11

    aput-boolean v3, v1, v0

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->injectMembers(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;)V

    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
