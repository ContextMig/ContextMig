.class public final enum Lchan/android/app/pocketnote/app/reminder/Reminder$Type;
.super Ljava/lang/Enum;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/reminder/Reminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lchan/android/app/pocketnote/app/reminder/Reminder$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum ALL_DAY:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

.field public static final enum PIN_TO_STATUS_BAR:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

.field public static final enum TIME_ALARM:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;


# instance fields
.field final description:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3d9ea9377f09a642L    # 6.9715049574904266E-12

    const-string v2, "chan/android/app/pocketnote/app/reminder/Reminder$Type"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->$jacocoInit()[Z

    move-result-object v0

    .line 135
    new-instance v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    const-string v2, "ALL_DAY"

    const-string v3, "All day"

    invoke-direct {v1, v2, v5, v3}, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->ALL_DAY:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 136
    new-instance v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    const-string v2, "TIME_ALARM"

    const-string v3, "Time alarm"

    invoke-direct {v1, v2, v4, v3}, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->TIME_ALARM:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 137
    new-instance v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    const-string v2, "PIN_TO_STATUS_BAR"

    const-string v3, "Pin to status bar"

    invoke-direct {v1, v2, v6, v3}, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->PIN_TO_STATUS_BAR:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    .line 134
    const/4 v1, 0x3

    new-array v1, v1, [Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->ALL_DAY:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    aput-object v2, v1, v5

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->TIME_ALARM:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    aput-object v2, v1, v4

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->PIN_TO_STATUS_BAR:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    aput-object v2, v1, v6

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->$VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

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
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput-object p3, p0, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->description:Ljava/lang/String;

    .line 143
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lchan/android/app/pocketnote/app/reminder/Reminder$Type;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->$jacocoInit()[Z

    move-result-object v1

    .line 134
    const-class v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lchan/android/app/pocketnote/app/reminder/Reminder$Type;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->$jacocoInit()[Z

    move-result-object v1

    .line 134
    sget-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->$VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    invoke-virtual {v0}, [Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->$jacocoInit()[Z

    move-result-object v0

    .line 147
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->description:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
