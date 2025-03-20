.class public Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
.super Ljava/lang/Object;
.source "RecurringExpense.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:D

.field private id:Ljava/lang/Long;

.field private modified:Z

.field private recurringDate:Ljava/util/Date;

.field private title:Ljava/lang/String;

.field private final type:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7b03c501120821e4L    # 3.674706441214868E284

    const-string v2, "com/benoitletondor/easybudgetapp/model/RecurringExpense"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 200
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense$1;

    invoke-direct {v1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense$1;-><init>()V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->modified:Z

    const/4 v0, 0x5

    aput-boolean v1, v3, v0

    .line 105
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->id:Ljava/lang/Long;

    const/4 v0, 0x6

    aput-boolean v1, v3, v0

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->title:Ljava/lang/String;

    const/4 v0, 0x7

    aput-boolean v1, v3, v0

    .line 107
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->recurringDate:Ljava/util/Date;

    const/16 v0, 0x8

    aput-boolean v1, v3, v0

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->amount:D

    const/16 v0, 0x9

    aput-boolean v1, v3, v0

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->modified:Z

    const/16 v0, 0xc

    aput-boolean v1, v3, v0

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->valueOf(Ljava/lang/String;)Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    move-result-object v0

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->type:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    .line 111
    const/16 v0, 0xd

    aput-boolean v1, v3, v0

    return-void

    .line 109
    :cond_0
    const/16 v0, 0xb

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;-><init>(Landroid/os/Parcel;)V

    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;Z)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 93
    invoke-direct/range {v0 .. v5}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;-><init>(Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;)V

    .line 95
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->id:Ljava/lang/Long;

    .line 96
    iput-boolean p7, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->modified:Z

    .line 97
    const/4 v0, 0x4

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v5, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->modified:Z

    .line 71
    const-wide/16 v2, 0x0

    cmpl-double v1, p2, v2

    if-nez v1, :cond_0

    aput-boolean v4, v0, v5

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "startAmount should be != 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    throw v1

    .line 76
    :cond_0
    iput-wide p2, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->amount:D

    .line 77
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->title:Ljava/lang/String;

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 78
    invoke-static {p4}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->recurringDate:Ljava/util/Date;

    .line 79
    iput-object p5, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->type:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    .line 80
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 197
    const/4 v1, 0x0

    const/16 v2, 0x1d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getAmount()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    iget-wide v2, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->amount:D

    const/16 v1, 0x10

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getId()Ljava/lang/Long;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->id:Ljava/lang/Long;

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getRecurringDate()Ljava/util/Date;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->recurringDate:Ljava/util/Date;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->title:Ljava/lang/String;

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getType()Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->type:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isModified()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->modified:Z

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v0

    .line 159
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->id:Ljava/lang/Long;

    .line 160
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->$jacocoInit()[Z

    move-result-object v2

    .line 186
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->id:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    const/16 v0, 0x15

    aput-boolean v1, v2, v0

    .line 187
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x16

    aput-boolean v1, v2, v0

    .line 188
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->recurringDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0x17

    aput-boolean v1, v2, v0

    .line 189
    iget-wide v4, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->amount:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    const/16 v0, 0x18

    aput-boolean v1, v2, v0

    .line 190
    iget-boolean v0, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->modified:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    const/16 v0, 0x1b

    aput-boolean v1, v2, v0

    .line 191
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->type:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    const/16 v0, 0x1c

    aput-boolean v1, v2, v0

    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x1a

    aput-boolean v1, v2, v3

    goto :goto_0
.end method
