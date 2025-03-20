.class public Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
.super Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;
.source "Category.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7e18e46f25eb5627L    # 2.6047203309644455E299

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/entity/data/Category"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;-><init>()V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->id:J

    .line 19
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->name:Ljava/lang/String;

    .line 20
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->id:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->name:Ljava/lang/String;

    .line 30
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 23
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->id:J

    .line 24
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->name:Ljava/lang/String;

    .line 25
    aput-boolean v1, v0, v1

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoInit()[Z

    move-result-object v3

    .line 55
    instance-of v4, p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 56
    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .line 57
    .local v0, "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->id:J

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    aput-boolean v2, v3, v4

    .line 58
    :goto_0
    const/16 v4, 0x8

    aput-boolean v2, v3, v4

    .line 57
    :goto_1
    const/16 v4, 0x9

    aput-boolean v2, v3, v4

    .line 59
    :goto_2
    return v1

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->name:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x6

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 59
    .end local v0    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    :cond_2
    const/16 v4, 0xa

    aput-boolean v2, v3, v4

    goto :goto_2
.end method

.method public getId()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->id:J

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->name:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoInit()[Z

    move-result-object v1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Category {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v2, "id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v2, "title = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->id:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
