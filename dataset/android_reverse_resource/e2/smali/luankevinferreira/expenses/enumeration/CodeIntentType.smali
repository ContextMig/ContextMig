.class public final enum Lluankevinferreira/expenses/enumeration/CodeIntentType;
.super Ljava/lang/Enum;
.source "CodeIntentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lluankevinferreira/expenses/enumeration/CodeIntentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lluankevinferreira/expenses/enumeration/CodeIntentType;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum REQUEST_DETAIL_EXPENSES:Lluankevinferreira/expenses/enumeration/CodeIntentType;

.field public static final enum REQUEST_EDIT_EXPENSE:Lluankevinferreira/expenses/enumeration/CodeIntentType;

.field public static final enum REQUEST_NEW_EXPENSE:Lluankevinferreira/expenses/enumeration/CodeIntentType;

.field public static final enum STATUS_ERROR:Lluankevinferreira/expenses/enumeration/CodeIntentType;

.field public static final enum STATUS_OK:Lluankevinferreira/expenses/enumeration/CodeIntentType;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/enumeration/CodeIntentType;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x54aa2b9b8ed265e4L    # 7.15513754098367E99

    const-string v2, "luankevinferreira/expenses/enumeration/CodeIntentType"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/enumeration/CodeIntentType;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    invoke-static {}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    new-instance v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;

    const-string v2, "STATUS_OK"

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v6, v3}, Lluankevinferreira/expenses/enumeration/CodeIntentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_OK:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    aput-boolean v4, v0, v5

    .line 6
    new-instance v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;

    const-string v2, "STATUS_ERROR"

    const/16 v3, 0x1f4

    invoke-direct {v1, v2, v4, v3}, Lluankevinferreira/expenses/enumeration/CodeIntentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_ERROR:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 7
    new-instance v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;

    const-string v2, "REQUEST_NEW_EXPENSE"

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v7, v3}, Lluankevinferreira/expenses/enumeration/CodeIntentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_NEW_EXPENSE:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 8
    new-instance v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;

    const-string v2, "REQUEST_EDIT_EXPENSE"

    const/16 v3, 0x3e9

    invoke-direct {v1, v2, v8, v3}, Lluankevinferreira/expenses/enumeration/CodeIntentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_EDIT_EXPENSE:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 9
    new-instance v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;

    const-string v2, "REQUEST_DETAIL_EXPENSES"

    const/16 v3, 0x3ea

    invoke-direct {v1, v2, v5, v3}, Lluankevinferreira/expenses/enumeration/CodeIntentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_DETAIL_EXPENSES:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    .line 3
    const/4 v1, 0x5

    new-array v1, v1, [Lluankevinferreira/expenses/enumeration/CodeIntentType;

    sget-object v2, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_OK:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    aput-object v2, v1, v6

    sget-object v2, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_ERROR:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    aput-object v2, v1, v4

    sget-object v2, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_NEW_EXPENSE:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    aput-object v2, v1, v7

    sget-object v2, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_EDIT_EXPENSE:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    aput-object v2, v1, v8

    sget-object v2, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_DETAIL_EXPENSES:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    aput-object v2, v1, v5

    sput-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->$VALUES:[Lluankevinferreira/expenses/enumeration/CodeIntentType;

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lluankevinferreira/expenses/enumeration/CodeIntentType;->code:I

    .line 15
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lluankevinferreira/expenses/enumeration/CodeIntentType;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->$jacocoInit()[Z

    move-result-object v1

    .line 3
    const-class v0, Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lluankevinferreira/expenses/enumeration/CodeIntentType;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lluankevinferreira/expenses/enumeration/CodeIntentType;
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->$jacocoInit()[Z

    move-result-object v1

    .line 3
    sget-object v0, Lluankevinferreira/expenses/enumeration/CodeIntentType;->$VALUES:[Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v0}, [Lluankevinferreira/expenses/enumeration/CodeIntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lluankevinferreira/expenses/enumeration/CodeIntentType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    iget v1, p0, Lluankevinferreira/expenses/enumeration/CodeIntentType;->code:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
