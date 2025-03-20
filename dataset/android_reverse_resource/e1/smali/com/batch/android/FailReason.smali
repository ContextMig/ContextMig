.class public final enum Lcom/batch/android/FailReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/FailReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

.field public static final enum INVALID_API_KEY:Lcom/batch/android/FailReason;

.field public static final enum NETWORK_ERROR:Lcom/batch/android/FailReason;

.field public static final enum UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

.field private static final synthetic a:[Lcom/batch/android/FailReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/batch/android/FailReason;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/batch/android/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    .line 20
    new-instance v0, Lcom/batch/android/FailReason;

    const-string v1, "INVALID_API_KEY"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/FailReason;->INVALID_API_KEY:Lcom/batch/android/FailReason;

    .line 24
    new-instance v0, Lcom/batch/android/FailReason;

    const-string v1, "DEACTIVATED_API_KEY"

    invoke-direct {v0, v1, v4}, Lcom/batch/android/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/FailReason;->DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

    .line 28
    new-instance v0, Lcom/batch/android/FailReason;

    const-string v1, "UNEXPECTED_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/batch/android/FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/batch/android/FailReason;

    sget-object v1, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batch/android/FailReason;->INVALID_API_KEY:Lcom/batch/android/FailReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/FailReason;->DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/batch/android/FailReason;->a:[Lcom/batch/android/FailReason;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/FailReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/batch/android/FailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/FailReason;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/FailReason;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/batch/android/FailReason;->a:[Lcom/batch/android/FailReason;

    invoke-virtual {v0}, [Lcom/batch/android/FailReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/FailReason;

    return-object v0
.end method
