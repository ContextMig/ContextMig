.class final enum Lcom/dropbox/sync/android/DbxNetworkStatus;
.super Ljava/lang/Enum;
.source "DbxNetworkStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxNetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxNetworkStatus;

.field public static final enum NUM_VALUES:Lcom/dropbox/sync/android/DbxNetworkStatus;

.field public static final enum OFFLINE:Lcom/dropbox/sync/android/DbxNetworkStatus;

.field public static final enum ONLINE_WITH_UNKNOWN_TYPE:Lcom/dropbox/sync/android/DbxNetworkStatus;

.field public static final enum ROAMING:Lcom/dropbox/sync/android/DbxNetworkStatus;

.field public static final enum WIFI:Lcom/dropbox/sync/android/DbxNetworkStatus;

.field public static final enum WWAN_3G:Lcom/dropbox/sync/android/DbxNetworkStatus;

.field public static final enum WWAN_3G_PLUS:Lcom/dropbox/sync/android/DbxNetworkStatus;

.field public static final enum WWAN_4G:Lcom/dropbox/sync/android/DbxNetworkStatus;

.field public static final enum WWAN_EDGE:Lcom/dropbox/sync/android/DbxNetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->OFFLINE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 20
    new-instance v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    const-string v1, "ONLINE_WITH_UNKNOWN_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/DbxNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->ONLINE_WITH_UNKNOWN_TYPE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 22
    new-instance v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    const-string v1, "ROAMING"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/sync/android/DbxNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->ROAMING:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 23
    new-instance v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    const-string v1, "WWAN_EDGE"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/sync/android/DbxNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_EDGE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 24
    new-instance v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    const-string v1, "WWAN_3G"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/sync/android/DbxNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_3G:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 25
    new-instance v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    const-string v1, "WWAN_3G_PLUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_3G_PLUS:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 26
    new-instance v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    const-string v1, "WWAN_4G"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_4G:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 27
    new-instance v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    const-string v1, "WIFI"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->WIFI:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 28
    new-instance v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    const-string v1, "NUM_VALUES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->NUM_VALUES:Lcom/dropbox/sync/android/DbxNetworkStatus;

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxNetworkStatus;

    sget-object v1, Lcom/dropbox/sync/android/DbxNetworkStatus;->OFFLINE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxNetworkStatus;->ONLINE_WITH_UNKNOWN_TYPE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/DbxNetworkStatus;->ROAMING:Lcom/dropbox/sync/android/DbxNetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_EDGE:Lcom/dropbox/sync/android/DbxNetworkStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_3G:Lcom/dropbox/sync/android/DbxNetworkStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_3G_PLUS:Lcom/dropbox/sync/android/DbxNetworkStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/sync/android/DbxNetworkStatus;->WWAN_4G:Lcom/dropbox/sync/android/DbxNetworkStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/sync/android/DbxNetworkStatus;->WIFI:Lcom/dropbox/sync/android/DbxNetworkStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/sync/android/DbxNetworkStatus;->NUM_VALUES:Lcom/dropbox/sync/android/DbxNetworkStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->$VALUES:[Lcom/dropbox/sync/android/DbxNetworkStatus;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxNetworkStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxNetworkStatus;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxNetworkStatus;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dropbox/sync/android/DbxNetworkStatus;->$VALUES:[Lcom/dropbox/sync/android/DbxNetworkStatus;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxNetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxNetworkStatus;

    return-object v0
.end method
