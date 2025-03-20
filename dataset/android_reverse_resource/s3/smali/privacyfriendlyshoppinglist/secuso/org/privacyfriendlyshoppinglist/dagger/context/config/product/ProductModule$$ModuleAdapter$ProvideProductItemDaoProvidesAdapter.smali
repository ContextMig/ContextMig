.class public final Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "ProductModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideProductItemDaoProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final module:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x650f74071dc71685L    # 6.372836057542324E178

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    const-string v1, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.product.persistence.ProductItemDao"

    const-string v2, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.dagger.context.config.product.ProductModule"

    const-string v3, "provideProductItemDao"

    invoke-direct {p0, v1, v4, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter;->module:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule;

    aput-boolean v4, v0, v5

    .line 64
    invoke-virtual {p0, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter;->setLibrary(Z)V

    .line 65
    aput-boolean v4, v0, v4

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter;->get()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public get()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule$$ModuleAdapter$ProvideProductItemDaoProvidesAdapter;->module:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/product/ProductModule;->provideProductItemDao()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/persistence/ProductItemDao;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
