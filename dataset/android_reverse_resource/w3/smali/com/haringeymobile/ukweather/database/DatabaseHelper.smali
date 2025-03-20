.class Lcom/haringeymobile/ukweather/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "weather.db"

.field private static final DATABASE_VERSION:I = 0x2


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/database/DatabaseHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2b3c4419b9a7205L    # -3.606355565557214E295

    const-string v2, "com/haringeymobile/ukweather/database/DatabaseHelper"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/database/DatabaseHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/database/DatabaseHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    const-string v1, "weather.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 14
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/database/DatabaseHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-static {p1}, Lcom/haringeymobile/ukweather/database/CityTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/database/DatabaseHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-static {p1, p2, p3}, Lcom/haringeymobile/ukweather/database/CityTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 24
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
