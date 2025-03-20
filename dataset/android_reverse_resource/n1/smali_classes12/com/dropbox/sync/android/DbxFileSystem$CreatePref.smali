.class final enum Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;
.super Ljava/lang/Enum;
.source "DbxFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CreatePref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

.field public static final enum CREATE_NEW:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

.field public static final enum OPEN_EXISTING:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

.field public static final enum OPEN_OR_CREATE:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    const-string v1, "OPEN_EXISTING"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->OPEN_EXISTING:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    .line 75
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    const-string v1, "CREATE_NEW"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->CREATE_NEW:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    .line 81
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    const-string v1, "OPEN_OR_CREATE"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->OPEN_OR_CREATE:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->OPEN_EXISTING:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->CREATE_NEW:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->OPEN_OR_CREATE:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->$VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->$VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    return-object v0
.end method
