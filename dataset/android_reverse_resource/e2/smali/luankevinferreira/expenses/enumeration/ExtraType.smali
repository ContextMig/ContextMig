.class public final enum Lluankevinferreira/expenses/enumeration/ExtraType;
.super Ljava/lang/Enum;
.source "ExtraType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lluankevinferreira/expenses/enumeration/ExtraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lluankevinferreira/expenses/enumeration/ExtraType;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum EXPENSE:Lluankevinferreira/expenses/enumeration/ExtraType;


# instance fields
.field private final extra:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/enumeration/ExtraType;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x496d8e98fa99a34fL    # 5.2731488910736213E45

    const-string v2, "luankevinferreira/expenses/enumeration/ExtraType"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/enumeration/ExtraType;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lluankevinferreira/expenses/enumeration/ExtraType;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    new-instance v1, Lluankevinferreira/expenses/enumeration/ExtraType;

    const-string v2, "EXPENSE"

    const-string v3, "expense"

    invoke-direct {v1, v2, v4, v3}, Lluankevinferreira/expenses/enumeration/ExtraType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lluankevinferreira/expenses/enumeration/ExtraType;->EXPENSE:Lluankevinferreira/expenses/enumeration/ExtraType;

    .line 3
    new-array v1, v5, [Lluankevinferreira/expenses/enumeration/ExtraType;

    sget-object v2, Lluankevinferreira/expenses/enumeration/ExtraType;->EXPENSE:Lluankevinferreira/expenses/enumeration/ExtraType;

    aput-object v2, v1, v4

    sput-object v1, Lluankevinferreira/expenses/enumeration/ExtraType;->$VALUES:[Lluankevinferreira/expenses/enumeration/ExtraType;

    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/enumeration/ExtraType;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lluankevinferreira/expenses/enumeration/ExtraType;->extra:Ljava/lang/String;

    .line 11
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lluankevinferreira/expenses/enumeration/ExtraType;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lluankevinferreira/expenses/enumeration/ExtraType;->$jacocoInit()[Z

    move-result-object v1

    .line 3
    const-class v0, Lluankevinferreira/expenses/enumeration/ExtraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lluankevinferreira/expenses/enumeration/ExtraType;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lluankevinferreira/expenses/enumeration/ExtraType;
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/enumeration/ExtraType;->$jacocoInit()[Z

    move-result-object v1

    .line 3
    sget-object v0, Lluankevinferreira/expenses/enumeration/ExtraType;->$VALUES:[Lluankevinferreira/expenses/enumeration/ExtraType;

    invoke-virtual {v0}, [Lluankevinferreira/expenses/enumeration/ExtraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lluankevinferreira/expenses/enumeration/ExtraType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public getExtraAttribute()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/enumeration/ExtraType;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    iget-object v1, p0, Lluankevinferreira/expenses/enumeration/ExtraType;->extra:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
