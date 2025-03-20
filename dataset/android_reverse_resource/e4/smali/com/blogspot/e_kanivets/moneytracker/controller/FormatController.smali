.class public Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
.super Ljava/lang/Object;
.source "FormatController.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final PRECISION_INT:Ljava/lang/String; = "precision_int"

.field public static final PRECISION_MATH:Ljava/lang/String; = "precision_math"

.field public static final PRECISION_NONE:Ljava/lang/String; = "precision_none"

.field private static final dateAndTimeFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private static final dateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private static final timeFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# instance fields
.field private preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5069e79e3add02feL    # 2.3996528536413007E79

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/FormatController"

    const/16 v3, 0x1c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->dateAndTimeFormat:Ljava/text/SimpleDateFormat;

    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    .line 33
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public formatAmount(D)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v3

    .line 36
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readDisplayPrecision()Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    aput-boolean v1, v3, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatPrecisionMath(D)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    aput-boolean v1, v3, v2

    :goto_1
    return-object v0

    .line 36
    :sswitch_0
    const-string/jumbo v5, "precision_math"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aput-boolean v1, v3, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x3

    aput-boolean v1, v3, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "precision_int"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    aput-boolean v1, v3, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "precision_none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x6

    aput-boolean v1, v3, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 38
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatPrecisionMath(D)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 41
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatPrecisionInt(D)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 44
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatPrecisionNone(D)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 36
    :sswitch_data_0
    .sparse-switch
        -0x41e855d7 -> :sswitch_0
        -0x41e7ada7 -> :sswitch_2
        -0x12a47352 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public formatDate(J)Ljava/lang/String;
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    sget-object v1, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public formatDateAndTime(J)Ljava/lang/String;
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    sget-object v1, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->dateAndTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public formatExpense(DLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmpl-double v0, p1, v4

    if-lez v0, :cond_0

    const-string/jumbo v0, "+ "

    const/16 v3, 0x15

    aput-boolean v6, v1, v3

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatAmount(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17

    aput-boolean v6, v1, v2

    return-object v0

    :cond_0
    const-string/jumbo v0, "- "

    const/16 v3, 0x16

    aput-boolean v6, v1, v3

    goto :goto_0
.end method

.method public formatIncome(DLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_0

    const-string/jumbo v0, "+ "

    const/16 v3, 0x12

    aput-boolean v6, v1, v3

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatAmount(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    aput-boolean v6, v1, v2

    return-object v0

    :cond_0
    const-string/jumbo v0, "- "

    const/16 v3, 0x13

    aput-boolean v6, v1, v3

    goto :goto_0
.end method

.method public formatPrecisionInt(D)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    double-to-int v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method public formatPrecisionMath(D)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d"

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v8, v0, v2

    return-object v1
.end method

.method public formatPrecisionNone(D)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%.2f"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method public formatSignedAmount(D)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_0

    const-string/jumbo v0, "+ "

    const/16 v3, 0xf

    aput-boolean v6, v1, v3

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatAmount(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    aput-boolean v6, v1, v2

    return-object v0

    :cond_0
    const-string/jumbo v0, "- "

    const/16 v3, 0x10

    aput-boolean v6, v1, v3

    goto :goto_0
.end method

.method public formatTime(J)Ljava/lang/String;
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    sget-object v1, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->timeFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
