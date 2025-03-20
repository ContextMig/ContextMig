.class public final Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;
.super Ljava/lang/Object;
.source "ControllerModule_ProvidesPreferenceControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final module:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5dae4d9e46d66666L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->$jacocoInit()[Z

    move-result-object v2

    .line 7
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->$assertionsDisabled:Z

    const/16 v0, 0xa

    aput-boolean v1, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->$assertionsDisabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 13
    :goto_0
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->module:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    .line 14
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 12
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
.end method

.method public static create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;)Ldagger/internal/Factory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;",
            ")",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;

    invoke-direct {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;-><init>(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;)V

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public get()Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->$jacocoInit()[Z

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->module:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->providesPreferenceController()Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    move-result-object v0

    .line 19
    .local v0, "provided":Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
    if-nez v0, :cond_0

    .line 20
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-boolean v4, v1, v3

    throw v2

    .line 22
    :cond_0
    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->get()Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
