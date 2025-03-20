.class public abstract Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;
.super Ljava/lang/Object;
.source "AbstractItem.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x345e1fed82edd9d0L    # -2.1915032103925357E56

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;->id:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;->id:Ljava/lang/String;

    .line 20
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
