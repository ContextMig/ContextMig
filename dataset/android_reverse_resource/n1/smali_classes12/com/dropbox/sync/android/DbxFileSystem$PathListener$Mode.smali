.class public final enum Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;
.super Ljava/lang/Enum;
.source "DbxFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFileSystem$PathListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

.field public static final enum PATH_ONLY:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

.field public static final enum PATH_OR_CHILD:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

.field public static final enum PATH_OR_DESCENDANT:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    const-string v1, "PATH_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_ONLY:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    .line 221
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    const-string v1, "PATH_OR_CHILD"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_OR_CHILD:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    .line 228
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    const-string v1, "PATH_OR_DESCENDANT"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_OR_DESCENDANT:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    .line 207
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_ONLY:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_OR_CHILD:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_OR_DESCENDANT:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->$VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

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
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    const-class v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->$VALUES:[Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    return-object v0
.end method
