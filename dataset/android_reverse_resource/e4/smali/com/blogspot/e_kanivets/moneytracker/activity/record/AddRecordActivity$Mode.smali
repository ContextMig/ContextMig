.class public final enum Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;
.super Ljava/lang/Enum;
.source "AddRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum MODE_ADD:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

.field public static final enum MODE_EDIT:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7fc3363a6922f17fL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->$jacocoInit()[Z

    move-result-object v0

    .line 373
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    const-string/jumbo v2, "MODE_ADD"

    invoke-direct {v1, v2, v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_ADD:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    const-string/jumbo v2, "MODE_EDIT"

    invoke-direct {v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_EDIT:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    sget-object v2, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_ADD:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_EDIT:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    aput-object v2, v1, v3

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->$VALUES:[Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->$jacocoInit()[Z

    move-result-object v0

    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->$jacocoInit()[Z

    move-result-object v1

    .line 373
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->$jacocoInit()[Z

    move-result-object v1

    .line 373
    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->$VALUES:[Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    invoke-virtual {v0}, [Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method
