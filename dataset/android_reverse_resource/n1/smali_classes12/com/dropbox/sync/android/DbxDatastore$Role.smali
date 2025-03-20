.class public final enum Lcom/dropbox/sync/android/DbxDatastore$Role;
.super Ljava/lang/Enum;
.source "DbxDatastore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxDatastore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxDatastore$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxDatastore$Role;

.field public static final enum EDITOR:Lcom/dropbox/sync/android/DbxDatastore$Role;

.field public static final enum NONE:Lcom/dropbox/sync/android/DbxDatastore$Role;

.field public static final enum OWNER:Lcom/dropbox/sync/android/DbxDatastore$Role;

.field public static final enum VIEWER:Lcom/dropbox/sync/android/DbxDatastore$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/dropbox/sync/android/DbxDatastore$Role;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxDatastore$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->NONE:Lcom/dropbox/sync/android/DbxDatastore$Role;

    .line 99
    new-instance v0, Lcom/dropbox/sync/android/DbxDatastore$Role;

    const-string v1, "VIEWER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxDatastore$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->VIEWER:Lcom/dropbox/sync/android/DbxDatastore$Role;

    .line 104
    new-instance v0, Lcom/dropbox/sync/android/DbxDatastore$Role;

    const-string v1, "EDITOR"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/DbxDatastore$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->EDITOR:Lcom/dropbox/sync/android/DbxDatastore$Role;

    .line 110
    new-instance v0, Lcom/dropbox/sync/android/DbxDatastore$Role;

    const-string v1, "OWNER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/sync/android/DbxDatastore$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->OWNER:Lcom/dropbox/sync/android/DbxDatastore$Role;

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxDatastore$Role;

    sget-object v1, Lcom/dropbox/sync/android/DbxDatastore$Role;->NONE:Lcom/dropbox/sync/android/DbxDatastore$Role;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxDatastore$Role;->VIEWER:Lcom/dropbox/sync/android/DbxDatastore$Role;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/DbxDatastore$Role;->EDITOR:Lcom/dropbox/sync/android/DbxDatastore$Role;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/DbxDatastore$Role;->OWNER:Lcom/dropbox/sync/android/DbxDatastore$Role;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->$VALUES:[Lcom/dropbox/sync/android/DbxDatastore$Role;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxDatastore$Role;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/dropbox/sync/android/DbxDatastore$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxDatastore$Role;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxDatastore$Role;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->$VALUES:[Lcom/dropbox/sync/android/DbxDatastore$Role;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxDatastore$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxDatastore$Role;

    return-object v0
.end method
