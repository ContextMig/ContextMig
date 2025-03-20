.class Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
.super Ljava/lang/Object;
.source "MonthReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthNode"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private timestamp:J

.field private totalExpense:D

.field private totalIncome:D


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7dc62d11f5230a74L    # -6.169740316522593E-298

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoInit()[Z

    move-result-object v0

    .line 169
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode$1;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode$1;-><init>()V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoInit()[Z

    move-result-object v0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->timestamp:J

    .line 159
    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalExpense:D

    .line 160
    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalIncome:D

    .line 161
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoInit()[Z

    move-result-object v0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->timestamp:J

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalIncome:D

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalExpense:D

    .line 167
    aput-boolean v1, v0, v1

    return-void
.end method


# virtual methods
.method addExpense(D)V
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoInit()[Z

    move-result-object v0

    .line 186
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalExpense:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalExpense:D

    .line 187
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method addIncome(D)V
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoInit()[Z

    move-result-object v0

    .line 182
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalIncome:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalIncome:D

    .line 183
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoInit()[Z

    move-result-object v0

    .line 203
    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method getTimestamp()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoInit()[Z

    move-result-object v0

    .line 190
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->timestamp:J

    const/4 v1, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method getTotalExpense()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoInit()[Z

    move-result-object v0

    .line 198
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalExpense:D

    const/4 v1, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method getTotalIncome()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoInit()[Z

    move-result-object v0

    .line 194
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalIncome:D

    const/4 v1, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->$jacocoInit()[Z

    move-result-object v0

    .line 208
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->timestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalIncome:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 210
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->totalExpense:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 211
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
