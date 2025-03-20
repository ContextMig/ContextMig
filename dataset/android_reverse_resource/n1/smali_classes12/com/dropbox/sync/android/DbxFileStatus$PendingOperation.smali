.class public final enum Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;
.super Ljava/lang/Enum;
.source "DbxFileStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFileStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PendingOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

.field public static final enum DOWNLOAD:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

.field public static final enum NONE:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

.field public static final enum UPLOAD:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;


# instance fields
.field private final mActivityDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    const-string v1, "NONE"

    const-string v2, "idle"

    invoke-direct {v0, v1, v3, v2}, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->NONE:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    .line 26
    new-instance v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    const-string v1, "UPLOAD"

    const-string v2, "uploading"

    invoke-direct {v0, v1, v4, v2}, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->UPLOAD:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    .line 31
    new-instance v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    const-string v1, "DOWNLOAD"

    const-string v2, "downloading"

    invoke-direct {v0, v1, v5, v2}, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->DOWNLOAD:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->NONE:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->UPLOAD:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->DOWNLOAD:Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->$VALUES:[Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "activityDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->mActivityDesc:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->$VALUES:[Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;

    return-object v0
.end method


# virtual methods
.method getActivityDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFileStatus$PendingOperation;->mActivityDesc:Ljava/lang/String;

    return-object v0
.end method
