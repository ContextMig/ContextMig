.class final enum Lcom/dropbox/sync/android/DbxChargingState;
.super Ljava/lang/Enum;
.source "DbxChargingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxChargingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxChargingState;

.field public static final enum CHARGING:Lcom/dropbox/sync/android/DbxChargingState;

.field public static final enum NUM_VALUES:Lcom/dropbox/sync/android/DbxChargingState;

.field public static final enum UNKNOWN:Lcom/dropbox/sync/android/DbxChargingState;

.field public static final enum UNPLUGGED:Lcom/dropbox/sync/android/DbxChargingState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/dropbox/sync/android/DbxChargingState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxChargingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxChargingState;->UNKNOWN:Lcom/dropbox/sync/android/DbxChargingState;

    .line 20
    new-instance v0, Lcom/dropbox/sync/android/DbxChargingState;

    const-string v1, "UNPLUGGED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxChargingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxChargingState;->UNPLUGGED:Lcom/dropbox/sync/android/DbxChargingState;

    .line 21
    new-instance v0, Lcom/dropbox/sync/android/DbxChargingState;

    const-string v1, "CHARGING"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/DbxChargingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxChargingState;->CHARGING:Lcom/dropbox/sync/android/DbxChargingState;

    .line 22
    new-instance v0, Lcom/dropbox/sync/android/DbxChargingState;

    const-string v1, "NUM_VALUES"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/sync/android/DbxChargingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxChargingState;->NUM_VALUES:Lcom/dropbox/sync/android/DbxChargingState;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxChargingState;

    sget-object v1, Lcom/dropbox/sync/android/DbxChargingState;->UNKNOWN:Lcom/dropbox/sync/android/DbxChargingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxChargingState;->UNPLUGGED:Lcom/dropbox/sync/android/DbxChargingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxChargingState;->CHARGING:Lcom/dropbox/sync/android/DbxChargingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/DbxChargingState;->NUM_VALUES:Lcom/dropbox/sync/android/DbxChargingState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/sync/android/DbxChargingState;->$VALUES:[Lcom/dropbox/sync/android/DbxChargingState;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxChargingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/dropbox/sync/android/DbxChargingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxChargingState;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxChargingState;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/dropbox/sync/android/DbxChargingState;->$VALUES:[Lcom/dropbox/sync/android/DbxChargingState;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxChargingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxChargingState;

    return-object v0
.end method
