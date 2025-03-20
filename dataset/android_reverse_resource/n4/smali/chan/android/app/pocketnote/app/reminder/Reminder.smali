.class public Lchan/android/app/pocketnote/app/reminder/Reminder;
.super Ljava/lang/Object;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/reminder/Reminder$Type;,
        Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final GSON:Lcom/google/gson/Gson;


# instance fields
.field private begin:J

.field private end:J

.field private repetition:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

.field private type:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

.field private whenIndex:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x9fb0ccc5ec58b44L    # -3.221146148848802E260

    const-string v2, "chan/android/app/pocketnote/app/reminder/Reminder"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/Reminder;->GSON:Lcom/google/gson/Gson;

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iput-object v1, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->repetition:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    .line 34
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lchan/android/app/pocketnote/app/reminder/Reminder$Type;Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;JJI)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iput-object v1, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->repetition:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    .line 19
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->type:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    .line 20
    iput-object p2, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->repetition:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    .line 21
    iput-wide p3, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->begin:J

    .line 22
    iput-wide p5, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->end:J

    .line 23
    iput p7, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->whenIndex:I

    .line 25
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->PIN_TO_STATUS_BAR:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    if-eq p1, v1, :cond_0

    aput-boolean v2, v0, v3

    .line 31
    :goto_0
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void

    .line 26
    :cond_0
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iput-object v1, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->repetition:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    .line 27
    iput-wide v4, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->begin:J

    .line 28
    iput-wide v4, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->end:J

    .line 29
    iput v3, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->whenIndex:I

    aput-boolean v2, v0, v2

    goto :goto_0
.end method

.method public static fromJson(Ljava/lang/String;)Lchan/android/app/pocketnote/app/reminder/Reminder;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v1

    .line 37
    sget-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder;->GSON:Lcom/google/gson/Gson;

    const-class v2, Lchan/android/app/pocketnote/app/reminder/Reminder;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/reminder/Reminder;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public static toJson(Lchan/android/app/pocketnote/app/reminder/Reminder;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/Reminder;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public getBegin()J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iget-wide v2, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->begin:J

    const/16 v1, 0x9

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getEnd()J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iget-wide v2, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->end:J

    const/16 v1, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getRepetition()Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->repetition:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getType()Lchan/android/app/pocketnote/app/reminder/Reminder$Type;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->type:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getWhenIndex()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget v1, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->whenIndex:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isExpired()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v4

    .line 92
    iget-object v5, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->type:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    sget-object v6, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->PIN_TO_STATUS_BAR:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    if-ne v5, v6, :cond_0

    .line 93
    const/16 v5, 0xc

    aput-boolean v3, v4, v5

    .line 104
    .local v0, "now":J
    :goto_0
    return v2

    .line 96
    .end local v0    # "now":J
    :cond_0
    iget-wide v6, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->end:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    const/16 v5, 0xd

    aput-boolean v3, v4, v5

    .line 100
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    .restart local v0    # "now":J
    iget-object v5, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->repetition:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    sget-object v6, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    if-ne v5, v6, :cond_4

    .line 102
    iget-wide v6, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->begin:J

    cmp-long v5, v0, v6

    if-lez v5, :cond_3

    const/16 v2, 0x10

    aput-boolean v3, v4, v2

    move v2, v3

    :goto_2
    const/16 v5, 0x12

    aput-boolean v3, v4, v5

    goto :goto_0

    .line 96
    .end local v0    # "now":J
    :cond_1
    iget-object v5, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->repetition:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    sget-object v6, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    if-ne v5, v6, :cond_2

    const/16 v5, 0xe

    aput-boolean v3, v4, v5

    goto :goto_1

    .line 97
    :cond_2
    const/16 v5, 0xf

    aput-boolean v3, v4, v5

    goto :goto_0

    .line 102
    .restart local v0    # "now":J
    :cond_3
    const/16 v5, 0x11

    aput-boolean v3, v4, v5

    goto :goto_2

    .line 104
    :cond_4
    iget-wide v6, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->end:J

    cmp-long v5, v0, v6

    if-lez v5, :cond_5

    const/16 v2, 0x13

    aput-boolean v3, v4, v2

    move v2, v3

    :goto_3
    const/16 v5, 0x15

    aput-boolean v3, v4, v5

    goto :goto_0

    :cond_5
    const/16 v5, 0x14

    aput-boolean v3, v4, v5

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reminder{type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->type:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", repetition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->repetition:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", begin=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->begin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lchan/android/app/pocketnote/app/reminder/Reminder;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
