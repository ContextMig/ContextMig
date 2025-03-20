.class final enum Lcom/dropbox/sync/android/DbxError$Category;
.super Ljava/lang/Enum;
.source "DbxError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxError$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxError$Category;

.field public static final enum CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

.field public static final enum UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    new-instance v0, Lcom/dropbox/sync/android/DbxError$Category;

    const-string v1, "UNCHECKED"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    .line 153
    new-instance v0, Lcom/dropbox/sync/android/DbxError$Category;

    const-string v1, "CHECKED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/DbxError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    .line 144
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxError$Category;

    sget-object v1, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/sync/android/DbxError$Category;->$VALUES:[Lcom/dropbox/sync/android/DbxError$Category;

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
    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxError$Category;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    const-class v0, Lcom/dropbox/sync/android/DbxError$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxError$Category;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxError$Category;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/dropbox/sync/android/DbxError$Category;->$VALUES:[Lcom/dropbox/sync/android/DbxError$Category;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxError$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxError$Category;

    return-object v0
.end method
