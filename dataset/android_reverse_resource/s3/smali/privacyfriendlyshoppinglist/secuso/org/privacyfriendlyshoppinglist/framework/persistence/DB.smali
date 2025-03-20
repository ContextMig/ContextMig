.class public final enum Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;
.super Ljava/lang/Enum;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum APP:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

.field public static final enum TEST:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;


# instance fields
.field private dbName:Ljava/lang/String;

.field private dbVersion:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x28c6400c51c7fcd7L    # 2.891247767685154E-112

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    const-string v2, "TEST"

    const-string v3, "ShoppingList_test.db"

    invoke-direct {v1, v2, v6, v3, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->TEST:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    .line 11
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    const-string v2, "APP"

    const-string v3, "ShippingList.db"

    const/4 v4, 0x7

    invoke-direct {v1, v2, v5, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->APP:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    .line 8
    const/4 v1, 0x2

    new-array v1, v1, [Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->TEST:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    aput-object v2, v1, v6

    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->APP:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    aput-object v2, v1, v5

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->$VALUES:[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->dbName:Ljava/lang/String;

    .line 19
    iput p4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->dbVersion:I

    .line 20
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->$jacocoInit()[Z

    move-result-object v1

    .line 8
    const-class v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->$jacocoInit()[Z

    move-result-object v1

    .line 8
    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->$VALUES:[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    invoke-virtual {v0}, [Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public getDbName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->dbName:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDbVersion()I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;->dbVersion:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
