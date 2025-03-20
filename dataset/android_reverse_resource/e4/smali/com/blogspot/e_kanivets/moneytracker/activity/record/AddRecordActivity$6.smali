.class synthetic Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$6;
.super Ljava/lang/Object;
.source "AddRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$blogspot$e_kanivets$moneytracker$activity$record$AddRecordActivity$Mode:[I

.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x24da2cbe892133d4L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$6"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$6;->$jacocoInit()[Z

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->values()[Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$6;->$SwitchMap$com$blogspot$e_kanivets$moneytracker$activity$record$AddRecordActivity$Mode:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v0, v1

    sget-object v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$6;->$SwitchMap$com$blogspot$e_kanivets$moneytracker$activity$record$AddRecordActivity$Mode:[I

    sget-object v2, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->MODE_ADD:Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity$Mode;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    aput-boolean v4, v0, v4

    :goto_0
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
