.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper$DataBaseConfig;
.super Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;
.source "DataBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataBaseConfig"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper$DataBaseConfig;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x17cd67de5e342b76L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper$DataBaseConfig"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper$DataBaseConfig;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper$DataBaseConfig;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    invoke-direct {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper$DataBaseConfig;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    const-string v1, "ormlite_config.txt"

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DataBaseHelper$DataBaseConfig;->writeConfigFile(Ljava/lang/String;)V

    .line 92
    aput-boolean v2, v0, v2

    return-void
.end method
