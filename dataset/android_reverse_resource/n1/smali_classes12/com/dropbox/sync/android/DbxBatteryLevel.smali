.class final enum Lcom/dropbox/sync/android/DbxBatteryLevel;
.super Ljava/lang/Enum;
.source "DbxBatteryLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxBatteryLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxBatteryLevel;

.field public static final enum HIGH:Lcom/dropbox/sync/android/DbxBatteryLevel;

.field public static final enum LOW:Lcom/dropbox/sync/android/DbxBatteryLevel;

.field public static final enum MEDIUM:Lcom/dropbox/sync/android/DbxBatteryLevel;

.field public static final enum NUM_VALUES:Lcom/dropbox/sync/android/DbxBatteryLevel;

.field public static final enum UNKNOWN:Lcom/dropbox/sync/android/DbxBatteryLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/dropbox/sync/android/DbxBatteryLevel;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxBatteryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxBatteryLevel;->UNKNOWN:Lcom/dropbox/sync/android/DbxBatteryLevel;

    .line 17
    new-instance v0, Lcom/dropbox/sync/android/DbxBatteryLevel;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxBatteryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxBatteryLevel;->LOW:Lcom/dropbox/sync/android/DbxBatteryLevel;

    .line 18
    new-instance v0, Lcom/dropbox/sync/android/DbxBatteryLevel;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/DbxBatteryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxBatteryLevel;->MEDIUM:Lcom/dropbox/sync/android/DbxBatteryLevel;

    .line 19
    new-instance v0, Lcom/dropbox/sync/android/DbxBatteryLevel;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/sync/android/DbxBatteryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxBatteryLevel;->HIGH:Lcom/dropbox/sync/android/DbxBatteryLevel;

    .line 20
    new-instance v0, Lcom/dropbox/sync/android/DbxBatteryLevel;

    const-string v1, "NUM_VALUES"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/sync/android/DbxBatteryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxBatteryLevel;->NUM_VALUES:Lcom/dropbox/sync/android/DbxBatteryLevel;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxBatteryLevel;

    sget-object v1, Lcom/dropbox/sync/android/DbxBatteryLevel;->UNKNOWN:Lcom/dropbox/sync/android/DbxBatteryLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxBatteryLevel;->LOW:Lcom/dropbox/sync/android/DbxBatteryLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxBatteryLevel;->MEDIUM:Lcom/dropbox/sync/android/DbxBatteryLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/DbxBatteryLevel;->HIGH:Lcom/dropbox/sync/android/DbxBatteryLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/sync/android/DbxBatteryLevel;->NUM_VALUES:Lcom/dropbox/sync/android/DbxBatteryLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/sync/android/DbxBatteryLevel;->$VALUES:[Lcom/dropbox/sync/android/DbxBatteryLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxBatteryLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/dropbox/sync/android/DbxBatteryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxBatteryLevel;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxBatteryLevel;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dropbox/sync/android/DbxBatteryLevel;->$VALUES:[Lcom/dropbox/sync/android/DbxBatteryLevel;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxBatteryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxBatteryLevel;

    return-object v0
.end method
