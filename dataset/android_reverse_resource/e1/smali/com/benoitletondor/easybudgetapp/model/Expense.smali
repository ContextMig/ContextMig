.class public Lcom/benoitletondor/easybudgetapp/model/Expense;
.super Ljava/lang/Object;
.source "Expense.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:D

.field private date:Ljava/util/Date;

.field private id:Ljava/lang/Long;

.field private recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6c27fac42e78105aL

    const-string v2, "com/benoitletondor/easybudgetapp/model/Expense"

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 207
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/Expense$1;

    invoke-direct {v1}, Lcom/benoitletondor/easybudgetapp/model/Expense$1;-><init>()V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/Expense;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0x25

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 117
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->id:Ljava/lang/Long;

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->title:Ljava/lang/String;

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->amount:D

    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    .line 120
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->date:Ljava/util/Date;

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 121
    const-class v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    .line 122
    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/benoitletondor/easybudgetapp/model/Expense$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Landroid/os/Parcel;)V

    const/16 v1, 0x24

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->id:Ljava/lang/Long;

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "title is empty or null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    throw v1

    .line 99
    :cond_0
    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->title:Ljava/lang/String;

    .line 101
    const-wide/16 v2, 0x0

    cmpl-double v1, p3, v2

    if-nez v1, :cond_1

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "amount should be != 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    throw v1

    .line 106
    :cond_1
    iput-wide p3, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->amount:D

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 107
    invoke-static {p5}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->date:Ljava/util/Date;

    .line 108
    iput-object p6, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    .line 109
    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/util/Date;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, v2

    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Ljava/lang/Long;Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V

    .line 68
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Ljava/lang/Long;Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V

    .line 80
    aput-boolean v8, v0, v8

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 204
    const/4 v1, 0x0

    const/16 v2, 0x23

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getAmount()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 176
    iget-wide v2, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->amount:D

    const/16 v1, 0x19

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getAssociatedRecurringExpense()Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->date:Ljava/util/Date;

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getId()Ljava/lang/Long;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->id:Ljava/lang/Long;

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
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->title:Ljava/lang/String;

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isRecurring()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v2

    .line 149
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x14

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x13

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public isRevenue()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v2

    .line 186
    iget-wide v4, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->amount:D

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    const/16 v0, 0x1b

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x1d

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x1c

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public setAmount(D)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 181
    iput-wide p1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->amount:D

    .line 182
    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 3
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 171
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->date:Ljava/util/Date;

    .line 172
    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 133
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->id:Ljava/lang/Long;

    .line 134
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 160
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->title:Ljava/lang/String;

    .line 161
    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->id:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    const/16 v1, 0x1e

    aput-boolean v4, v0, v1

    .line 195
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    .line 196
    iget-wide v2, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->amount:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    const/16 v1, 0x20

    aput-boolean v4, v0, v1

    .line 197
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    .line 198
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/Expense;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 199
    const/16 v1, 0x22

    aput-boolean v4, v0, v1

    return-void
.end method
