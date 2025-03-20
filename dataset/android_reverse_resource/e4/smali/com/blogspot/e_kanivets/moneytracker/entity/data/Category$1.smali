.class final Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2b25c4b7add7d95bL    # 7.775324503842108E-101

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/entity/data/Category$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;-><init>(Landroid/os/Parcel;)V

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;->createFromParcel(Landroid/os/Parcel;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public newArray(I)[Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    new-array v1, p1, [Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category$1;->newArray(I)[Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
