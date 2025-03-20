.class public Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
.super Ljava/lang/Object;
.source "Period.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/Period;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ALL_TIME:Ljava/lang/String; = "all_time"

.field public static final TYPE_CUSTOM:Ljava/lang/String; = "custom"

.field public static final TYPE_DAY:Ljava/lang/String; = "day"

.field public static final TYPE_MONTH:Ljava/lang/String; = "month"

.field public static final TYPE_WEEK:Ljava/lang/String; = "week"

.field public static final TYPE_YEAR:Ljava/lang/String; = "year"

.field private static final dateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# instance fields
.field private first:Ljava/util/Date;

.field private last:Ljava/util/Date;

.field private type:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1b563f6e1163bad2L    # -8.152714982513569E176

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/entity/Period"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM, yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 44
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/Period$1;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period$1;-><init>()V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->first:Ljava/util/Date;

    .line 40
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->last:Ljava/util/Date;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->type:Ljava/lang/String;

    .line 42
    aput-boolean v4, v0, v4

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->first:Ljava/util/Date;

    .line 34
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->last:Ljava/util/Date;

    .line 35
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->type:Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v3

    .line 90
    instance-of v4, p1, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 91
    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    .line 92
    .local v0, "period":Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->first:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getFirst()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x9

    aput-boolean v2, v3, v4

    .line 93
    :goto_0
    const/16 v4, 0xc

    aput-boolean v2, v3, v4

    .line 92
    :goto_1
    const/16 v4, 0xd

    aput-boolean v2, v3, v4

    .line 94
    :goto_2
    return v1

    .line 92
    :cond_0
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->last:Ljava/util/Date;

    .line 93
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getLast()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0xa

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 94
    .end local v0    # "period":Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    :cond_2
    const/16 v4, 0xe

    aput-boolean v2, v3, v4

    goto :goto_2
.end method

.method public getFirst()Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->first:Ljava/util/Date;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getFirstDay()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    sget-object v1, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getFirst()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLast()Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->last:Ljava/util/Date;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLastDay()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    sget-object v1, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getLast()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->type:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->$jacocoInit()[Z

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->first:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->last:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
