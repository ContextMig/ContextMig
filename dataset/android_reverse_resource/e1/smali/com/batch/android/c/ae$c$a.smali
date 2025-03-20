.class public final enum Lcom/batch/android/c/ae$c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/c/ae$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/c/ae$c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/c/ae$c$a;

.field public static final enum b:Lcom/batch/android/c/ae$c$a;

.field public static final enum c:Lcom/batch/android/c/ae$c$a;

.field public static final enum d:Lcom/batch/android/c/ae$c$a;

.field public static final enum e:Lcom/batch/android/c/ae$c$a;

.field public static final enum f:Lcom/batch/android/c/ae$c$a;

.field private static final synthetic g:[Lcom/batch/android/c/ae$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1082
    new-instance v0, Lcom/batch/android/c/ae$c$a;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/c/ae$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ae$c$a;->a:Lcom/batch/android/c/ae$c$a;

    .line 1087
    new-instance v0, Lcom/batch/android/c/ae$c$a;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/batch/android/c/ae$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ae$c$a;->b:Lcom/batch/android/c/ae$c$a;

    .line 1092
    new-instance v0, Lcom/batch/android/c/ae$c$a;

    const-string v1, "NOT_FOUND_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/batch/android/c/ae$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ae$c$a;->c:Lcom/batch/android/c/ae$c$a;

    .line 1097
    new-instance v0, Lcom/batch/android/c/ae$c$a;

    const-string v1, "INVALID_API_KEY"

    invoke-direct {v0, v1, v6}, Lcom/batch/android/c/ae$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ae$c$a;->d:Lcom/batch/android/c/ae$c$a;

    .line 1102
    new-instance v0, Lcom/batch/android/c/ae$c$a;

    const-string v1, "DEACTIVATED_API_KEY"

    invoke-direct {v0, v1, v7}, Lcom/batch/android/c/ae$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ae$c$a;->e:Lcom/batch/android/c/ae$c$a;

    .line 1107
    new-instance v0, Lcom/batch/android/c/ae$c$a;

    const-string v1, "UNEXPECTED_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batch/android/c/ae$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/ae$c$a;->f:Lcom/batch/android/c/ae$c$a;

    .line 1077
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/batch/android/c/ae$c$a;

    sget-object v1, Lcom/batch/android/c/ae$c$a;->a:Lcom/batch/android/c/ae$c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/c/ae$c$a;->b:Lcom/batch/android/c/ae$c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/c/ae$c$a;->c:Lcom/batch/android/c/ae$c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batch/android/c/ae$c$a;->d:Lcom/batch/android/c/ae$c$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/batch/android/c/ae$c$a;->e:Lcom/batch/android/c/ae$c$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/batch/android/c/ae$c$a;->f:Lcom/batch/android/c/ae$c$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/batch/android/c/ae$c$a;->g:[Lcom/batch/android/c/ae$c$a;

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
    .line 1077
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/c/ae$c$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1077
    const-class v0, Lcom/batch/android/c/ae$c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/c/ae$c$a;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/c/ae$c$a;
    .locals 1

    .prologue
    .line 1077
    sget-object v0, Lcom/batch/android/c/ae$c$a;->g:[Lcom/batch/android/c/ae$c$a;

    invoke-virtual {v0}, [Lcom/batch/android/c/ae$c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/c/ae$c$a;

    return-object v0
.end method
