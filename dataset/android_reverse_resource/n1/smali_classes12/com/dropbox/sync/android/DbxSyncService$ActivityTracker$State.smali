.class final enum Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
.super Ljava/lang/Enum;
.source "DbxSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

.field public static final enum BACKGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

.field public static final enum FOREGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

.field public static final enum IDLE:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;


# instance fields
.field private final mShouldBind:Z

.field private final mShouldStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    const-string v1, "FOREGROUND"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->FOREGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    .line 81
    new-instance v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->BACKGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    .line 82
    new-instance v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->IDLE:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->FOREGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->BACKGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->IDLE:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->$VALUES:[Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "shouldBind"    # Z
    .param p4, "shouldStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-boolean p3, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->mShouldBind:Z

    .line 89
    iput-boolean p4, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->mShouldStart:Z

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->$VALUES:[Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    return-object v0
.end method


# virtual methods
.method public shouldBind()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->mShouldBind:Z

    return v0
.end method

.method public shouldStart()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->mShouldStart:Z

    return v0
.end method
