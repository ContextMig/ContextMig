.class public final Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;
.super Ljava/lang/Object;
.source "ExchangeRateAdapter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final transient synthetic $jacocoData:[Z


# instance fields
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

.field private final supertypeInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1247f23815c4e379L    # -3.3964178255115033E220

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->$jacocoInit()[Z

    move-result-object v2

    .line 9
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xb

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->$assertionsDisabled:Z

    const/16 v0, 0xd

    aput-boolean v1, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xc

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 16
    :goto_0
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    .line 17
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->$assertionsDisabled:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 18
    :goto_1
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->formatControllerProvider:Ljavax/inject/Provider;

    .line 19
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void

    .line 15
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

    .line 17
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
.end method

.method public static create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;)V

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public injectMembers(Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->$jacocoInit()[Z

    move-result-object v1

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Cannot inject members into a null reference"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    throw v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->formatControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    .line 28
    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->injectMembers(Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;)V

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
