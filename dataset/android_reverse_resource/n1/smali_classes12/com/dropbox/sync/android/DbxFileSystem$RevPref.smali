.class final enum Lcom/dropbox/sync/android/DbxFileSystem$RevPref;
.super Ljava/lang/Enum;
.source "DbxFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RevPref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxFileSystem$RevPref;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

.field public static final enum PREFER_CACHED:Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

.field public static final enum PREFER_LATEST:Lcom/dropbox/sync/android/DbxFileSystem$RevPref;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    const-string v1, "PREFER_LATEST"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->PREFER_LATEST:Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    .line 110
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    const-string v1, "PREFER_CACHED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->PREFER_CACHED:Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->PREFER_LATEST:Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->PREFER_CACHED:Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->$VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFileSystem$RevPref;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxFileSystem$RevPref;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->$VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    return-object v0
.end method
