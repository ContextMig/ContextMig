.class public final enum Lcom/batch/android/c/ag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/c/ag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/c/ag;

.field public static final enum b:Lcom/batch/android/c/ag;

.field public static final enum c:Lcom/batch/android/c/ag;

.field public static final enum d:Lcom/batch/android/c/ag;

.field public static final enum e:Lcom/batch/android/c/ag;

.field private static final synthetic f:[Lcom/batch/android/c/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/batch/android/c/ag;

    const-string v1, "PARSING_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/batch/android/c/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ag;->a:Lcom/batch/android/c/ag;

    .line 18
    new-instance v0, Lcom/batch/android/c/ag;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/c/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ag;->b:Lcom/batch/android/c/ag;

    .line 23
    new-instance v0, Lcom/batch/android/c/ag;

    const-string v1, "NETWORK_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/batch/android/c/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ag;->c:Lcom/batch/android/c/ag;

    .line 28
    new-instance v0, Lcom/batch/android/c/ag;

    const-string v1, "SSL_HANDSHAKE_FAILURE"

    invoke-direct {v0, v1, v5}, Lcom/batch/android/c/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ag;->d:Lcom/batch/android/c/ag;

    .line 33
    new-instance v0, Lcom/batch/android/c/ag;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/batch/android/c/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ag;->e:Lcom/batch/android/c/ag;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/batch/android/c/ag;

    sget-object v1, Lcom/batch/android/c/ag;->a:Lcom/batch/android/c/ag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batch/android/c/ag;->b:Lcom/batch/android/c/ag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/c/ag;->c:Lcom/batch/android/c/ag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/c/ag;->d:Lcom/batch/android/c/ag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batch/android/c/ag;->e:Lcom/batch/android/c/ag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/batch/android/c/ag;->f:[Lcom/batch/android/c/ag;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/c/ag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/batch/android/c/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/c/ag;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/c/ag;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/batch/android/c/ag;->f:[Lcom/batch/android/c/ag;

    invoke-virtual {v0}, [Lcom/batch/android/c/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/c/ag;

    return-object v0
.end method
