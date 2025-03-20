.class final enum Lcom/dropbox/sync/android/DbxFields$SubclassInit;
.super Ljava/lang/Enum;
.source "DbxFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SubclassInit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/DbxFields$SubclassInit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/DbxFields$SubclassInit;

.field public static final enum NO_MEM_FIELDS:Lcom/dropbox/sync/android/DbxFields$SubclassInit;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    const-string v1, "NO_MEM_FIELDS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/DbxFields$SubclassInit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$SubclassInit;->NO_MEM_FIELDS:Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$SubclassInit;->NO_MEM_FIELDS:Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    aput-object v1, v0, v2

    sput-object v0, Lcom/dropbox/sync/android/DbxFields$SubclassInit;->$VALUES:[Lcom/dropbox/sync/android/DbxFields$SubclassInit;

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
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields$SubclassInit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    const-class v0, Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/DbxFields$SubclassInit;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$SubclassInit;->$VALUES:[Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/DbxFields$SubclassInit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/DbxFields$SubclassInit;

    return-object v0
.end method
