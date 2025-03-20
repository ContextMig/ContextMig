.class public Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
.super Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;
.source "Record.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_EXPENSE:I = 0x1

.field public static final TYPE_INCOME:I


# instance fields
.field private final account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

.field private final category:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

.field private final currency:Ljava/lang/String;

.field private final decimals:J

.field private final price:J

.field private final time:J

.field private final title:Ljava/lang/String;

.field private final type:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xdfb1b4474d5b6e3L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/entity/data/Record"

    const/16 v3, 0x27

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record$1;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record$1;-><init>()V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;DLcom/blogspot/e_kanivets/moneytracker/entity/data/Account;Ljava/lang/String;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 68
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->id:J

    .line 69
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->time:J

    .line 70
    iput p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->type:I

    .line 71
    iput-object p4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->title:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->category:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .line 73
    iput-object p8, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 74
    iput-object p9, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->currency:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, p6, p7}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getLong(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->price:J

    .line 76
    invoke-virtual {p0, p6, p7}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getDecimal(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    .line 77
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;JJJLjava/lang/String;J)V
    .locals 19

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v4

    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 29
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->id:J

    .line 30
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->time:J

    .line 31
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->type:I

    .line 32
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->title:Ljava/lang/String;

    .line 33
    new-instance v5, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    const/4 v6, 0x0

    move-wide/from16 v0, p7

    invoke-direct {v5, v0, v1, v6}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->category:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .line 34
    move-wide/from16 v0, p9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->price:J

    .line 35
    new-instance v5, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    const/16 v16, 0x0

    const/16 v17, -0x1

    move-wide/from16 v6, p11

    invoke-direct/range {v5 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;-><init>(JLjava/lang/String;JLjava/lang/String;JDZI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 36
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->currency:Ljava/lang/String;

    .line 37
    move-wide/from16 v0, p14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    .line 38
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;DLcom/blogspot/e_kanivets/moneytracker/entity/data/Account;Ljava/lang/String;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->id:J

    .line 56
    iput-wide p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->time:J

    .line 57
    iput p5, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->type:I

    .line 58
    iput-object p6, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->title:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->category:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .line 60
    iput-object p10, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 61
    iput-object p11, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->currency:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p8, p9}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getLong(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->price:J

    .line 63
    invoke-virtual {p0, p8, p9}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getDecimal(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    .line 64
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;JLcom/blogspot/e_kanivets/moneytracker/entity/data/Account;Ljava/lang/String;J)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->id:J

    .line 43
    iput-wide p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->time:J

    .line 44
    iput p5, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->type:I

    .line 45
    iput-object p6, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->title:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->category:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .line 47
    iput-wide p8, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->price:J

    .line 48
    iput-object p10, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 49
    iput-object p11, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->currency:Ljava/lang/String;

    .line 50
    iput-wide p12, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    .line 51
    aput-boolean v1, v0, v1

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v1

    .line 79
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->id:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->time:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->type:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->title:Ljava/lang/String;

    .line 84
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->category:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->price:J

    .line 86
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->currency:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    .line 89
    const/4 v0, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 203
    const/4 v1, 0x0

    const/16 v2, 0x24

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v3

    .line 187
    instance-of v4, p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    if-eqz v4, :cond_9

    move-object v0, p1

    .line 188
    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 189
    .local v0, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->id:J

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/16 v4, 0x17

    aput-boolean v2, v3, v4

    .line 196
    :goto_0
    const/16 v4, 0x21

    aput-boolean v2, v3, v4

    .line 189
    :goto_1
    const/16 v4, 0x22

    aput-boolean v2, v3, v4

    .line 198
    :goto_2
    return v1

    .line 189
    :cond_0
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->time:J

    .line 190
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/16 v4, 0x18

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->type:I

    .line 191
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/16 v4, 0x19

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->title:Ljava/lang/String;

    .line 192
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x1a

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->category:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .line 193
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x1b

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->price:J

    .line 194
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getPrice()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    const/16 v4, 0x1c

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 195
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x1d

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->currency:Ljava/lang/String;

    .line 196
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x1e

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_7
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    const/16 v4, 0x1f

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x20

    aput-boolean v2, v3, v1

    move v1, v2

    goto/16 :goto_1

    .line 198
    .end local v0    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_9
    const/16 v4, 0x23

    aput-boolean v2, v3, v4

    goto/16 :goto_2
.end method

.method public getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->category:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v1

    .line 147
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->currency:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NON"

    const/16 v2, 0x11

    aput-boolean v3, v1, v2

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->currency:Ljava/lang/String;

    const/16 v2, 0x12

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public getDecimals()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    const/16 v1, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getFullPrice()D
    .locals 8

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->price:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const/16 v1, 0xb

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getId()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->id:J

    const/4 v1, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getPrice()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->price:J

    const/16 v1, 0x9

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTime()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 134
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->time:J

    const/16 v1, 0xc

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->title:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getType()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->type:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isIncome()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v2

    .line 138
    iget v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->type:I

    if-nez v0, :cond_0

    const/16 v0, 0xd

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xf

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xe

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Record {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v2, "id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v2, "title = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v2, "type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->type:I

    packed-switch v2, :pswitch_data_0

    .line 169
    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x15

    aput-boolean v6, v1, v2

    .line 172
    :goto_0
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v2, "time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo v2, "category = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->category:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v2, "price = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->price:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v2, "account = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string/jumbo v2, "currency = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v2, "decimals = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16

    aput-boolean v6, v1, v3

    return-object v2

    .line 161
    :pswitch_0
    const-string/jumbo v2, "expense"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/16 v2, 0x13

    aput-boolean v6, v1, v2

    goto/16 :goto_0

    .line 165
    :pswitch_1
    const-string/jumbo v2, "income"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/16 v2, 0x14

    aput-boolean v6, v1, v2

    goto/16 :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->$jacocoInit()[Z

    move-result-object v0

    .line 208
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->id:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->time:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->category:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 213
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->price:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->account:Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 215
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->currency:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->decimals:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    const/16 v1, 0x25

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
